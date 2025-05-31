// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'productdetails_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProductDetailsModel _$ProductDetailsModelFromJson(Map<String, dynamic> json) =>
    ProductDetailsModel(
      uuid: json['uuid'] as String,
      name: json['name'] as String,
      description: json['description'] as String,
      main_image: json['main_image'] as String,
      price_range: json['price_range'] as String,
      extras: ProductDetailsEntity.extrafromMap(json['extras'] as List),
      side_items:
          ProductDetailsEntity.sideItemsfromMap(json['side_items'] as List),
      product_sizes:
          ProductDetailsEntity.sizefromMap(json['product_sizes'] as List),
    );

Map<String, dynamic> _$ProductDetailsModelToJson(
        ProductDetailsModel instance) =>
    <String, dynamic>{
      'uuid': instance.uuid,
      'name': instance.name,
      'description': instance.description,
      'main_image': instance.main_image,
      'price_range': instance.price_range,
      'extras': ProductDetailsEntity.extraToMap(instance.extras),
      'side_items': ProductDetailsEntity.sideItemsToMap(instance.side_items),
      'product_sizes': ProductDetailsEntity.sizeToMap(instance.product_sizes),
    };
