import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:prezza/features/newsfeed/domain/entities/follower_entity.dart';

part 'follower_model.freezed.dart';
part 'follower_model.g.dart';

@freezed
class FollowerModel with _$FollowerModel {
  const factory FollowerModel({
    required FollowerInfoModel followerInfo,
    required bool isIFollowedHim,
    required bool isHeFollowedMe,
  }) = _FollowerModel;

  factory FollowerModel.fromJson(Map<String, dynamic> json) =>
      _$FollowerModelFromJson(json);

  // Convert to entity
  factory FollowerModel.fromEntity(FollowerEntity entity) => FollowerModel(
        followerInfo: FollowerInfoModel.fromEntity(entity.followerInfo),
        isIFollowedHim: entity.isIFollowedHim,
        isHeFollowedMe: entity.isHeFollowedMe,
      );
}

extension FollowerModelX on FollowerModel {
  FollowerEntity toEntity() => FollowerEntity(
        followerInfo: followerInfo.toEntity(),
        isIFollowedHim: isIFollowedHim,
        isHeFollowedMe: isHeFollowedMe,
      );
}

@freezed
class FollowerInfoModel with _$FollowerInfoModel {
  const factory FollowerInfoModel({
    required String uuid,
    required String fullName,
    required String userName,
    required String profilePictureUrl,
    required int numberOfFollowers,
    required int numberOfFollowing,
  }) = _FollowerInfoModel;

  factory FollowerInfoModel.fromJson(Map<String, dynamic> json) =>
      _$FollowerInfoModelFromJson(json);

  // Convert to entity
  factory FollowerInfoModel.fromEntity(FollowerInfoEntity entity) =>
      FollowerInfoModel(
        uuid: entity.uuid,
        fullName: entity.fullName,
        userName: entity.userName,
        profilePictureUrl: entity.profilePictureUrl,
        numberOfFollowers: entity.numberOfFollowers,
        numberOfFollowing: entity.numberOfFollowing,
      );
}

extension FollowerInfoModelX on FollowerInfoModel {
  FollowerInfoEntity toEntity() => FollowerInfoEntity(
        uuid: uuid,
        fullName: fullName.trim().isEmpty ? 'Unknown User' : fullName.trim(),
        userName: userName,
        profilePictureUrl: _cleanProfilePictureUrl(profilePictureUrl),
        numberOfFollowers: numberOfFollowers,
        numberOfFollowing: numberOfFollowing,
      );

  // Helper method to clean up malformed profile picture URLs
  String _cleanProfilePictureUrl(String url) {
    if (url.isEmpty) return url;

    // Fix double-encoded URLs like in your API response
    String cleanUrl = url;

    // Remove URL encoding artifacts
    while (cleanUrl.contains('https%3A/') ||
        cleanUrl.contains('https%253A/') ||
        cleanUrl.contains('https%25253A/')) {
      cleanUrl = cleanUrl
          .replaceAll('https%3A/', 'https://')
          .replaceAll('https%253A/', 'https://')
          .replaceAll('https%25253A/', 'https://');
    }

    // Remove duplicate protocol prefixes
    if (cleanUrl.startsWith('https://https://')) {
      cleanUrl = cleanUrl.substring(8); // Remove first "https://"
    }

    return cleanUrl;
  }
}

@freezed
class FollowerListModel with _$FollowerListModel {
  const factory FollowerListModel({
    required String status,
    required List<FollowerModel> data,
  }) = _FollowerListModel;

  factory FollowerListModel.fromJson(Map<String, dynamic> json) =>
      _$FollowerListModelFromJson(json);

  // Convert to entity
  factory FollowerListModel.fromEntity(FollowerListEntity entity) =>
      FollowerListModel(
        status: entity.status,
        data: entity.data.map((e) => FollowerModel.fromEntity(e)).toList(),
      );
}

extension FollowerListModelX on FollowerListModel {
  FollowerListEntity toEntity() => FollowerListEntity(
        status: status,
        data: data.map((e) => e.toEntity()).toList(),
      );
}
