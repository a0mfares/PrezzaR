// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'address_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AddressModel _$AddressModelFromJson(Map<String, dynamic> json) => AddressModel(
      uuid: json['uuid'] as String,
      address: json['address'] as String,
      landmark: json['landmark'] as String,
      title: json['title'] as String,
    );

Map<String, dynamic> _$AddressModelToJson(AddressModel instance) =>
    <String, dynamic>{
      'uuid': instance.uuid,
      'address': instance.address,
      'landmark': instance.landmark,
      'title': instance.title,
    };
