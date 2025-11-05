// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sponsors_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SponsorsModel _$SponsorsModelFromJson(Map<String, dynamic> json) =>
    SponsorsModel(
      uuid: json['uuid'] as String,
      image: json['image'] as String,
      end_date: json['end_date'] as String,
    );

Map<String, dynamic> _$SponsorsModelToJson(SponsorsModel instance) =>
    <String, dynamic>{
      'uuid': instance.uuid,
      'image': instance.image,
      'end_date': instance.end_date,
    };
