import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../../../config/custom_colors.dart';
import '../../../../config/txt_themes.dart';
import '../../../../core/helper/tools.dart';
import '../../../../core/shared/widgets/cached_image.dart';
import '../../domain/entities/cartdetails_entity.dart';
import '../bloc/cart_bloc.dart';
import '../pages/cart_details_page.dart';

class CartItem extends StatelessWidget {
  const CartItem({
    super.key,
    required this.cartItem,
    required this.bloc,
    required this.widget,
  });

  final Cart_items cartItem;
  final CartBloc bloc;
  final CartDetailsPage widget;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: floralWhite,
      elevation: 3,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Row(
          children: [
            CachedImage(imageUrl: cartItem.product_image),
            hSpace(3),
            Column(
              children: [
                SizedBox(
                  width: 70.w,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        cartItem.product_name,
                        style: tstyle.headlineSmall!
                            .copyWith(fontWeight: FontWeight.bold),
                      ),
                      InkWell(
                        onTap: () {
                          bloc.add(CartEvent.removeItemFromCart(cartItem.uuid));
                        },
                        child: Icon(
                          Icons.close,
                          color: primary,
                        ),
                      ),
                    ],
                  ),
                ),
                vSpace(3),
                SizedBox(
                  width: 70.w,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        tr.priceWithCurrency(
                            cartItem.total_price.toString(), 'QAR'),
                        style: tstyle.bodyLarge!.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          InkWell(
                            onTap: () {
                              bloc.add(CartEvent.updateItemQun(
                                  cartItem.uuid, 'remove'));
                            },
                            child: Icon(
                              Icons.remove,
                              color: primary,
                            ),
                          ),
                          hSpace(2),
                          Text(
                            cartItem.quantity.toString(),
                            style: redText,
                          ),
                          hSpace(2),
                          InkWell(
                            onTap: () {
                              bloc.add(CartEvent.updateItemQun(
                                  cartItem.uuid, 'add'));
                            },
                            child: Icon(
                              Icons.add,
                              color: primary,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
