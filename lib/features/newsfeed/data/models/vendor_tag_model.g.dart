// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vendor_tag_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

VendorTagModel _$VendorTagModelFromJson(Map<String, dynamic> json) =>
    VendorTagModel(
      bussiness_id: (json['bussiness_id'] as num).toInt(),
      business_name: json['business_name'] as String,
    );

Map<String, dynamic> _$VendorTagModelToJson(VendorTagModel instance) =>
    <String, dynamic>{
      'bussiness_id': instance.bussiness_id,
      'business_name': instance.business_name,
    };
