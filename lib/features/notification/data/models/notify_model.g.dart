// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notify_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

NotifyModel _$NotifyModelFromJson(Map<String, dynamic> json) => NotifyModel(
      id: (json['id'] as num).toInt(),
      user_name: json['user_name'] as String,
      profile_picture_url: json['profile_picture_url'] as String,
      message: json['message'] as String,
      is_read: json['is_read'] as bool,
      created_at: json['created_at'] as String,
    );

Map<String, dynamic> _$NotifyModelToJson(NotifyModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'user_name': instance.user_name,
      'profile_picture_url': instance.profile_picture_url,
      'message': instance.message,
      'is_read': instance.is_read,
      'created_at': instance.created_at,
    };
