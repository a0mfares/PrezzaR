// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vendoritem_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

VendorItemModel _$VendorItemModelFromJson(Map<String, dynamic> json) =>
    VendorItemModel(
      bussiness_name: json['bussiness_name'] as String,
      bussiness_avg_stars: (json['bussiness_avg_stars'] as num).toInt(),
      num_of_reviews: (json['num_of_reviews'] as num).toInt(),
      bussiness_logo: json['bussiness_logo'] as String,
      bussiness_id: (json['bussiness_id'] as num).toInt(),
      distance_in_kilo_meters:
          (json['distance_in_kilo_meters'] as num).toDouble(),
      is_fav: json['is_fav'] as bool?,
    );

Map<String, dynamic> _$VendorItemModelToJson(VendorItemModel instance) =>
    <String, dynamic>{
      'bussiness_name': instance.bussiness_name,
      'bussiness_avg_stars': instance.bussiness_avg_stars,
      'num_of_reviews': instance.num_of_reviews,
      'bussiness_logo': instance.bussiness_logo,
      'bussiness_id': instance.bussiness_id,
      'is_fav': instance.is_fav,
      'distance_in_kilo_meters': instance.distance_in_kilo_meters,
    };
