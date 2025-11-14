import 'package:bot_toast/bot_toast.dart';
import 'package:flutter/material.dart';
import 'package:prezza/core/service/routes.gr.dart';
import 'package:prezza/core/shared/widgets/cached_image.dart';
import 'package:prezza/features/products/domain/entities/productitem_entity.dart';
import 'package:prezza/features/products/presentation/bloc/product_bloc.dart';
import 'package:prezza/prezza_page.dart';

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
        // Validate product UUID before navigation
        if (product.uuid.isEmpty) {
          // Show error message if UUID is empty
                    BotToast.showText(text: "Product ID is missing");
          return;
        }
        
        try {
                      appRoute.navigate(ProductDetailsRoute(id: product.uuid));

        } catch (e) {
          // Handle navigation errors
          debugPrint('Navigation error: $e');
          BotToast.showText(text: "Failed to open product details");
        }
      },
      onLongPress: () {
        if (!isCustomer) {
          ProductBloc.get(context).add(const ProductEvent.changeStatus(true));
        }
      },
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.05),
              blurRadius: 10,
              offset: const Offset(0, 2),
            ),
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Product Image
              ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: CachedImage(
                  imageUrl: product.main_image ?? '',
                  width: 100,
                  height: 100,
                  fit: BoxFit.cover,
                ),
              ),
              hSpace(3),
              // Product Details
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      product.name.isEmpty ? tr.notSet : product.name,
                      style: tstyle.titleMedium!.copyWith(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                    vSpace(1),
                    Text(
                      product.description.isEmpty
                          ? tr.notSet
                          : product.description,
                      style: tstyle.bodySmall!.copyWith(
                        color: Colors.grey[600],
                      ),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                    vSpace(2),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          product.price_range.split('-').first.trim() == 'None'
                              ? tr.notSet
                              : tr.priceWithCurrency(
                                  product.price_range.split('-').first.trim(),
                                  'QAR'),
                          style: tstyle.titleMedium!.copyWith(
                            fontWeight: FontWeight.bold,
                            color: primary,
                            fontSize: 18,
                          ),
                        ),
                        CircleAvatar(
                          radius: 18,
                          backgroundColor: lightCream,
                          child: Icon(
                            Icons.favorite_outline,
                            color: primary,
                            size: 20,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}