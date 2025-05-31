// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OrderUserItemModel _$OrderUserItemModelFromJson(Map<String, dynamic> json) =>
    OrderUserItemModel(
      uuid: json['uuid'] as String,
      total_price: (json['total_price'] as num).toInt(),
      created_at: json['created_at'] as String,
      bussiness_name: json['bussiness_name'] as String,
      bussiness_logo: json['bussiness_logo'] as String,
      cart_uuid: json['cart_uuid'] as String,
    );

Map<String, dynamic> _$OrderUserItemModelToJson(OrderUserItemModel instance) =>
    <String, dynamic>{
      'uuid': instance.uuid,
      'total_price': instance.total_price,
      'created_at': instance.created_at,
      'bussiness_name': instance.bussiness_name,
      'bussiness_logo': instance.bussiness_logo,
      'cart_uuid': instance.cart_uuid,
    };
