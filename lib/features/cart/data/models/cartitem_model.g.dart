// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cartitem_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CartItemModel _$CartItemModelFromJson(Map<String, dynamic> json) =>
    CartItemModel(
      uuid: json['uuid'] as String,
      product_name: json['product_name'] as String,
      product_image: json['product_image'] as String,
      quantity: (json['quantity'] as num).toInt(),
      price: (json['price'] as num).toInt(),
      extra_price: (json['extra_price'] as num).toInt(),
      total_price: (json['total_price'] as num).toInt(),
    );

Map<String, dynamic> _$CartItemModelToJson(CartItemModel instance) =>
    <String, dynamic>{
      'uuid': instance.uuid,
      'product_name': instance.product_name,
      'product_image': instance.product_image,
      'quantity': instance.quantity,
      'price': instance.price,
      'extra_price': instance.extra_price,
      'total_price': instance.total_price,
    };
