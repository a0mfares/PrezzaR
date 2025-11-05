import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:prezza/config/custom_colors.dart';
import 'package:prezza/core/constants/assets.dart';
import 'package:prezza/core/extension/widget_ext.dart';
import 'package:prezza/core/helper/tools.dart';
import 'package:prezza/core/service/routes.gr.dart';
import 'package:prezza/features/order/domain/entities/orderdetails_entity.dart';
import 'package:prezza/prezza_page.dart';

import '../../../../core/shared/widgets/under_montains.dart';
import '../bloc/order_bloc.dart';

@RoutePage()
class OrderDetailsVendorPage extends StatefulWidget {
  const OrderDetailsVendorPage({
    super.key,
    required this.id,
    required this.type,
  });
  final String id;
  final String type;
  
  @override
  State<OrderDetailsVendorPage> createState() => _OrderDetailsVendorPageState();
}

class _OrderDetailsVendorPageState extends State<OrderDetailsVendorPage> {
  late final OrderBloc bloc;

  @override
  void initState() {
    super.initState();
    bloc = OrderBloc.get(context);
    bloc.add(OrderEvent.getOrderDetails(widget.id));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(tr.orderDetails),
      ).prezzaLeading(),
      body: BlocBuilder<OrderBloc, OrderState>(
        builder: (context, state) {
          return state.maybeWhen(
            successOrderDetails: () => _buildSuccessContent(),
            loading: () => defLoadingCenter,
            orElse: () => const UnderMontains(),
          );
        },
      ),
    );
  }

  Widget _buildSuccessContent() {
    // For booking orders, show booking-specific layout
    if (widget.type == 'booking') {
      return _buildBookingLayout();
    }

    // For delivery/pickup orders, check if orders exist
    if (bloc.orders.isEmpty) {
      return Center(
        child: Text(
          'No orders found',
          style: tstyle.headlineSmall,
        ),
      );
    }

    final totalPrice = bloc.vendorOrders
        .firstWhere(
          (e) => e.order_uuid == widget.id,
          orElse: () => throw Exception('Order not found'),
        )
        .total_price;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _buildOrderIdHeader(),
        const Divider(),
        vSpace(3),
        _buildOrderItemsList(),
        vSpace(3),
        _buildTotalPrice(totalPrice),
        vSpace(3),
        _buildDeliveryInfo(),
        _buildLocationInfo(),
        _buildPhoneInfo(),
        vSpace(3),
        _buildActionButtons(),
        OrderDetailsPDB(type: widget.type),
      ],
    );
  }

  // New layout specifically for booking orders
  Widget _buildBookingLayout() {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildOrderIdHeader(),
          const Divider(),
          vSpace(3),
          _buildBookingInfo(),
          vSpace(3),
          _buildActionButtons(),
          OrderDetailsPDB(type: widget.type),
        ],
      ),
    );
  }

  Widget _buildOrderIdHeader() {
    return Text(
      tr.orderId(widget.id.split('-').first),
      style: tstyle.headlineSmall,
    ).margin(margin: const EdgeInsets.symmetric(horizontal: 30));
  }

  Widget _buildOrderItemsList() {
    return Expanded(
      child: ListView.separated(
        itemCount: bloc.orders.length,
        separatorBuilder: (context, index) => const Divider(),
        itemBuilder: (context, index) {
          final orderItem = bloc.orders[index];
          return _buildOrderItem(orderItem);
        },
      ),
    );
  }

  Widget _buildOrderItem(OrderDetailsEntity orderItem) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _buildProductHeader(orderItem),
        vSpace(3),
        if (orderItem.side_items.isNotEmpty) ...[
          _buildSideItems(orderItem.side_items),
          vSpace(3),
        ],
        if (orderItem.extras.isNotEmpty) ...[
          _buildExtras(orderItem.extras),
          vSpace(3),
        ],
        if (orderItem.size_name.isNotEmpty) ...[
          _buildSize(orderItem.size_name),
          vSpace(3),
        ],
        _buildSpecialRequestField(),
        vSpace(2),
      ],
    ).margin(margin: const EdgeInsets.symmetric(horizontal: 29));
  }

  Widget _buildProductHeader(OrderDetailsEntity orderItem) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          child: Text(
            orderItem.product_info.name,
            style: tstyle.headlineSmall,
          ),
        ),
        Text(
          tr.priceWithCurrency(
            orderItem.item_total_price.toString(),
            'QAR',
          ),
          style: tstyle.headlineSmall,
        ),
      ],
    );
  }

  Widget _buildSideItems(List<Side_items> sideItems) {
    return _buildRichText(
      label: '${tr.sideItems}: ',
      value: sideItems.map((e) => e.side_item_name).join(', '),
    );
  }

  Widget _buildExtras(List<Extras> extras) {
    return _buildRichText(
      label: '${tr.extras}: ',
      value: extras.map((e) => '${e.extra_name} (+${e.extra_price} QAR)').join(', '),
    );
  }

  Widget _buildSize(String sizeName) {
    return _buildRichText(
      label: '${tr.size}: ',
      value: sizeName,
    );
  }

  Widget _buildSpecialRequestField() {
    return TextFormField(
      readOnly: true,
      decoration: InputDecoration(
        hintText: tr.writeHere,
      ),
      minLines: 5,
      maxLines: 5,
    ).prezaa(
      label: tr.specialRequest,
      margin: const EdgeInsets.symmetric(horizontal: 50),
    );
  }

  Widget _buildTotalPrice(num totalPrice) {
    return Text(
      tr.total(tr.priceWithCurrency(totalPrice.toString(), 'QAR')),
      style: tstyle.headlineSmall,
    ).margin(margin: const EdgeInsets.symmetric(horizontal: 30));
  }

  // Booking information widget
  Widget _buildBookingInfo() {
    return Column(
      children: [
        // Number of Seats
        ListTile(
          leading: Container(
            width: 50,
            height: 50,
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              border: Border.all(color: primary),
              shape: BoxShape.circle,
            ),
            child: Icon(Icons.event_seat, color: primary),
          ),
          title: Text('${bloc.orderBooking.number_of_seats} Seats'),
          subtitle: Text(tr.numberOfSeats),
        ),
        // Arrival Date
        ListTile(
          leading: Container(
            width: 50,
            height: 50,
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              border: Border.all(color: primary),
              shape: BoxShape.circle,
            ),
            child: SvgPicture.asset(Assets.assetsImagesEsitemetedTime),
          ),
          title: Text(bloc.orderBooking.arrival_date),
          subtitle: Text(tr.arrivesIn),
        ),
        // Phone
        ListTile(
          leading: SvgPicture.asset(Assets.assetsImagesPhoneBorder),
          title: Text(bloc.orderBooking.customer_phone ?? "No Phone Number Provided"),
          subtitle: Text(tr.phone),
        ),
        // Branch Information
        ListTile(
          leading: Container(
            width: 50,
            height: 50,
            decoration: BoxDecoration(
              border: Border.all(color: primary),
              shape: BoxShape.circle,
            ),
            child: ClipOval(
              child: Image.network(
                bloc.orderBooking.branch_info.bussiness_logo,
                fit: BoxFit.cover,
                errorBuilder: (context, error, stackTrace) => 
                    Icon(Icons.store, color: primary),
              ),
            ),
          ),
          title: Text(bloc.orderBooking.branch_info.bussiness_name),
          subtitle: Text(bloc.orderBooking.branch_info.address),
        ),
      ],
    );
  }

  Widget _buildDeliveryInfo() {
    final address = _getDeliveryOrPickupInfo();
    return ListTile(
      leading: Container(
        width: 50,
        height: 50,
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          border: Border.all(color: primary),
          shape: BoxShape.circle,
        ),
        child: SvgPicture.asset(Assets.assetsImagesCar),
      ),
      title: Text(address),
      subtitle: Text(
        widget.type == 'delivery' ? tr.address : tr.arrivesIn,
      ),
    );
  }

  Widget _buildLocationInfo() {
    final info = _getLocationDeliveryOrPickupInfo();
    return ListTile(
      leading: Container(
        width: 50,
        height: 50,
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          border: Border.all(color: primary),
          shape: BoxShape.circle,
        ),
        child: SvgPicture.asset(
          widget.type == 'delivery'
              ? Assets.assetsImagesLocation
              : Assets.assetsImagesEsitemetedTime,
        ),
      ),
      title: Text(info),
      subtitle: Text(
        widget.type == 'delivery' ? tr.address : tr.arrivesIn,
      ),
    );
  }

  Widget _buildPhoneInfo() {
    final phone = _getCustomerPhone();
    return ListTile(
      leading: SvgPicture.asset(Assets.assetsImagesPhoneBorder),
      title: Text(phone ?? "No Phone Number Provided"),
      subtitle: Text(tr.phone),
    );
  }

  Widget _buildActionButtons() {
    return Row(
      children: [
        Expanded(
          child: TextButton(
            onPressed: _handleReject,
            child: Text(tr.reject),
          ),
        ),
        hSpace(5),
        Expanded(
          child: ElevatedButton(
            onPressed: _handleAccept,
            child: Text(tr.accept),
          ),
        ),
      ],
    ).margin(
      margin: const EdgeInsets.symmetric(horizontal: 50, vertical: 10),
    );
  }

  // Helper methods
  String _getDeliveryOrPickupInfo() {
    switch (widget.type) {
      case 'pickup':
        return '${bloc.orderPickup.car.color} ${bloc.orderPickup.car.brand} ${bloc.orderPickup.car.model} (${bloc.orderPickup.car.car_plat_number})';
      case 'delivery':
        return bloc.orderDelivery.delivery_address;
      case 'booking':
        return bloc.orderBooking.arrival_date;
      default:
        return bloc.orderPickup.arrival_date;
    }
  }
  
  String _getLocationDeliveryOrPickupInfo() {
    switch (widget.type) {
      case 'pickup':
        return bloc.orderPickup.arrival_date;
      case 'delivery':
        return bloc.orderDelivery.delivery_address;
      case 'booking':
        return bloc.orderBooking.arrival_date;
      default:
        return bloc.orderPickup.arrival_date;
    }
  }

  String? _getCustomerPhone() {
    switch (widget.type) {
      case 'delivery':
        return bloc.orderDelivery.customer_phone;
      case 'booking':
        return bloc.orderBooking.customer_phone;
      default:
        return bloc.orderPickup.customer_phone;
    }
  }

  void _handleReject() {
    appRoute.navigate(
      ReasonRoute(
        icon: Assets.assetsImagesRejected,
        title: tr.orderRejected,
        subTitle: tr.clientReason,
        orderId: widget.id,
        isRejected: true,
      ),
    );
  }

  void _handleAccept() {
    appRoute.navigate(
      ReasonRoute(
        icon: Assets.assetsImagesRejected,
        title: tr.orderAccepted,
        subTitle: tr.tellClient,
        orderId: widget.id,
      ),
    );
  }

  RichText _buildRichText({required String label, required String value}) {
    return RichText(
      text: TextSpan(
        children: [
          TextSpan(
            text: label,
            style: tstyle.bodyLarge!.copyWith(color: Colors.grey),
          ),
          TextSpan(
            text: value,
            style: tstyle.bodyLarge,
          ),
        ],
      ),
    );
  }
}

class OrderDetailsPDB extends StatelessWidget {
  const OrderDetailsPDB({
    super.key,
    required this.type,
  });
  
  final String type;

  @override
  Widget build(BuildContext context) {
    final bloc = OrderBloc.get(context);
    final phone = _getCustomerPhone(bloc);

    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      margin: const EdgeInsets.all(20),
      child: Column(
        children: [
          ListTile(
            leading: Container(
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                border: Border.all(color: primary),
                shape: BoxShape.circle,
              ),
              child: SvgPicture.asset(
                Assets.assetsImagesProfileActive,
                width: 100,
              ),
            ),
            title: Text(phone ?? "No Phone Number Provided"),
            trailing: InkWell(
              onTap: () => launchPhoneDialer(phone ?? "No Phone Number Provided"),
              child: CircleAvatar(
                backgroundColor: primary,
                child: SvgPicture.asset(Assets.assetsImagesCalling),
              ),
            ),
          )
        ],
      ).margin(
        margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      ),
    );
  }

  String? _getCustomerPhone(OrderBloc bloc) {
    switch (type) {
      case 'delivery':
        return bloc.orderDelivery.customer_phone;
      case 'booking':
        return bloc.orderBooking.customer_phone;
      default:
        return bloc.orderPickup.customer_phone;
    }
  }
}