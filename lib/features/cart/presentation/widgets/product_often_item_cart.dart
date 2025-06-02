import 'package:flutter/material.dart';
import 'package:prezza/core/extension/widget_ext.dart';
import 'package:prezza/core/shared/widgets/qun_widget.dart';
import 'package:prezza/features/cart/domain/entities/productoftencart_entity.dart';

import '../../../../core/helper/tools.dart';
import '../../../../core/shared/widgets/cached_image.dart';
import '../bloc/cart_bloc.dart';

class ProductOftenItemCart extends StatefulWidget {
  const ProductOftenItemCart({super.key, required this.product});
  final ProductOftenCartEntity product;
  @override
  State<ProductOftenItemCart> createState() => _ProductItemPrezzaState();
}

class _ProductItemPrezzaState extends State<ProductOftenItemCart> {
  late final CartBloc bloc;
  bool isAdded = false;

  @override
  void initState() {
    bloc = CartBloc.get(context);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3,
      color: Colors.white,
      child: Column(
        children: [
          CachedImage(
            imageUrl: widget.product.name,
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
              Text(tr.priceWithCurrency(
                  widget.product.price_range.split('-').first.trim(), 'QAR')),
              hSpace(3),
              QunWidget(
                isAdded: isAdded,
                qun: 1,
                onAdd: () {
                  // bloc.add(CartEvent.addItemToCart({
                  //   'product_uuid': widget.product.uuid,
                  //   'size_id': widget.product.smallest_size_id,
                  //   'qun': 1,
                  //   'side_item': '',
                  //   'extras': '',
                  // }));
                },
                onRemove: () {},
              ),
            ],
          ),
        ],
      ).margin(
        margin: const EdgeInsets.symmetric(horizontal: 5),
      ),
    );
  }
}
