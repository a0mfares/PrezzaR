import '../../data/models/comment_model.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:auto_mappr_annotation/auto_mappr_annotation.dart';

part 'comment_entity.g.dart';

@HiveType(typeId: 3)
@AutoMappr([
  MapType<CommentModel, CommentEntity>(),
])
class CommentEntity extends $CommentEntity {
  @HiveField(0)
  final String uuid;

  @HiveField(1)
  final String content;

  @HiveField(2)
  final int? number_of_likes;

  @HiveField(3)
  final int? number_of_replies;

  @HiveField(4)
  final String created_at;

  @HiveField(5)
  final bool? is_i_comment_owner;

  @HiveField(7)
  final bool? is_i_replay_owner;

  @HiveField(6)
  @JsonKey(fromJson: user_infoFromMap, toJson: user_infoToMap)
  final UserInfoEntity user_info;

  CommentEntity({
    required this.uuid,
    required this.content,
    this.number_of_likes,
    this.number_of_replies,
    required this.created_at,
    this.is_i_comment_owner,
    this.is_i_replay_owner,
    required this.user_info,
  });

  factory CommentEntity.fromModel(CommentModel model) =>
      const $CommentEntity().convert<CommentModel, CommentEntity>(model);

  factory CommentEntity.empty() => CommentEntity(
        uuid: '',
        content: '',
        number_of_likes: 0,
        number_of_replies: 0,
        is_i_replay_owner: false,
        created_at: '',
        is_i_comment_owner: false,
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
