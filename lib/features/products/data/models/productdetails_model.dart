import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:prezza/features/products/domain/entities/productdetails_entity.dart';

part 'productdetails_model.g.dart';

@JsonSerializable()
class ProductDetailsModel extends ProductDetailsEntity {
  ProductDetailsModel({
    required super.uuid,
    required super.name,
    required super.description,
    required super.main_image,
    required super.price_range,
    required super.extras,
    required super.side_items,
    required super.product_sizes,
  });

  factory ProductDetailsModel.fromMap(Map<String, dynamic> json) =>
      _$ProductDetailsModelFromJson(json);
}
