// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vendorsearch_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

VendorSearchModel _$VendorSearchModelFromJson(Map<String, dynamic> json) =>
    VendorSearchModel(
      bussiness_id: (json['bussiness_id'] as num).toInt(),
      business_name: json['business_name'] as String,
    );

Map<String, dynamic> _$VendorSearchModelToJson(VendorSearchModel instance) =>
    <String, dynamic>{
      'bussiness_id': instance.bussiness_id,
      'business_name': instance.business_name,
    };
