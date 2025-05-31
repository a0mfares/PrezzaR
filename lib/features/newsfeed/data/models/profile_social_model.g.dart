// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile_social_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProfileSocialModel _$ProfileSocialModelFromJson(Map<String, dynamic> json) =>
    ProfileSocialModel(
      uuid: json['uuid'] as String,
      full_name: json['full_name'] as String,
      user_name: json['user_name'] as String,
      profile_picture_url: json['profile_picture_url'] as String,
      number_of_followers: (json['number_of_followers'] as num).toInt(),
      number_of_following: (json['number_of_following'] as num).toInt(),
    );

Map<String, dynamic> _$ProfileSocialModelToJson(ProfileSocialModel instance) =>
    <String, dynamic>{
      'uuid': instance.uuid,
      'full_name': instance.full_name,
      'user_name': instance.user_name,
      'profile_picture_url': instance.profile_picture_url,
      'number_of_followers': instance.number_of_followers,
      'number_of_following': instance.number_of_following,
    };
