import 'package:flutter/material.dart';
import 'package:prezza/core/extension/widget_ext.dart';
import 'package:prezza/core/service/routes.gr.dart';
import 'package:prezza/features/order/domain/entities/orderitem_entity.dart';
import 'package:prezza/prezza_page.dart';

import '../../../../config/custom_colors.dart';
import '../../../../config/txt_themes.dart';
import '../../../../core/constants/assets.dart';
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
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset(Assets.assetsImagesIconTest, width: 100),
            Column(
              children: [
                Text(order.customer_name),
                vSpace(1),
                Text(tr.orderId(order.order_uuid.substring(0, 5))),
                vSpace(1),
                Text(tr.priceWithCurrency(order.total_price.toString(), 'QAR')),
              ],
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                Text(order.order_type,
                    style: tstyle.bodyLarge!.copyWith(color: teal)),
                Row(
                  children: [
                    InkWell(
                      onTap: () {
                        appRoute.navigate(
                          OrderDetailsVendorRoute(
                              id: order.order_uuid, type: order.order_type),
                        );
                      },
                      child: Text(
                        tr.orderDetails,
                        style: clickableText.copyWith(color: primary),
                      ),
                    ),
                    hSpace(2),
                    Visibility(
                      visible: isPending,
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                            minimumSize: const Size(80, 40),
                            maximumSize: const Size(80, 40),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(25))),
                        child: Text(tr.done),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ],
        ),
      ],
    ).margin(margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10));
  }
}
