// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cartdetails_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CartDetailsModel _$CartDetailsModelFromJson(Map<String, dynamic> json) =>
    CartDetailsModel(
      uuid: json['uuid'] as String,
      cart_total_price: json['cart_total_price'] as num,
      cart_items:
          CartDetailsEntity.cart_itemsFromMap(json['cart_items'] as List),
      vendor_phone_number: json['vendor_phone_number'] as String,
      cart_business_type: json['cart_business_type'] as String,
    );

Map<String, dynamic> _$CartDetailsModelToJson(CartDetailsModel instance) =>
    <String, dynamic>{
      'uuid': instance.uuid,
      'cart_total_price': instance.cart_total_price,
      'vendor_phone_number': instance.vendor_phone_number,
      'cart_business_type': instance.cart_business_type,
      'cart_items': CartDetailsEntity.cart_itemsToMap(instance.cart_items),
    };
