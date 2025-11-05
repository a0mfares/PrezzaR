import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/entities/comment_entity.dart';

part 'comment_model.g.dart';

@JsonSerializable()
class CommentModel extends CommentEntity {
  CommentModel({
    required super.uuid,
    required super.content,
    super.number_of_likes,
    super.number_of_replies,
    required super.created_at,
    super.is_i_replay_owner=false,
    super.is_i_comment_owner =false,
    required super.user_info,
    super.is_liked=false,

  });

  factory CommentModel.fromMap(Map<String, dynamic> json) =>
      _$CommentModelFromJson(json);

  Map<String, dynamic> toMap() => _$CommentModelToJson(this);
}
