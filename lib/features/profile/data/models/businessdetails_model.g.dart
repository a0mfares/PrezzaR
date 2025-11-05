// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'businessdetails_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BusinessDetailsModel _$BusinessDetailsModelFromJson(
        Map<String, dynamic> json) =>
    BusinessDetailsModel(
      business_name: json['business_name'] as String,
      branches: (json['branches'] as num).toInt(),
      vendor_role: json['vendor_role'] as String,
      description: json['description'] as String,
      operating_hours_from: json['operating_hours_from'] as String,
      operating_hours_to: json['operating_hours_to'] as String,
      has_booking: json['has_booking'] as bool,
      service: json['service'] as String,
      business_logo: json['business_logo'] as String,
      business_category: CategoryModel.fromMap(
          json['business_category'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$BusinessDetailsModelToJson(
        BusinessDetailsModel instance) =>
    <String, dynamic>{
      'business_name': instance.business_name,
      'branches': instance.branches,
      'vendor_role': instance.vendor_role,
      'description': instance.description,
      'operating_hours_from': instance.operating_hours_from,
      'operating_hours_to': instance.operating_hours_to,
      'has_booking': instance.has_booking,
      'service': instance.service,
      'business_logo': instance.business_logo,
      'business_category': BusinessDetailsEntity.business_categoryToMap(
          instance.business_category),
    };
