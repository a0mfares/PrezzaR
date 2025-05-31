// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'car_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CarModel _$CarModelFromJson(Map<String, dynamic> json) => CarModel(
      uuid: json['uuid'] as String,
      brand: json['brand'] as String,
      model: json['model'] as String,
      car_type: json['car_type'] as String,
      color: json['color'] as String,
      car_plat_number: json['car_plat_number'] as String,
      car_image: json['car_image'] as String,
    );

Map<String, dynamic> _$CarModelToJson(CarModel instance) => <String, dynamic>{
      'uuid': instance.uuid,
      'brand': instance.brand,
      'model': instance.model,
      'car_type': instance.car_type,
      'color': instance.color,
      'car_plat_number': instance.car_plat_number,
      'car_image': instance.car_image,
    };
