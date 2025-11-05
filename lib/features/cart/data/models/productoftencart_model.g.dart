// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'productoftencart_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProductOftenCartModel _$ProductOftenCartModelFromJson(
        Map<String, dynamic> json) =>
    ProductOftenCartModel(
      uuid: json['uuid'] as String,
      name: json['name'] as String,
      price_range: json['price_range'] as String,
      smallest_size_id: (json['smallest_size_id'] as num?)?.toInt(),
    );

Map<String, dynamic> _$ProductOftenCartModelToJson(
        ProductOftenCartModel instance) =>
    <String, dynamic>{
      'uuid': instance.uuid,
      'name': instance.name,
      'price_range': instance.price_range,
      'smallest_size_id': instance.smallest_size_id,
    };
