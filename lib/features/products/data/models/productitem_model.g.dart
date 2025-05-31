// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'productitem_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProductItemModel _$ProductItemModelFromJson(Map<String, dynamic> json) =>
    ProductItemModel(
      uuid: json['uuid'] as String,
      name: json['name'] as String,
      is_fav: json['is_fav'] as bool?,
      description: json['description'] as String,
      main_image: json['main_image'] as String?,
      price_range: json['price_range'] as String,
    );

Map<String, dynamic> _$ProductItemModelToJson(ProductItemModel instance) =>
    <String, dynamic>{
      'uuid': instance.uuid,
      'name': instance.name,
      'description': instance.description,
      'main_image': instance.main_image,
      'price_range': instance.price_range,
      'is_fav': instance.is_fav,
    };
