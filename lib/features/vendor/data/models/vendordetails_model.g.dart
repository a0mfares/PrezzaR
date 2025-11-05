// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vendordetails_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

VendorDetailsModel _$VendorDetailsModelFromJson(Map<String, dynamic> json) =>
    VendorDetailsModel(
      id: (json['id'] as num).toInt(),
      service: json['service'] as String,
      business_name: json['business_name'] as String,
      description: json['description'] as String,
      business_logo: json['business_logo'] as String,
      bussiness_avg_stars: (json['bussiness_avg_stars'] as num).toInt(),
      num_of_reviews: (json['num_of_reviews'] as num).toInt(),
      booking_facilities: (json['booking_facilities'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$VendorDetailsModelToJson(VendorDetailsModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'service': instance.service,
      'business_name': instance.business_name,
      'description': instance.description,
      'business_logo': instance.business_logo,
      'bussiness_avg_stars': instance.bussiness_avg_stars,
      'num_of_reviews': instance.num_of_reviews,
      'booking_facilities': instance.booking_facilities,
    };
