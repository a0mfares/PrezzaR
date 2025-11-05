import 'package:auto_mappr_annotation/auto_mappr_annotation.dart';
import 'package:hive_flutter/hive_flutter.dart';

import '../../data/models/cartitem_model.dart';

part 'cartitem_entity.g.dart';

@HiveType(typeId: 66)
@AutoMappr([
  MapType<CartItemModel, CartItemEntity>(),
])
class CartItemEntity extends $CartItemEntity {
  @HiveField(0)
  final String uuid;

  @HiveField(1)
  final String product_name;

  @HiveField(2)
  final String product_image;

  @HiveField(3)
  final int quantity;

  @HiveField(4)
  final int price;

  @HiveField(5)
  final int extra_price;

  @HiveField(6)
  final int total_price;

  CartItemEntity({
    required this.uuid,
    required this.product_name,
    required this.product_image,
    required this.quantity,
    required this.price,
    required this.extra_price,
    required this.total_price,
  });

  factory CartItemEntity.fromModel(CartItemModel model) =>
      const $CartItemEntity().convert<CartItemModel, CartItemEntity>(model);

  // Static serialization methods for nested objects
}
