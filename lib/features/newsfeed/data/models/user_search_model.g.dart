// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_search_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserSearchModel _$UserSearchModelFromJson(Map<String, dynamic> json) =>
    UserSearchModel(
      uuid: json['uuid'] as String,
      username: json['username'] as String,
      user_type: json['user_type'] as String,
    );

Map<String, dynamic> _$UserSearchModelToJson(UserSearchModel instance) =>
    <String, dynamic>{
      'uuid': instance.uuid,
      'username': instance.username,
      'user_type': instance.user_type,
    };
