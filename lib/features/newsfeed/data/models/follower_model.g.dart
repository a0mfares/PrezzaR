// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'follower_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FollowerModelImpl _$$FollowerModelImplFromJson(Map<String, dynamic> json) =>
    _$FollowerModelImpl(
      followerInfo: FollowerInfoModel.fromJson(
          json['followerInfo'] as Map<String, dynamic>),
      isIFollowedHim: json['isIFollowedHim'] as bool,
      isHeFollowedMe: json['isHeFollowedMe'] as bool,
    );

Map<String, dynamic> _$$FollowerModelImplToJson(_$FollowerModelImpl instance) =>
    <String, dynamic>{
      'followerInfo': instance.followerInfo,
      'isIFollowedHim': instance.isIFollowedHim,
      'isHeFollowedMe': instance.isHeFollowedMe,
    };

_$FollowerInfoModelImpl _$$FollowerInfoModelImplFromJson(
        Map<String, dynamic> json) =>
    _$FollowerInfoModelImpl(
      uuid: json['uuid'] as String,
      fullName: json['fullName'] as String,
      userName: json['userName'] as String,
      profilePictureUrl: json['profilePictureUrl'] as String,
      numberOfFollowers: (json['numberOfFollowers'] as num).toInt(),
      numberOfFollowing: (json['numberOfFollowing'] as num).toInt(),
    );

Map<String, dynamic> _$$FollowerInfoModelImplToJson(
        _$FollowerInfoModelImpl instance) =>
    <String, dynamic>{
      'uuid': instance.uuid,
      'fullName': instance.fullName,
      'userName': instance.userName,
      'profilePictureUrl': instance.profilePictureUrl,
      'numberOfFollowers': instance.numberOfFollowers,
      'numberOfFollowing': instance.numberOfFollowing,
    };

_$FollowerListModelImpl _$$FollowerListModelImplFromJson(
        Map<String, dynamic> json) =>
    _$FollowerListModelImpl(
      status: json['status'] as String,
      data: (json['data'] as List<dynamic>)
          .map((e) => FollowerModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$FollowerListModelImplToJson(
        _$FollowerListModelImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'data': instance.data,
    };
