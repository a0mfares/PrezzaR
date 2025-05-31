import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/entities/cartitem_entity.dart';

part 'cartitem_model.g.dart';

@JsonSerializable()
class CartItemModel extends CartItemEntity {
  CartItemModel(
      {required super.uuid,
      required super.product_name,
      required super.product_image,
      required super.quantity,
      required super.price,
      required super.extra_price,
      required super.total_price});

  factory CartItemModel.fromJson(Map<String, dynamic> json) =>
      _$CartItemModelFromJson(json);
}
