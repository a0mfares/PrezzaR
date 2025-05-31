// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'branche_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BrancheModel _$BrancheModelFromJson(Map<String, dynamic> json) => BrancheModel(
      branch_address: json['branch_address'] as String,
      branch_landmark: json['branch_landmark'] as String,
      longitude: (json['longitude'] as num).toDouble(),
      latitude: (json['latitude'] as num).toDouble(),
      id: (json['id'] as num?)?.toInt(),
    );

Map<String, dynamic> _$BrancheModelToJson(BrancheModel instance) =>
    <String, dynamic>{
      'branch_address': instance.branch_address,
      'branch_landmark': instance.branch_landmark,
      'longitude': instance.longitude,
      'latitude': instance.latitude,
      'id': instance.id,
    };
