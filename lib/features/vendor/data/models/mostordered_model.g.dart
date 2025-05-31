// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mostordered_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MostOrderedModel _$MostOrderedModelFromJson(Map<String, dynamic> json) =>
    MostOrderedModel(
      product__name: json['product__name'] as String,
      product__uuid: json['product__uuid'] as String,
      product__main_image: json['product__main_image'] as String,
      order_count: json['order_count'] as num,
    );

Map<String, dynamic> _$MostOrderedModelToJson(MostOrderedModel instance) =>
    <String, dynamic>{
      'product__name': instance.product__name,
      'product__uuid': instance.product__uuid,
      'product__main_image': instance.product__main_image,
      'order_count': instance.order_count,
    };
