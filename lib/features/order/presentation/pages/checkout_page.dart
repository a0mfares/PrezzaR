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

    super.initState();
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
              Visibility(
                visible: cartBloc.cartDetails.cart_business_type ==
                    'Delivery & Pickup',
                child: BlocBuilder<OrderBloc, OrderState>(
                  builder: (context, state) {
                    return state.maybeWhen(
                      orElse: () {
                        return DropdownButton(
                          hint: Text(orderType[bloc.selectedType] ??
                              tr.selectOrderType),
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
                            bloc.add(OrderEvent.selectOrderType(v.toString()));
                          },
                        );
                      },
                    );
                  },
                ),
              ),
              vSpace(3),
              BlocBuilder<OrderBloc, OrderState>(
                builder: (context, state) {
                  return Visibility(
                    visible: cartBloc.cartDetails.cart_business_type ==
                            'Delivery & Pickup'
                        ? bloc.selectedType == 'pickup'
                        : false,
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
                // padding: const EdgeInsets.all(3),
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
                                        bloc.selectedType == 'pickup'
                                            ? bloc.selectedBranch.latitude
                                            : currentLocation.latitude,
                                        bloc.selectedType == 'pickup'
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
                            padding: const EdgeInsets.symmetric(horizontal: 15),
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
                                hSpace(3),
                                Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SizedBox(
                                      width: 70.w,
                                      child: Text(
                                        bloc.selectedType == 'delivery'
                                            ? currentLocation.locationName
                                            : bloc
                                                .selectedBranch.branch_address,
                                        overflow: TextOverflow.ellipsis,
                                        style: tstyle.bodyLarge!.copyWith(
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                    Visibility(
                                      visible: bloc.selectedType == 'pickup',
                                      child: Text(
                                          bloc.selectedBranch.branch_landmark,
                                          style: tstyle.bodyLarge),
                                    ),
                                    Text(
                                        '${tr.phone}: ${cartBloc.cartDetails.vendor_phone_number}',
                                        style: tstyle.bodyLarge),
                                    Text('${tr.arrivesIn} ${bloc.arrivelTime}',
                                        style: tstyle.bodyLarge)
                                  ],
                                )
                              ],
                            ),
                          );
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
                      visible: bloc.selectedType != 'delivery',
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
                      if (bloc.selectedType == 'pickup' ||
                          cartBloc.cartDetails.cart_business_type ==
                              'Pickup only') ...[
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
                      if (bloc.selectedType == 'delivery' ||
                          cartBloc.cartDetails.cart_business_type ==
                              'Delivery only') ...[
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
