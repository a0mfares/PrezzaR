import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:prezza/features/products/domain/entities/productitem_entity.dart';

part 'productitem_model.g.dart';

@JsonSerializable()
class ProductItemModel extends ProductItemEntity {
  ProductItemModel({
    required super.uuid,
    required super.name,
    required super.is_fav,
    required super.description,
    super.main_image,
    required super.price_range,
  });

  factory ProductItemModel.fromMap(Map<String, dynamic> json) =>
      _$ProductItemModelFromJson(json);
}
