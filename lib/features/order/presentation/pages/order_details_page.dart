import 'dart:developer';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:prezza/core/extension/widget_ext.dart';
import 'package:prezza/core/helper/tools.dart';
import 'package:prezza/features/order/domain/entities/order_tracking_details_entity.dart';
import 'package:prezza/features/order/presentation/bloc/order_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../config/custom_colors.dart';

@RoutePage()
class OrderDetailsPage extends StatefulWidget {
  const OrderDetailsPage({super.key, required this.orderId});
  final String orderId;

  @override
  State<OrderDetailsPage> createState() => _OrderDetailsPageState();
}

class _OrderDetailsPageState extends State<OrderDetailsPage> {
  late final OrderBloc bloc;

  @override
  void initState() {
    bloc = OrderBloc.get(context);
    bloc.add(OrderEvent.getTrackingDetails(widget.orderId));
    super.initState();
  }

  List<OrderStep> _getOrderSteps(String status, String bussiness_name) {
    // Define all possible steps
    final allSteps = [
      OrderStep(
        text: "Your order has been received",
        statusThreshold: ["pending", "running", "shipped", "delivered", "cancelled"],
      ),
      OrderStep(
        text: "Your order is pending confirmation",
        statusThreshold: ["pending", "running", "shipped", "delivered"],
      ),
      OrderStep(
        text: "$bussiness_name is preparing your order",
        statusThreshold: ["running", "shipped", "delivered"],
      ),
      OrderStep(
        text: "Your order is ready for pick up",
        statusThreshold: ["shipped", "delivered"],
      ),
      OrderStep(
        text: "Your order has been shipped",
        statusThreshold: ["shipped", "delivered"],
      ),
      OrderStep(
        text: "Your order has been delivered",
        statusThreshold: ["delivered"],
      ),
    ];

    // Handle cancelled status separately
    if (status == "cancelled") {
      return [
        OrderStep(
          text: "Your order has been received",
          statusThreshold: ["cancelled"],
        ),
        OrderStep(
          text: "Your order has been cancelled",
          statusThreshold: ["cancelled"],
          isCancelled: true,
        ),
      ];
    }

    // Filter steps based on current status
    List<OrderStep> activeSteps = [];
    for (int i = 0; i < allSteps.length; i++) {
      final step = allSteps[i];
      
      if (step.statusThreshold.contains(status)) {
        activeSteps.add(step);
      }
    }

    return activeSteps;
  }

  int _getCurrentStepIndex(String status) {
    switch (status) {
      case "pending":
        return 1; // Changed from 5 to 1 to match the order steps
      case "running":
        return 2; // Changed from 1 to 2 to match the order steps
      case "shipped":
        return 4; // Changed from 3 to 4 to match the order steps
      case "delivered":
        return 5; // Changed from 4 to 5 to match the order steps
      case "cancelled":
        return 1; 
      default:
        return 0;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(tr.orders),
      ).prezzaLeading(),
      body: BlocBuilder<OrderBloc, OrderState>(
          builder: (context, state) {
            // DEBUG: Print current state
            log('Current state: $state');
            
            return state.maybeWhen(
              loading: () {
                log('State is loading');
                return const Center(child: CircularProgressIndicator());
              },
              failure: (err) {
                log('State is failure: $err');
                return Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(err),
                      const SizedBox(height: 16),
                      ElevatedButton(
                        onPressed: () {
                          bloc.add(OrderEvent.getTrackingDetails(widget.orderId));
                        },
                        child: const Text('Retry'),
                      ),
                    ],
                  ),
                );
              },
              success: () {
                
                
                final orderStatus = bloc.orderT.order_status;
                log('Order status: $orderStatus');
                
                final steps = _getOrderSteps(orderStatus, bloc.orderT.bussiness_name);
                final currentStepIndex = _getCurrentStepIndex(orderStatus);
                
                return SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Order header
                      Container(
                        padding: const EdgeInsets.all(16),
                        margin: const EdgeInsets.all(16),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(12),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.1),
                              spreadRadius: 1,
                              blurRadius: 5,
                              offset: const Offset(0, 2),
                            ),
                          ],
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(8),
                                  child: Image.network(
                                    bloc.orderT.bussiness_logo,
                                    width: 60,
                                    height: 60,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                const SizedBox(width: 12),
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        bloc.orderT.bussiness_name,
                                        style: const TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      const SizedBox(height: 4),
                                      Text(
                                        tr.total(tr.priceWithCurrency(
                                            bloc.orderT.order_total_price.toString(), 'QAR')),
                                        style: TextStyle(
                                          fontSize: 16,
                                          color: Colors.grey[600],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 8, vertical: 4),
                                  decoration: BoxDecoration(
                                    color: lightCoral.withOpacity(0.1),
                                    borderRadius: BorderRadius.circular(4),
                                  ),
                                  child: Text(
                                    '#${widget.orderId.substring(0, 8)}',
                                    style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w500,
                                      color: lightCoral,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      
                      // Order items
                      Container(
                        margin: const EdgeInsets.symmetric(horizontal: 16),
                        padding: const EdgeInsets.all(16),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(12),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.1),
                              spreadRadius: 1,
                              blurRadius: 5,
                              offset: const Offset(0, 2),
                            ),
                          ],
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Order Items',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Colors.grey[800],
                              ),
                            ),
                            const SizedBox(height: 12),
                            ListView.builder(
                              shrinkWrap: true,
                              physics: const NeverScrollableScrollPhysics(),
                              itemCount: bloc.orderT.items.length,
                              itemBuilder: (context, index) {
                                final item = bloc.orderT.items[index];
                                return _buildOrderItem(item);
                              },
                            ),
                            const SizedBox(height: 16),
                            const Divider(),
                            const SizedBox(height: 8),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Total',
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.grey[800],
                                  ),
                                ),
                                Text(
                                  tr.priceWithCurrency(
                                      bloc.orderT.order_total_price.toString(), 'QAR'),
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    color: lightCoral,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      
                      // Order tracking
                      Container(
                        margin: const EdgeInsets.all(16),
                        padding: const EdgeInsets.all(16),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(12),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.1),
                              spreadRadius: 1,
                              blurRadius: 5,
                              offset: const Offset(0, 2),
                            ),
                          ],
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Order Status',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Colors.grey[800],
                              ),
                            ),
                            const SizedBox(height: 16),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                for (int i = 0; i < steps.length; i++) ...[
                                  buildStep(
                                    isActive: i <= currentStepIndex,
                                    isCompleted: i < currentStepIndex,
                                    text: steps[i].text,
                                    isCancelled: steps[i].isCancelled,
                                  ),
                                  if (i < steps.length - 1)
                                    buildDivider(isActive: i < currentStepIndex),
                                ],
                              ],
                            ),
                          ],
                        ),
                      ),
                      
                      const SizedBox(height: 20),
                    ],
                  ),
                );
              },
              orElse: () {
                log('State is in orElse - state type: ${state.runtimeType}');
                return Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text('Unexpected state'),
                      const SizedBox(height: 8),
                      Text('State: ${state.runtimeType}'),
                    ],
                  ),
                );
              },
            );
          },
        ),
      );
  }

  Widget _buildOrderItem(Product item) {
    return Container(
      margin: const EdgeInsets.only(bottom: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      item.product_name,
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    )
                  ],
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    'x${item.quantity}',
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.grey[600],
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    tr.priceWithCurrency(
                        item.item_total_price.toString(), 'QAR'),
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget buildStep({
    required bool isActive,
    required bool isCompleted,
    required String text,
    bool isCancelled = false,
  }) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        // Step circle
        Container(
          width: 24,
          height: 24,
          decoration: BoxDecoration(
            color: isCancelled
                ? Colors.red
                : (isCompleted ? primary : (isActive ? primary : lightCream)),
            shape: BoxShape.circle,
          ),
          child: isCancelled
              ? const Icon(Icons.close, color: Colors.white, size: 16)
              : (isCompleted
                  ? const Icon(Icons.check, color: Colors.white, size: 16)
                  : null),
        ),
        const SizedBox(width: 12),
        // Step text
        Expanded(
          child: Text(
            text,
            style: TextStyle(
              color: isCancelled
                  ? Colors.red
                  : (isCompleted || isActive ? Colors.black : Colors.grey),
              fontSize: 16,
              fontWeight: isCompleted ? FontWeight.bold : FontWeight.normal,
            ),
          ),
        ),
      ],
    );
  }

  Widget buildDivider({required bool isActive}) {
    return Padding(
      padding: const EdgeInsets.only(left: 11),
      child: Container(
        height: 40,
        width: 2,
        color: isActive ? primary : lightCream,
      ),
    );
  }
}

// Helper class to define order steps
class OrderStep {
  final String text;
  final List<String> statusThreshold;
  final bool isCancelled;

  OrderStep({
    required this.text,
    required this.statusThreshold,
    this.isCancelled = false,
  });
}