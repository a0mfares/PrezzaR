import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:prezza/features/cart/domain/entities/cartdetails_entity.dart';

part 'cartdetails_model.g.dart';

@JsonSerializable()
class CartDetailsModel extends CartDetailsEntity {
  CartDetailsModel(
      {required super.uuid,
      required super.cart_total_price,
      required super.cart_items,
      required super.vendor_phone_number,
      required super.cart_business_type});

  factory CartDetailsModel.fromJson(Map<String, dynamic> json) =>
      _$CartDetailsModelFromJson(json);
}
