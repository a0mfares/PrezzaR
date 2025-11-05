// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'orderdetails_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OrderDetailsModel _$OrderDetailsModelFromJson(Map<String, dynamic> json) =>
    OrderDetailsModel(
      uuid: json['uuid'] as String,
      size_name: json['size_name'] as String,
      quantity: (json['quantity'] as num).toInt(),
      item_total_price: json['item_total_price'] as num,
      product_info:
          Product_info.fromMap(json['product_info'] as Map<String, dynamic>),
      extras: OrderDetailsEntity.extrafromMap(json['extras'] as List),
      side_items:
          OrderDetailsEntity.sideItemsfromMap(json['side_items'] as List),
    );

Map<String, dynamic> _$OrderDetailsModelToJson(OrderDetailsModel instance) =>
    <String, dynamic>{
      'uuid': instance.uuid,
      'size_name': instance.size_name,
      'quantity': instance.quantity,
      'item_total_price': instance.item_total_price,
      'product_info':
          OrderDetailsEntity.product_infoToMap(instance.product_info),
      'extras': OrderDetailsEntity.extraToMap(instance.extras),
      'side_items': OrderDetailsEntity.sideItemsToMap(instance.side_items),
    };
