// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_like_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserLikeModel _$UserLikeModelFromJson(Map<String, dynamic> json) =>
    UserLikeModel(
      uuid: json['uuid'] as String,
      user_info: UserLikeEntity.user_infoFromMap(
          json['user_info'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$UserLikeModelToJson(UserLikeModel instance) =>
    <String, dynamic>{
      'uuid': instance.uuid,
      'user_info': UserLikeEntity.user_infoToMap(instance.user_info),
    };
