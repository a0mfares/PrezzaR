import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:prezza/core/helper/tools.dart';

import '../bloc/order_bloc.dart';
import 'order_item_customer.dart';
import 'order_item_vendor.dart';

class OrderWidget extends StatefulWidget {
  const OrderWidget({super.key, this.isVendor = false, this.isPending = true});
  final bool isVendor;
  final bool isPending;

  @override
  State<OrderWidget> createState() => _OrderWidgetState();
}

class _OrderWidgetState extends State<OrderWidget> {
  late final OrderBloc bloc;

  @override
  void initState() {
    bloc = OrderBloc.get(context);
    if (isCustomer) {
      bloc.add(
          OrderEvent.getUserOrders(!widget.isPending ? 'history' : 'ongoing'));
    } else {
      bloc.add(OrderEvent.getOrderByStatus(
          !widget.isPending ? 'running' : 'pending'));
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<OrderBloc, OrderState>(
      builder: (context, state) {
        return state.maybeWhen(
          loading: () => defLoadingCenter,
          orElse: () {
            return ListView.builder(
              itemCount: isCustomer
                  ? bloc.userOrders.length
                  : bloc.vendorOrders.length,
              itemBuilder: (context, index) {
                if (widget.isVendor) {
                  final order = bloc.vendorOrders[index];
                  return OrderItemVendor(
                    isPending: widget.isPending,
                    order: order,
                  );
                }
                final userOrder = bloc.userOrders[index];
                return OrderItemCustomer(order: userOrder);
              },
            );
          },
        );
      },
    );
  }
}
