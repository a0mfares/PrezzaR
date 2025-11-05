import 'package:flutter/material.dart';
import 'package:prezza/core/service/routes.gr.dart';
import 'package:prezza/features/order/domain/entities/orderitem_entity.dart';
import 'package:prezza/features/order/presentation/bloc/order_bloc.dart';
import 'package:prezza/prezza_page.dart';
import 'package:sizer/sizer.dart';

import '../../../../config/custom_colors.dart';
import '../../../../core/helper/tools.dart';

class OrderItemVendor extends StatelessWidget {
  const OrderItemVendor({
    super.key,
    required this.isPending,
    required this.order,
  });
  final bool isPending;
  final OrderVendorItemEntity order;
  
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.1),
            spreadRadius: 1,
            blurRadius: 3,
            offset: const Offset(0, 1),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Header with customer info and order ID
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Customer icon or avatar
              Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Icon(
                  Icons.person,
                  color: Colors.grey[600],
                  size: 30,
                ),
              ),
              SizedBox(width: 3.w),
              
              // Customer details
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      order.customer_name,
                      style: TextStyle(
                        fontSize: 2.5.h,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 1.h),
                    Text(
                      tr.total(tr.priceWithCurrency(order.total_price.toString(), 'QAR')),
                      style: TextStyle(
                        fontSize: 2.h,
                        color: Colors.grey[600],
                      ),
                    ),
                  ],
                ),
              ),
              
              // Order ID
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                decoration: BoxDecoration(
                  color: teal.withOpacity(0.1),
                  borderRadius: BorderRadius.circular(4),
                ),
                child: Text(
                  '#${order.order_uuid.substring(0, 8)}',
                  style: TextStyle(
                    fontSize: 3.w,
                    fontWeight: FontWeight.w500,
                    color: teal,
                  ),
                ),
              ),
            ],
          ),
          
          SizedBox(height: 2.h),
          
          // Order type
          Row(
            children: [
              Text(
                "Order Type: ",
                style: TextStyle(
                  fontSize: 2.h,
                  color: Colors.grey[600],
                ),
              ),
              SizedBox(width: 1.w),
              Text(
                order.order_type,
                style: TextStyle(
                  fontSize: 2.h,
                  fontWeight: FontWeight.w500,
                  color: teal,
                ),
              ),
            ],
          ),
          
          SizedBox(height: 2.h),
          
          // Action buttons
          Row(
            children: [
              Expanded(
                child: OutlinedButton(
                  onPressed: () {
                    appRoute.navigate(
                      OrderDetailsVendorRoute(
                        id: order.order_uuid, 
                        type: order.order_type
                      ),
                    );
                  },
                  style: OutlinedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(vertical: 12),
                    side: BorderSide(color: primary),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  child: Text(
                    tr.orderDetails,
                    style: TextStyle(
                      color: primary,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
              const SizedBox(width: 12),
              Visibility(
                visible: isPending,
                child: Expanded(
                  child: ElevatedButton(
                    onPressed: () {
                      OrderBloc.get(context).add(OrderEvent.doneOrder(order.order_uuid));
                    },
                    style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.symmetric(vertical: 12),
                      backgroundColor: primary,
                      foregroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                    child: Text(
                      tr.done,
                      style: const TextStyle(
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}