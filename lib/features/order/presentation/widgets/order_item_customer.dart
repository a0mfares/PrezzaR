import 'package:flutter/material.dart';
import 'package:prezza/core/service/routes.gr.dart';
import 'package:prezza/core/shared/widgets/cached_image.dart';
import 'package:prezza/features/order/domain/entities/order_user_entity.dart';
import 'package:prezza/features/order/presentation/bloc/order_bloc.dart';
import 'package:prezza/prezza_page.dart';
import 'package:sizer/sizer.dart';

import '../../../../config/custom_colors.dart';
import '../../../../core/helper/tools.dart';

class OrderItemCustomer extends StatelessWidget {
  const OrderItemCustomer({
    super.key,
    required this.order,
  });
  final OrderUserItemEntity order;
  
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
          // Header with business info and order ID
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Business logo
              ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: CachedImage(
                  imageUrl: order.businessLogo,
                  width: 50,
                  height: 50,
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(width: 3.w),
              
              // Business details
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      order.businessName,
                      style:  TextStyle(
                        fontSize: 2.5.h,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 1.h),
                    Text(
                      tr.total(tr.priceWithCurrency(order.totalPrice.toString(), 'QAR')),
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
                  color: lightCoral.withOpacity(0.1),
                  borderRadius: BorderRadius.circular(4),
                ),
                child: Text(
                  '#${order.uuid.substring(0, 8)}',
                  style: TextStyle(
                    fontSize: 3.w,
                    fontWeight: FontWeight.w500,
                    color: lightCoral,
                  ),
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
                    OrderBloc.get(context).add(OrderEvent.cancelOrder(order.uuid));
                  },
                  style: OutlinedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(vertical: 12),
                    side: BorderSide(color: Colors.grey[300]!),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  child: Text(
                    tr.cancel,
                    style: TextStyle(
                      color: Colors.grey[700],
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
              const SizedBox(width: 12),
              Expanded(
                child: ElevatedButton(
                  onPressed: () {
                    OrderBloc.get(context).add(OrderEvent.getTrackingDetails(order.uuid));
                    appRoute.navigate(OrderDetailsRoute(orderId: order.uuid));
                  },
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(vertical: 12),
                    backgroundColor: lightCoral,
                    foregroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  child: Text(
                    tr.trackOrder,
                    style: const TextStyle(
                      fontWeight: FontWeight.w500,
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