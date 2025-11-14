import 'package:auto_route/auto_route.dart';
import 'package:bot_toast/bot_toast.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:intl/intl.dart';
import 'package:prezza/config/txt_themes.dart';
import 'package:prezza/core/constants/assets.dart';
import 'package:prezza/core/extension/widget_ext.dart';
import 'package:prezza/core/helper/tools.dart';
import 'package:prezza/core/service/routes.gr.dart';
import 'package:prezza/features/cars/presentation/widgets/car_checkout_widget.dart';
import 'package:prezza/features/location/presentation/widgets/location_checkout_widget.dart';
import 'package:prezza/features/profile/presentation/bloc/profile_bloc.dart';
import 'package:prezza/features/vendor/presentation/widgets/branches_widget.dart';
import 'package:prezza/prezza_page.dart';
import 'package:sizer/sizer.dart';

import '../../../../config/custom_colors.dart';
import '../../../../core/helper/widgets.dart';
import '../../../../core/shared/widgets/under_montains.dart';
import '../../../cart/presentation/bloc/cart_bloc.dart';
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
  void initState() {
    bloc = OrderBloc.get(context);
    cartBloc = CartBloc.get(context);
    _initializeOrderType();
    super.initState();
  }

  void _initializeOrderType() {
    final businessType = cartBloc.cartDetails.cart_business_type;
    if (businessType == 'Delivery only') {
      bloc.add(const OrderEvent.selectOrderType('delivery'));
    } else if (businessType == 'Pickup only') {
      bloc.add(const OrderEvent.selectOrderType('pickup'));
    } else if (businessType == 'booking') {
      bloc.add(const OrderEvent.selectOrderType('booking'));
    }
  }

  bool get isBookingMode =>
      cartBloc.cartDetails.cart_business_type == 'booking';

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
                subTitle: tr.youCanCancel(3.toString()),
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
                SingleChildScrollView(
                  child: Padding(
                    padding: EdgeInsets.only(
                      bottom: MediaQuery.of(context).viewInsets.bottom,
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          tr.addPhoneNum,
                          style: tstyle.titleLarge?.copyWith(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        vSpace(3),
                        TextFormField(
                          controller: bloc.phoneController,
                          keyboardType: TextInputType.phone,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            hintText: tr.phone,
                          ),
                        ).prezaa(label: tr.phone),
                        vSpace(2),
                        SizedBox(
                          width: double.infinity,
                          child: ElevatedButton(
                            onPressed: () {
                              if (bloc.phoneController.text.isEmpty) {
                                BotToast.showText(text: tr.phoneRequired);
                                return;
                              }
                              ProfileBloc.get(context)
                                  .add(const ProfileEvent.updateUserInfo());
                              Navigator.of(context).pop();
                            },
                            child: Text(tr.done),
                          ),
                        ),
                        vSpace(2),
                      ],
                    ),
                  ),
                ),
              );
            },
            failure: (v) => BotToast.showText(text: v.id),
            orElse: () {},
          );
        },
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              vSpace(2),
              // Order Type Dropdown for Delivery & Pickup
              Visibility(
                visible: cartBloc.cartDetails.cart_business_type ==
                    'Delivery & Pickup',
                child: BlocBuilder<OrderBloc, OrderState>(
                  buildWhen: (previous, current) {
                    return current.maybeWhen(
                      loading: () => false,
                      orElse: () => true,
                    );
                  },
                  builder: (context, state) {
                    return Container(
                      margin: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 10),
                      child: DropdownButtonFormField<String>(
                        value: bloc.selectedType.isEmpty
                            ? null
                            : bloc.selectedType,
                        hint: Text(tr.selectOrderType),
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10)),
                        ),
                        items: [
                          DropdownMenuItem(
                              value: 'pickup', child: Text(tr.pickup)),
                          DropdownMenuItem(
                              value: 'delivery', child: Text(tr.delivery)),
                          DropdownMenuItem(
                              value: 'booking', child: Text(tr.booking)),
                        ],
                        onChanged: (v) {
                          if (v != null) {
                            bloc.add(OrderEvent.selectOrderType(v));
                          }
                        },
                        validator: (value) => value == null || value.isEmpty
                            ? tr.selectOrderType
                            : null,
                      ),
                    );
                  },
                ),
              ),
              // Order Type Display for single-type businesses
              Visibility(
                visible: cartBloc.cartDetails.cart_business_type !=
                    'Delivery & Pickup',
                child: Container(
                  margin:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  padding: const EdgeInsets.all(15),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey.shade300),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Row(
                    children: [
                      Icon(
                        cartBloc.cartDetails.cart_business_type ==
                                'Delivery only'
                            ? Icons.delivery_dining
                            : cartBloc.cartDetails.cart_business_type ==
                                    'Pickup only'
                                ? Icons.directions_car
                                : Icons.event_seat,
                        color: primary,
                      ),
                      hSpace(10),
                      Text(
                        cartBloc.cartDetails.cart_business_type ==
                                'Delivery only'
                            ? tr.delivery
                            : cartBloc.cartDetails.cart_business_type ==
                                    'Pickup only'
                                ? tr.pickup
                                : tr.booking,
                        style: tstyle.bodyLarge!
                            .copyWith(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              ),
              // Branches Widget for Pickup
              BlocBuilder<OrderBloc, OrderState>(
                buildWhen: (previous, current) => true,
                builder: (context, state) {
                  final isPickup = (cartBloc.cartDetails.cart_business_type ==
                              'Delivery & Pickup' &&
                          bloc.selectedType == 'pickup') ||
                      cartBloc.cartDetails.cart_business_type == 'Pickup only';
                  return Visibility(
                    visible: isPickup,
                    child: BranchesWidget(
                      selectedBranch: bloc.selectedBranch,
                      onBranchSelected: (v) =>
                          bloc.add(OrderEvent.selectBranch(v!)),
                      id: cartBloc.businessId,
                    ),
                  );
                },
              ),
              vSpace(2),
              // Booking-specific fields
              BlocBuilder<OrderBloc, OrderState>(
                buildWhen: (previous, current) => true,
                builder: (context, state) {
                  if (bloc.selectedType != 'booking') {
                    return const SizedBox.shrink();
                  }

                  return Column(
                    children: [
                      // Number of Seats
                      TextFormField(
                        controller:
                            TextEditingController(text: bloc.numOfSeats),
                        keyboardType: TextInputType.number,
                        onChanged: (v) =>
                            bloc.add(OrderEvent.selectNumOfSeats(v)),
                        decoration: InputDecoration(
                          fillColor: Colors.transparent,
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10)),
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10)),
                          hintText: tr.enterNumberOfSeats,
                          prefixIcon: Icon(Icons.event_seat, color: primary),
                        ),
                      ).prezaa(
                        margin: const EdgeInsets.symmetric(horizontal: 20),
                        label: tr.numberOfSeats,
                      ),
                      vSpace(2),

                      // Booking Date
                      // Replace your existing DatePicker implementation with this:
                      TextFormField(
                        controller: TextEditingController(
                            text: bloc.bookingDate != null
                                ? DateFormat('yyyy-MM-dd')
                                    .format(bloc.bookingDate!)
                                : ''),
                        readOnly: true,
                        onTap: () async {
                          final date = await showDatePicker(
                            context: context,
                            initialDate: DateTime.now(),
                            firstDate: DateTime.now(),
                            lastDate:
                                DateTime.now().add(const Duration(days: 365)),
                            builder: (context, child) {
                              return Theme(
                                data: Theme.of(context).copyWith(
                                  // Customize the date picker dialog theme
                                  dialogBackgroundColor: Colors.white,
                                  colorScheme: ColorScheme.light(
                                    primary: primary, // header background color
                                    onPrimary:
                                        Colors.white, // header text color
                                    onSurface: Colors.black, // body text color
                                  ),
                                  textButtonTheme: TextButtonThemeData(
                                    style: TextButton.styleFrom(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 16.0),
                                      backgroundColor: Colors.transparent,
                                      foregroundColor:
                                          primary, // button text color
                                    ),
                                  ),
                                  // Add more customizations as needed
                                ),
                                child: child!,
                              );
                            },
                          );
                          if (date != null) {
                            bloc.add(OrderEvent.selectBookingDate(date));
                          }
                        },
                        decoration: InputDecoration(
                          fillColor: Colors.transparent,
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10)),
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10)),
                          hintText: tr.selectDate,
                          suffixIcon:
                              Icon(Icons.calendar_today, color: primary),
                        ),
                      ).prezaa(
                        margin: const EdgeInsets.symmetric(horizontal: 20),
                        label: tr.bookingDate,
                      ),
                      vSpace(2),

                      // Branches Widget for booking
                      BranchesWidget(
                        selectedBranch: bloc.selectedBranch,
                        onBranchSelected: (v) =>
                            bloc.add(OrderEvent.selectBranch(v!)),
                        id: cartBloc.businessId,
                      ),
                      vSpace(2),
                    ],
                  );
                },
              ),
              // Map Widget
              Visibility(
                visible: !isBookingMode,
                child: Container(
                  height: 25.h,
                  width: double.infinity,
                  margin: const EdgeInsets.symmetric(horizontal: 20),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Colors.grey.shade300, width: 2),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Column(
                      children: [
                        Expanded(
                          child: BlocBuilder<OrderBloc, OrderState>(
                            buildWhen: (previous, current) {
                              return true;
                            },
                            builder: (context, state) {
                              final isPickup = (bloc.selectedType == 'pickup' ||
                                  cartBloc.cartDetails.cart_business_type ==
                                      'Pickup only');
                              return GoogleMap(
                                markers: bloc.selectedMarker == null
                                    ? {}
                                    : {bloc.selectedMarker!},
                                onMapCreated: (controller) =>
                                    bloc.mapController = controller,
                                initialCameraPosition: CameraPosition(
                                  target: LatLng(
                                    isPickup
                                        ? (bloc.selectedBranch.latitude != 0
                                            ? bloc.selectedBranch.latitude
                                            : 25.2854)
                                        : currentLocation.latitude,
                                    isPickup
                                        ? (bloc.selectedBranch.longitude != 0
                                            ? bloc.selectedBranch.longitude
                                            : 51.5310)
                                        : currentLocation.longitude,
                                  ),
                                  zoom: 15,
                                ),
                              );
                            },
                          ),
                        ),
                        Container(
                          constraints: const BoxConstraints(
                            minHeight: 80,
                            maxHeight: 120,
                          ),
                          padding: const EdgeInsets.symmetric(
                              horizontal: 15, vertical: 10),
                          color: Colors.white,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                padding: const EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    border: Border.all(color: primary)),
                                child: SvgPicture.asset(
                                    Assets.assetsImagesLocation,
                                    width: 24,
                                    height: 24),
                              ),
                              hSpace(8),
                              Expanded(
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      (bloc.selectedType == 'delivery' ||
                                              cartBloc.cartDetails
                                                      .cart_business_type ==
                                                  'Delivery only')
                                          ? currentLocation.locationName
                                          : bloc.selectedBranch.branch_address,
                                      overflow: TextOverflow.ellipsis,
                                      maxLines: 2,
                                      style: tstyle.bodyMedium!.copyWith(
                                          fontWeight: FontWeight.bold),
                                    ),
                                    if (bloc.selectedType == 'pickup' ||
                                        cartBloc.cartDetails
                                                .cart_business_type ==
                                            'Pickup only')
                                      Text(bloc.selectedBranch.branch_landmark,
                                          style: tstyle.bodySmall,
                                          maxLines: 1,
                                          overflow: TextOverflow.ellipsis),
                                    Text(
                                        '${tr.phone}: ${cartBloc.cartDetails.vendor_phone_number}',
                                        style: tstyle.bodySmall,
                                        maxLines: 1,
                                        overflow: TextOverflow.ellipsis),
                                    BlocBuilder<OrderBloc, OrderState>(
                                      buildWhen: (previous, current) => true,
                                      builder: (context, state) {
                                        if (bloc.arrivelTime ==
                                            const Duration()) {
                                          return const SizedBox.shrink();
                                        }
                                        return Text(
                                            '${tr.arrivesIn} ${bloc.arrivelTime}',
                                            style: tstyle.bodySmall,
                                            maxLines: 1,
                                            overflow: TextOverflow.ellipsis);
                                      },
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              vSpace(2),
              // Schedule Time for Pickup
              BlocBuilder<OrderBloc, OrderState>(
                buildWhen: (previous, current) => true,
                builder: (context, state) {
                  final isPickup = (bloc.selectedType == 'pickup' ||
                      cartBloc.cartDetails.cart_business_type == 'Pickup only');

                  return Visibility(
                    visible: isPickup,
                    child: TextFormField(
                      controller: TextEditingController(
                          text: formatDuration(bloc.scheduleOrder)),
                      readOnly: true,
                      onTap: () => showTimePickerPrezza(
                          context,
                          bloc.scheduleOrder,
                          (v) => bloc.add(OrderEvent.selectSchedule(v))),
                      validator: (v) => int.parse(v!.split(':').last) < 4
                          ? tr.arrivalTimeError
                          : null,
                      decoration: InputDecoration(
                        fillColor: Colors.transparent,
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10)),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10)),
                        hintText: 'HH:MM',
                        suffixIcon: Icon(Icons.alarm, color: primary),
                      ),
                    ).prezaa(
                        margin: const EdgeInsets.symmetric(horizontal: 20),
                        label: tr.arrivesIn),
                  );
                },
              ),
              vSpace(2),
              // Payment Method Selection Widget
              _buildPaymentMethodSelector(),
              vSpace(2),
              // Conditional Car/Location Selector
              BlocBuilder<OrderBloc, OrderState>(
                buildWhen: (previous, current) => true,
                builder: (context, state) {
                  final isPickup = (bloc.selectedType == 'pickup' ||
                      cartBloc.cartDetails.cart_business_type == 'Pickup only');
                  final isDelivery = (bloc.selectedType == 'delivery' ||
                      cartBloc.cartDetails.cart_business_type ==
                          'Delivery only');
                  final isBooking = bloc.selectedType == 'booking';

                  return Column(
                    children: [
                      if (isPickup && !isBooking) ...[
                        Align(
                          alignment: AlignmentDirectional.topStart,
                          child: Text(tr.chooseCar,
                                  style: tstyle.bodyLarge!
                                      .copyWith(fontWeight: FontWeight.bold))
                              .margin(
                                  margin: const EdgeInsets.symmetric(
                                      horizontal: 20)),
                        ),
                        vSpace(2),
                        SizedBox(
                            height: 200,
                            child: CarCheckoutWidget(
                                onChanged: (v) =>
                                    bloc.add(OrderEvent.selectCar(v!)),
                                selectedCar: bloc.selectedCar)),
                      ],
                      if (isDelivery && !isBooking) ...[
                        Align(
                          alignment: AlignmentDirectional.topStart,
                          child: Text(tr.chooseDeliveryLoction,
                                  style: tstyle.bodyLarge!
                                      .copyWith(fontWeight: FontWeight.bold))
                              .margin(
                                  margin: const EdgeInsets.symmetric(
                                      horizontal: 20)),
                        ),
                        vSpace(2),
                        SizedBox(
                          height: 200,
                          child: LocationCheckoutWidget(
                            onSelectedLocation: (v) =>
                                bloc.add(OrderEvent.selectAddress(v!)),
                            selectedLocation: bloc.selectedAddress,
                          ),
                        ),
                      ]
                    ],
                  );
                },
              ),
              vSpace(10),
            ],
          ),
        ),
      ),
      bottomNavigationBar: SafeArea(
        child: Card(
          elevation: 5,
          margin: EdgeInsets.zero,
          color: Colors.white,
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20), topRight: Radius.circular(20))),
          child: AnimatedContainer(
            duration: const Duration(milliseconds: 300),
            constraints: BoxConstraints(
              minHeight: 180,
              maxHeight: isBreakdown ? 300 : 200,
            ),
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        BlocBuilder<CartBloc, CartState>(
                            builder: (context, state) => Text(
                                tr.total(tr.priceWithCurrency(
                                    cartBloc.cartDetails.cart_total_price
                                        .toString(),
                                    'QAR')),
                                style: tstyle.titleMedium
                                    ?.copyWith(fontWeight: FontWeight.bold))),
                        InkWell(
                            onTap: () =>
                                setState(() => isBreakdown = !isBreakdown),
                            child: Text(tr.breakdown,
                                style: clickableText.copyWith(color: primary))),
                      ]),
                  if (isBreakdown) ...[
                    vSpace(2),
                    Container(
                      constraints: const BoxConstraints(maxHeight: 100),
                      child: BlocBuilder<CartBloc, CartState>(
                          builder: (context, state) {
                        return state.maybeWhen(
                          orElse: () => ListView.builder(
                            shrinkWrap: true,
                            physics: const AlwaysScrollableScrollPhysics(),
                            itemCount: cartBloc.cartDetails.cart_items.length,
                            itemBuilder: (context, index) {
                              final product =
                                  cartBloc.cartDetails.cart_items[index];
                              return Padding(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 4),
                                child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Expanded(
                                        child: Text(product.product_name,
                                            overflow: TextOverflow.ellipsis),
                                      ),
                                      Text(tr.priceWithCurrency(
                                          product.price.toString(), 'QAR'))
                                    ]),
                              );
                            },
                          ),
                        );
                      }),
                    )
                  ],
                  vSpace(2),
                  BlocBuilder<CartBloc, CartState>(builder: (context, state) {
                    return state.maybeWhen(
                      failure: (v) => FailureWidget(error: v),
                      loading: () => defLoadingCenter,
                      success: () => Text(
                          tr.expectedPreparingTime(
                              cartBloc.preparingTime.toString()),
                          style: tstyle.bodySmall),
                      orElse: () => const SizedBox.shrink(),
                    );
                  }),
                  vSpace(2),
                  BlocBuilder<OrderBloc, OrderState>(
                    builder: (context, state) {
                      return state.maybeWhen(
                        loading: () => SizedBox(
                          width: double.infinity,
                          height: 50,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.grey),
                            onPressed: null,
                            child: defLoadingCenter,
                          ),
                        ),
                        orElse: () => SizedBox(
                          width: double.infinity,
                          height: 50,
                          child: ElevatedButton(
                            onPressed: () {
                              if (cartBloc.cartDetails.cart_business_type ==
                                      'Delivery & Pickup' &&
                                  bloc.selectedType.isEmpty) {
                                BotToast.showText(text: tr.selectOrderType);
                                return;
                              }

                              // Booking validation
                              if (bloc.selectedType == 'booking') {
                                if (bloc.numOfSeats.isEmpty) {
                                  BotToast.showText(
                                      text: tr.numberOfSeatsRequired);
                                  return;
                                }
                                if (bloc.bookingDate == null) {
                                  BotToast.showText(
                                      text: tr.bookingDateRequired);
                                  return;
                                }
                                if (bloc.selectedBranch.id.toString().isEmpty) {
                                  BotToast.showText(text: tr.selectBranch);
                                  return;
                                }
                              }

                              // Payment method validation
                              if (bloc.selectedPaymentMethod.isEmpty) {
                                BotToast.showText(text: tr.paymentMethods);
                                return;
                              }

                              bloc.add(const OrderEvent.createOrderInstace());
                            },
                            child: Text(tr.proceed,
                                style: const TextStyle(fontSize: 16)),
                          ),
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildPaymentMethodSelector() {
    return BlocBuilder<OrderBloc, OrderState>(
      buildWhen: (previous, current) => true,
      builder: (context, state) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Text(tr.payWith,
                    style: tstyle.bodyLarge!
                        .copyWith(fontWeight: FontWeight.bold))),
            vSpace(2),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Row(
                children: [
                  Expanded(
                    child: _PaymentOptionContainer(
                      title: tr.cash,
                      icon: Icons.money,
                      isSelected: bloc.selectedPaymentMethod == 'cod',
                      onTap: () =>
                          bloc.add(const OrderEvent.selectPaymentMethod('cod')),
                    ),
                  ),
                  hSpace(10),
                  Expanded(
                    child: _PaymentOptionContainer(
                      title: tr.credit,
                      icon: Icons.credit_card,
                      isSelected: bloc.selectedPaymentMethod == 'card',
                      onTap: () => bloc
                          .add(const OrderEvent.selectPaymentMethod('card')),
                    ),
                  ),
                ],
              ),
            ),
          ],
        );
      },
    );
  }
}

class _PaymentOptionContainer extends StatelessWidget {
  final String title;
  final IconData icon;
  final bool isSelected;
  final VoidCallback onTap;

  const _PaymentOptionContainer({
    required this.title,
    required this.icon,
    required this.isSelected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 15),
        decoration: BoxDecoration(
          color: isSelected ? primary.withOpacity(0.1) : Colors.white,
          borderRadius: BorderRadius.circular(12),
          border: Border.all(
              color: isSelected ? primary : Colors.grey.shade300, width: 2),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(icon, size: 32, color: isSelected ? primary : Colors.grey),
            const SizedBox(height: 8),
            Text(title,
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: isSelected ? primary : Colors.black)),
          ],
        ),
      ),
    );
  }
}
