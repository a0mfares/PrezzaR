// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'orderitem_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OrderVendorItemModel _$OrderVendorItemModelFromJson(
        Map<String, dynamic> json) =>
    OrderVendorItemModel(
      order_uuid: json['order_uuid'] as String,
      order_type: json['order_type'] as String,
      customer_name: json['customer_name'] as String,
      showen_id: json['showen_id'] as String,
      total_price: (json['total_price'] as num).toDouble(),
    );

Map<String, dynamic> _$OrderVendorItemModelToJson(
        OrderVendorItemModel instance) =>
    <String, dynamic>{
      'order_uuid': instance.order_uuid,
      'order_type': instance.order_type,
      'customer_name': instance.customer_name,
      'showen_id': instance.showen_id,
      'total_price': instance.total_price,
    };
