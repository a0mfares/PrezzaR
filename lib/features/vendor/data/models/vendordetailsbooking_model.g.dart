// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vendordetailsbooking_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

VendorDetailsBookingModel _$VendorDetailsBookingModelFromJson(
        Map<String, dynamic> json) =>
    VendorDetailsBookingModel(
      id: (json['id'] as num).toInt(),
      service: json['service'] as String,
      business_name: json['business_name'] as String,
      description: json['description'] as String,
      business_logo: json['business_logo'] as String,
      bussiness_avg_stars: (json['bussiness_avg_stars'] as num).toInt(),
      num_of_reviews: (json['num_of_reviews'] as num).toInt(),
      distance_in_kilo_meters:
          (json['distance_in_kilo_meters'] as num).toDouble(),
    );

Map<String, dynamic> _$VendorDetailsBookingModelToJson(
        VendorDetailsBookingModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'service': instance.service,
      'business_name': instance.business_name,
      'description': instance.description,
      'business_logo': instance.business_logo,
      'bussiness_avg_stars': instance.bussiness_avg_stars,
      'num_of_reviews': instance.num_of_reviews,
      'distance_in_kilo_meters': instance.distance_in_kilo_meters,
    };
