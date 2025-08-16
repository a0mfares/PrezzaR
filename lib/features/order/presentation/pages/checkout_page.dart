import 'dart:developer';

import 'package:auto_route/auto_route.dart';
import 'package:bot_toast/bot_toast.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:prezza/config/txt_themes.dart';
import 'package:prezza/core/constants/assets.dart';
import 'package:prezza/core/extension/widget_ext.dart';
import 'package:prezza/core/helper/tools.dart';
import 'package:prezza/core/service/routes.gr.dart';
import 'package:prezza/features/cars/presentation/widgets/car_checkout_widget.dart';
import 'package:prezza/features/location/presentation/widgets/location_checkout_widget.dart';
import 'package:prezza/features/payment/presentation/widgets/payment_checkout_widget.dart';
import 'package:prezza/features/vendor/presentation/widgets/branches_widget.dart';
import 'package:prezza/prezza_page.dart';
import 'package:sadad_qa_payments/sadad_qa_payments.dart';
import 'package:sizer/sizer.dart';

import '../../../../config/custom_colors.dart';
import '../../../../core/helper/widgets.dart';
import '../../../../core/shared/widgets/under_montains.dart';
import '../../../cart/presentation/bloc/cart_bloc.dart';
import '../../../payment/presentation/bloc/payment_bloc.dart';
import '../bloc/order_bloc.dart';

@RoutePage()
class CheckoutPage extends StatefulWidget {
  const CheckoutPage({super.key});
  @override
  State<CheckoutPage> createState() => _CheckoutPageState();
}

class _CheckoutPageState extends State<CheckoutPage> {
  late final OrderBloc bloc;
  late final CartBloc cartBloc;
  bool isBreakdown = false;

  @override
  initState() {
    bloc = OrderBloc.get(context);
    cartBloc = CartBloc.get(context);

    // Initialize order type based on business type
    _initializeOrderType();

    super.initState();
  }

  void _initializeOrderType() {
    final businessType = cartBloc.cartDetails.cart_business_type;

    if (businessType == 'Delivery only') {
      bloc.add(const OrderEvent.selectOrderType('delivery'));
    } else if (businessType == 'Pickup only') {
      bloc.add(const OrderEvent.selectOrderType('pickup'));
    }
    // For 'Delivery & Pickup', let user choose via dropdown
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(tr.checkOut),
      ).prezzaLeading(),
      body: BlocListener<OrderBloc, OrderState>(
        listener: (context, state) {
          state.maybeMap(
            successOrdered: (v) {
              showDialogPrezza(
                context: context,
                title: tr.orderPlaced,
                subTitle: tr.youCanCanel(3.toString()),
                image: Assets.assetsImagesSuccessGif,
                onTap: () {
                  bloc.instanceId = '';
                  bloc.phoneController.clear();
                  appRoute.navigate(UserLayoutHomeRoute());
                  appRoute.removeLast();
                },
              );
            },
            openPhoneInput: (v) {
              showPrezzaBtm(
                context,
                Column(
                  children: [
                    Text(tr.addPhoneNum),
                    vSpace(3),
                    TextFormField(
                      controller: bloc.phoneController,
                    ).prezaa(label: tr.phone),
                    vSpace(2),
                    ElevatedButton(
                      onPressed: () {
                        context.maybePop();
                      },
                      child: Text(tr.done),
                    ),
                  ],
                ),
              );
            },
            failure: (v) {
              BotToast.showText(text: v.id);
            },
            orElse: () {},
          );
        },
        child: SingleChildScrollView(
          child: Column(
            children: [
              vSpace(5),
              // Show dropdown only for businesses that support both delivery and pickup
              Visibility(
                visible: cartBloc.cartDetails.cart_business_type ==
                    'Delivery & Pickup',
                child: BlocBuilder<OrderBloc, OrderState>(
                  builder: (context, state) {
                    return state.maybeWhen(
                      orElse: () {
                        return Container(
                          margin: const EdgeInsets.symmetric(horizontal: 20),
                          child: DropdownButtonFormField<String>(
                            value: bloc.selectedType.isEmpty
                                ? null
                                : bloc.selectedType,
                            hint: Text(tr.selectOrderType),
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                            items: [
                              DropdownMenuItem(
                                value: 'pickup',
                                child: Text(tr.pickup),
                              ),
                              DropdownMenuItem(
                                value: 'delivery',
                                child: Text(tr.delivery),
                              ),
                            ],
                            onChanged: (v) {
                              if (v != null) {
                                bloc.add(OrderEvent.selectOrderType(v));
                              }
                            },
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return tr.selectOrderType;
                              }
                              return null;
                            },
                          ),
                        );
                      },
                    );
                  },
                ),
              ),
              // Show current order type for single-type businesses
              Visibility(
                visible: cartBloc.cartDetails.cart_business_type !=
                    'Delivery & Pickup',
                child: Container(
                  margin: const EdgeInsets.symmetric(horizontal: 20),
                  padding: const EdgeInsets.all(15),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Row(
                    children: [
                      Icon(
                        cartBloc.cartDetails.cart_business_type ==
                                'Delivery only'
                            ? Icons.delivery_dining
                            : Icons.directions_car,
                        color: primary,
                      ),
                      hSpace(10),
                      Text(
                        cartBloc.cartDetails.cart_business_type ==
                                'Delivery only'
                            ? tr.delivery
                            : tr.pickup,
                        style: tstyle.bodyLarge!
                            .copyWith(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              ),
              vSpace(3),
              BlocBuilder<OrderBloc, OrderState>(
                builder: (context, state) {
                  return Visibility(
                    visible: (cartBloc.cartDetails.cart_business_type ==
                                'Delivery & Pickup' &&
                            bloc.selectedType == 'pickup') ||
                        cartBloc.cartDetails.cart_business_type ==
                            'Pickup only',
                    child: BranchesWidget(
                      selectedBranch: bloc.selectedBranch,
                      onBranchSelected: (v) {
                        bloc.add(OrderEvent.selectBranch(v!));
                      },
                      id: cartBloc.businessId,
                    ),
                  );
                },
              ),
              vSpace(3),
              Container(
                height: 25.h,
                width: 95.w,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Colors.grey, width: 2),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Column(
                    children: [
                      Expanded(
                        child: BlocBuilder<OrderBloc, OrderState>(
                          builder: (context, state) {
                            return state.maybeWhen(
                              orElse: () {
                                return InkWell(
                                  onTap: () {},
                                  child: GoogleMap(
                                    markers: bloc.selectedMarker == null
                                        ? {}
                                        : {
                                            bloc.selectedMarker!,
                                          },
                                    onMapCreated: (controller) {
                                      bloc.mapController = controller;
                                    },
                                    initialCameraPosition: CameraPosition(
                                      target: LatLng(
                                        (bloc.selectedType == 'pickup' ||
                                                cartBloc.cartDetails
                                                        .cart_business_type ==
                                                    'Pickup only')
                                            ? bloc.selectedBranch.latitude
                                            : currentLocation.latitude,
                                        (bloc.selectedType == 'pickup' ||
                                                cartBloc.cartDetails
                                                        .cart_business_type ==
                                                    'Pickup only')
                                            ? bloc.selectedBranch.longitude
                                            : currentLocation.longitude,
                                      ),
                                      zoom: 15,
                                    ),
                                  ),
                                );
                              },
                            );
                          },
                        ),
                      ),
                      BlocBuilder<OrderBloc, OrderState>(
                        builder: (context, state) {
                          return Container(
                              height: 100,
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 15),
                              color: Colors.white,
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    padding: const EdgeInsets.all(10),
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      border: Border.all(color: primary),
                                    ),
                                    child: SvgPicture.asset(
                                      Assets.assetsImagesLocation,
                                    ),
                                  ),
                                  hSpace(8),
                                  Expanded(
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        SizedBox(
                                          width: double.infinity,
                                          child: Text(
                                            (bloc.selectedType == 'delivery' ||
                                                    cartBloc.cartDetails
                                                            .cart_business_type ==
                                                        'Delivery only')
                                                ? currentLocation.locationName
                                                : bloc.selectedBranch
                                                    .branch_address,
                                            overflow: TextOverflow.ellipsis,
                                            style: tstyle.bodyLarge!.copyWith(
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ),
                                        Visibility(
                                          visible:
                                              (bloc.selectedType == 'pickup' ||
                                                  cartBloc.cartDetails
                                                          .cart_business_type ==
                                                      'Pickup only'),
                                          child: Text(
                                            bloc.selectedBranch.branch_landmark,
                                            style: tstyle.bodyLarge,
                                            overflow: TextOverflow.ellipsis,
                                          ),
                                        ),
                                        Text(
                                          '${tr.phone}: ${cartBloc.cartDetails.vendor_phone_number}',
                                          style: tstyle.bodyLarge,
                                          overflow: TextOverflow.ellipsis,
                                        ),
                                        Text(
                                          '${tr.arrivesIn} ${bloc.arrivelTime}',
                                          style: tstyle.bodyLarge,
                                          overflow: TextOverflow.ellipsis,
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ));
                        },
                      ),
                    ],
                  ),
                ),
              ),
              vSpace(5),
              BlocBuilder<OrderBloc, OrderState>(
                builder: (context, state) {
                  return state.maybeWhen(orElse: () {
                    return Visibility(
                      visible: (bloc.selectedType == 'pickup' ||
                          cartBloc.cartDetails.cart_business_type ==
                              'Pickup only'),
                      child: TextFormField(
                        controller: TextEditingController(
                            text: formatDuration(bloc.scheduleOrder)),
                        readOnly: true,
                        onTap: () {
                          showTimePickerPrezza(
                            context,
                            bloc.scheduleOrder,
                            (v) {
                              bloc.add(OrderEvent.selectSchedule(v));
                            },
                          );
                        },
                        validator: (v) {
                          if (int.parse(v!.split(':').last) < 4) {
                            return tr.arrivalTimeError;
                          }
                          return null;
                        },
                        decoration: InputDecoration(
                          fillColor: Colors.transparent,
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10)),
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10)),
                          hintText: 'HH:MM',
                          suffixIcon: Icon(
                            Icons.alarm,
                            color: primary,
                          ),
                        ),
                      ).prezaa(
                        margin: const EdgeInsets.symmetric(horizontal: 20),
                        label: tr.arrivesIn,
                      ),
                    );
                  });
                },
              ),
              vSpace(3),
              Align(
                alignment: AlignmentDirectional.topStart,
                child: Text(
                  tr.payWith,
                  style:
                      tstyle.bodyLarge!.copyWith(fontWeight: FontWeight.bold),
                ).margin(margin: const EdgeInsets.symmetric(horizontal: 20)),
              ),
              SizedBox(
                height: 200,
                child: BlocBuilder<OrderBloc, OrderState>(
                  builder: (context, state) {
                    return PaymentCheckoutWidget(
                      onChanged: (v) {
                        bloc.add(OrderEvent.selectPayment(v!));
                      },
                      selectedCard: bloc.selectedPayment,
                    );
                  },
                ),
              ),
              vSpace(3),
              BlocBuilder<OrderBloc, OrderState>(
                builder: (context, state) {
                  return Column(
                    children: [
                      if ((bloc.selectedType == 'pickup' ||
                          cartBloc.cartDetails.cart_business_type ==
                              'Pickup only')) ...[
                        Align(
                          alignment: AlignmentDirectional.topStart,
                          child: Text(
                            tr.chooseCar,
                            style: tstyle.bodyLarge!
                                .copyWith(fontWeight: FontWeight.bold),
                          ).margin(
                              margin:
                                  const EdgeInsets.symmetric(horizontal: 20)),
                        ),
                        SizedBox(
                          height: 200,
                          child: CarCheckoutWidget(
                            onChanged: (v) {
                              bloc.add(OrderEvent.selectCar(v!));
                            },
                            selectedCar: bloc.selectedCar,
                          ),
                        ),
                      ],
                      if ((bloc.selectedType == 'delivery' ||
                          cartBloc.cartDetails.cart_business_type ==
                              'Delivery only')) ...[
                        Align(
                          alignment: AlignmentDirectional.topStart,
                          child: Text(
                            tr.chooseDeliveryLoction,
                            style: tstyle.bodyLarge!
                                .copyWith(fontWeight: FontWeight.bold),
                          ).margin(
                              margin:
                                  const EdgeInsets.symmetric(horizontal: 20)),
                        ),
                        SizedBox(
                          height: 200,
                          child: BlocBuilder<OrderBloc, OrderState>(
                            builder: (context, state) {
                              return LocationCheckoutWidget(
                                onSelectedLocation: (v) {
                                  bloc.add(OrderEvent.selectAddress(v!));
                                },
                                selectedLocation: bloc.selectedAddress,
                              );
                            },
                          ),
                        ),
                      ]
                    ],
                  );
                },
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: Card(
        elevation: 5,
        color: Colors.white,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
        ),
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 300),
          height: isBreakdown ? 270 : 200,
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  BlocBuilder<CartBloc, CartState>(
                    builder: (context, state) {
                      return state.maybeWhen(
                        orElse: () {
                          return Text(
                            tr.total(
                              tr.priceWithCurrency(
                                cartBloc.cartDetails.cart_total_price
                                    .toString(),
                                'QAR',
                              ),
                            ),
                          );
                        },
                      );
                    },
                  ),
                  InkWell(
                    onTap: () {
                      isBreakdown = !isBreakdown;
                      setState(() {});
                    },
                    child: Text(
                      tr.breakdown,
                      style: clickableText.copyWith(color: primary),
                    ),
                  ),
                ],
              ),
              if (isBreakdown) ...[
                vSpace(3),
                SizedBox(
                  height: 50,
                  child: BlocBuilder<CartBloc, CartState>(
                    builder: (context, state) {
                      return state.maybeWhen(
                        loading: () => defLoadingCenter,
                        failureGetCartDetails: (v) => FailureWidget(error: v),
                        orElse: () {
                          return ListView.builder(
                            shrinkWrap: true,
                            itemCount: cartBloc.cartDetails.cart_items.length,
                            itemBuilder: (context, index) {
                              final product =
                                  cartBloc.cartDetails.cart_items[index];
                              return Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(product.product_name),
                                  Text(tr.priceWithCurrency(
                                      product.price.toString(), 'QAR'))
                                ],
                              );
                            },
                          );
                        },
                      );
                    },
                  ),
                )
              ],
              vSpace(2),
              BlocBuilder<CartBloc, CartState>(
                builder: (context, state) {
                  return state.maybeWhen(
                    failure: (v) => FailureWidget(error: v),
                    loading: () => defLoadingCenter,
                    success: () {
                      return Text(
                        tr.expectedPreparingTime(
                            cartBloc.preparingTime.toString()),
                      );
                    },
                    orElse: () {
                      return const UnderMontains();
                    },
                  );
                },
              ),
              vSpace(3),
              ElevatedButton(
                onPressed: () async {
                  if (cartBloc.cartDetails.cart_business_type ==
                          'Delivery & Pickup' &&
                      bloc.selectedType.isEmpty) {
                    BotToast.showText(text: tr.selectOrderType);
                    return;
                  }

                  bloc.add(const OrderEvent.createOrderInstace());
                },
                child: Text(tr.proceed),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
