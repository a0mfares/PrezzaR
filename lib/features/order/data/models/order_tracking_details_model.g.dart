// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_tracking_details_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OrderTrackingDetailsModel _$OrderTrackingDetailsModelFromJson(
        Map<String, dynamic> json) =>
    OrderTrackingDetailsModel(
      uuid: json['uuid'] as String,
      order_total_price: (json['order_total_price'] as num).toInt(),
      created_at: json['created_at'] as String,
      bussiness_name: json['bussiness_name'] as String,
      bussiness_logo: json['bussiness_logo'] as String,
      order_status: json['order_status'] as String,
      items: (json['items'] as List<dynamic>)
          .map((e) => Product.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$OrderTrackingDetailsModelToJson(
        OrderTrackingDetailsModel instance) =>
    <String, dynamic>{
      'uuid': instance.uuid,
      'order_total_price': instance.order_total_price,
      'created_at': instance.created_at,
      'bussiness_name': instance.bussiness_name,
      'bussiness_logo': instance.bussiness_logo,
      'order_status': instance.order_status,
      'items': instance.items.map((e) => e.toJson()).toList(),
    };
