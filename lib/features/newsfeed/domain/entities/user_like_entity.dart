import 'package:hive_flutter/hive_flutter.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:auto_mappr_annotation/auto_mappr_annotation.dart';

import '../../data/models/user_like_model.dart';

part 'user_like_entity.g.dart';

@HiveType(typeId: 3)
@AutoMappr([
  MapType<UserLikeModel, UserLikeEntity>(),
])
class UserLikeEntity extends $UserLikeEntity {
  @HiveField(0)
  final String uuid;

  @HiveField(1)
  @JsonKey(fromJson: user_infoFromMap, toJson: user_infoToMap)
  final UserInfoEntity user_info;

  UserLikeEntity({
    required this.uuid,
    required this.user_info,
  });

  factory UserLikeEntity.fromModel(UserLikeModel model) =>
      const $UserLikeEntity().convert<UserLikeModel, UserLikeEntity>(model);

  factory UserLikeEntity.empty() => UserLikeEntity(
        uuid: '',
        user_info: UserInfoEntity.empty(),
      );

  static UserInfoEntity user_infoFromMap(Map<String, dynamic> json) {
    return UserInfoEntity.fromJson(json);
  }

  static Map<String, dynamic> user_infoToMap(UserInfoEntity instance) {
    return instance.toJson();
  }
}

class UserInfoEntity {
  final String uuid;
  final String full_name;
  final String user_name;
  final String profile_picture_url;

  UserInfoEntity({
    required this.uuid,
    required this.full_name,
    required this.user_name,
    required this.profile_picture_url,
  });

  factory UserInfoEntity.empty() => UserInfoEntity(
        uuid: '',
        full_name: '',
        user_name: '',
        profile_picture_url: '',
      );

  factory UserInfoEntity.fromJson(Map<String, dynamic> json) {
    return UserInfoEntity(
      uuid: json['uuid'],
      full_name: json['full_name'],
      user_name: json['user_name'],
      profile_picture_url: json['profile_picture_url'],
    );
  }

  Map<String, dynamic> toJson() => {
        'uuid': uuid,
        'full_name': full_name,
        'user_name': user_name,
        'profile_picture_url': profile_picture_url,
      };
}
