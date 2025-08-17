import 'package:freezed_annotation/freezed_annotation.dart';

part 'follower_entity.freezed.dart';

@freezed
class FollowerEntity with _$FollowerEntity {
  const factory FollowerEntity({
    required FollowerInfoEntity followerInfo,
    required bool isIFollowedHim,
    required bool isHeFollowedMe,
  }) = _FollowerEntity;

  factory FollowerEntity.empty() => FollowerEntity(
        followerInfo: FollowerInfoEntity.empty(),
        isIFollowedHim: false,
        isHeFollowedMe: false,
      );
}

@freezed
class FollowerInfoEntity with _$FollowerInfoEntity {
  const factory FollowerInfoEntity({
    required String uuid,
    required String fullName,
    required String userName,
    required String profilePictureUrl,
    required int numberOfFollowers,
    required int numberOfFollowing,
  }) = _FollowerInfoEntity;

  factory FollowerInfoEntity.empty() => const FollowerInfoEntity(
        uuid: '',
        fullName: '',
        userName: '',
        profilePictureUrl: '',
        numberOfFollowers: 0,
        numberOfFollowing: 0,
      );
}

@freezed
class FollowerListEntity with _$FollowerListEntity {
  const factory FollowerListEntity({
    required String status,
    required List<FollowerEntity> data,
  }) = _FollowerListEntity;

  factory FollowerListEntity.empty() => const FollowerListEntity(
        status: '',
        data: [],
      );
}
