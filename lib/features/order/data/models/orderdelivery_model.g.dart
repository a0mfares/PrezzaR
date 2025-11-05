// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'orderdelivery_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OrderDeliveryModel _$OrderDeliveryModelFromJson(Map<String, dynamic> json) =>
    OrderDeliveryModel(
      uuid: json['uuid'] as String,
      delivery_address: json['delivery_address'] as String,
      customer_phone: json['customer_phone'] as String?,
    );

Map<String, dynamic> _$OrderDeliveryModelToJson(OrderDeliveryModel instance) =>
    <String, dynamic>{
      'uuid': instance.uuid,
      'delivery_address': instance.delivery_address,
      'customer_phone': instance.customer_phone,
    };
