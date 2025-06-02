import 'package:flutter/material.dart';
import 'package:prezza/core/extension/widget_ext.dart';
import 'package:prezza/core/service/routes.gr.dart';
import 'package:prezza/core/shared/widgets/cached_image.dart';
import 'package:prezza/features/products/domain/entities/productitem_entity.dart';
import 'package:prezza/features/products/presentation/bloc/product_bloc.dart';
import 'package:prezza/prezza_page.dart';
import 'package:sizer/sizer.dart';

import '../../../../config/custom_colors.dart';
import '../../../../core/helper/tools.dart';

class ProductItem extends StatelessWidget {
  const ProductItem({
    super.key,
    required this.product,
  });
  final ProductItemEntity product;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        appRoute.navigate(ProductDetailsRoute(id: product.uuid));
      },
      onLongPress: () {
        if (!isCustomer) {
          ProductBloc.get(context).add(const ProductEvent.changeStatus(true));
        }
      },
      child: Column(
        children: [
          const Divider(),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      product.name.isEmpty ? tr.notSet : product.name,
                      style: tstyle.headlineSmall!.copyWith(
                        fontWeight: FontWeight.bold,
                        // fontSize:
                      ),
                    ),
                    vSpace(1),
                    SizedBox(
                      width: 50.w,
                      child: Text(
                        product.description.isEmpty
                            ? tr.notSet
                            : product.description,
                        style: tstyle.bodyMedium,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    vSpace(1),
                    Text(
                      product.price_range.split('-').first.trim() == 'None'
                          ? tr.notSet
                          : tr.priceWithCurrency(
                              product.price_range.split('-').first.trim(),
                              'QAR'),
                      style: tstyle.headlineSmall!.copyWith(
                        fontWeight: FontWeight.bold,
                        // fontSize:
                      ),
                    ),
                  ],
                ),
                Stack(
                  clipBehavior: Clip.none,
                  children: [
                    CachedImage(
                      imageUrl: product.main_image ?? '',
                      radius: BorderRadius.circular(50),
                    ),
                    Positioned(
                      top: 40,
                      right: -10,
                      child: CircleAvatar(
                        backgroundColor: lightCream,
                        child: Icon(
                          Icons.favorite_outline,
                          color: primary,
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
          const Divider()
        ],
      ),
    );
  }
}
