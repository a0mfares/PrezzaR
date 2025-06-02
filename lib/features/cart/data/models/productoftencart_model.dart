import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:prezza/features/cart/domain/entities/productoftencart_entity.dart';

part 'productoftencart_model.g.dart';

@JsonSerializable()
class ProductOftenCartModel extends ProductOftenCartEntity {
  ProductOftenCartModel(
      {required super.uuid,
      required super.name,
      required super.price_range,
      super.smallest_size_id});

  factory ProductOftenCartModel.fromJson(Map<String, dynamic> json) =>
      _$ProductOftenCartModelFromJson(json);
}
