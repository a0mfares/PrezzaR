import 'package:flutter/material.dart';
import 'package:prezza/core/extension/widget_ext.dart';
import 'package:prezza/core/shared/widgets/cached_image.dart';
import 'package:prezza/features/order/domain/entities/order_user_entity.dart';

import '../../../../config/custom_colors.dart';
import '../../../../core/constants/assets.dart';
import '../../../../core/helper/tools.dart';

class OrderItemCustomer extends StatelessWidget {
  const OrderItemCustomer({
    super.key,
    required this.order,
  });
  final OrderUserItemEntity order;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                CachedImage(imageUrl: order.bussiness_logo),
                Column(
                  children: [
                    Text(order.bussiness_name),
                    Text(tr
                        .total(tr.priceWithCurrency(order.total_price.toString(), 'QAR'))),
                  ],
                ),
              ],
            ),
            Text(
              '#${order.uuid.substring(0, 8)}',
              style: tstyle.bodyLarge!.copyWith(color: lightCoral),
            )
          ],
        ),
        Row(
          children: [
            Expanded(
              child: TextButton(
                onPressed: () {},
                child: Text(tr.cancel),
              ).size(margin: const EdgeInsets.symmetric(horizontal: 20)),
            ),
            hSpace(3),
            Expanded(
              child: ElevatedButton(
                onPressed: () {
                  // appRoute.navigate( OrderDetailsRoute());
                },
                child: Text(tr.trackOrder),
              ).size(margin: const EdgeInsets.symmetric(horizontal: 20)),
            ),
          ],
        ).margin(
            margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10)),
        const Divider(),
      ],
    ).margin(margin: const EdgeInsets.all(10));
  }
}
