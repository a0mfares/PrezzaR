import 'package:flutter/material.dart';
import 'package:prezza/core/extension/widget_ext.dart';
import 'package:prezza/core/shared/widgets/qun_widget.dart';
import 'package:prezza/features/products/domain/entities/productitem_entity.dart';

import '../../../../core/helper/tools.dart';
import '../../../../core/shared/widgets/cached_image.dart';

class ProductItemPrezza extends StatefulWidget {
  const ProductItemPrezza({super.key, required this.product});
  final ProductItemEntity product;
  @override
  State<ProductItemPrezza> createState() => _ProductItemPrezzaState();
}

class _ProductItemPrezzaState extends State<ProductItemPrezza> {
  bool isAdded = false;
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3,
      color: Colors.white,
      child: Column(
        children: [
          CachedImage(
            imageUrl: widget.product.main_image ?? '',
            width: 150,
            height: 100,
            fit: BoxFit.cover,
          ),
          vSpace(1),
          Text(widget.product.name),
          vSpace(1),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                tr.priceWithCurrency(
                    widget.product.price_range.split('-').first.trim(), 'QAR'),
              ),
              hSpace(3),
              QunWidget(
                isAdded: isAdded,
                qun: 1,
                onAdd: () {},
                onRemove: () {},
              ),
            ],
          ),
        ],
      ).margin(margin: const EdgeInsets.symmetric(horizontal: 5)),
    );
  }
}
