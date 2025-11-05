// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'favvendor_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FavVendorModel _$FavVendorModelFromJson(Map<String, dynamic> json) =>
    FavVendorModel(
      uuid: json['uuid'] as String,
      bussiness_category: json['bussiness_category'] as String,
      bussiness_name: json['bussiness_name'] as String,
      bussiness_avg_stars: (json['bussiness_avg_stars'] as num).toInt(),
      num_of_reviews: (json['num_of_reviews'] as num).toInt(),
      bussiness_logo: json['bussiness_logo'] as String,
    );

Map<String, dynamic> _$FavVendorModelToJson(FavVendorModel instance) =>
    <String, dynamic>{
      'uuid': instance.uuid,
      'bussiness_category': instance.bussiness_category,
      'bussiness_name': instance.bussiness_name,
      'bussiness_avg_stars': instance.bussiness_avg_stars,
      'num_of_reviews': instance.num_of_reviews,
      'bussiness_logo': instance.bussiness_logo,
    };
