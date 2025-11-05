// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OrderUserItemModel _$OrderUserItemModelFromJson(Map<String, dynamic> json) =>
    OrderUserItemModel(
      uuid: json['uuid'] as String,
      totalPrice: (json['total_price'] as num).toInt(),
      createdAt: json['created_at'] as String,
      businessName: json['bussiness_name'] as String,
      businessLogo: json['bussiness_logo'] as String,
      cartUuid: json['cart_uuid'] as String,
    );

Map<String, dynamic> _$OrderUserItemModelToJson(OrderUserItemModel instance) =>
    <String, dynamic>{
      'uuid': instance.uuid,
      'total_price': instance.totalPrice,
      'created_at': instance.createdAt,
      'bussiness_name': instance.businessName,
      'bussiness_logo': instance.businessLogo,
      'cart_uuid': instance.cartUuid,
    };
