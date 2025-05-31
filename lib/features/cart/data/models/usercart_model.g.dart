// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'usercart_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserCartModel _$UserCartModelFromJson(Map<String, dynamic> json) =>
    UserCartModel(
      uuid: json['uuid'] as String,
      bussiness_info: Bussiness_info.fromMap(
          json['bussiness_info'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$UserCartModelToJson(UserCartModel instance) =>
    <String, dynamic>{
      'uuid': instance.uuid,
      'bussiness_info':
          UserCartEntity.bussiness_infoToMap(instance.bussiness_info),
    };
