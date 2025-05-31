import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/entities/post_entity.dart';

part 'post_model.g.dart';

@JsonSerializable()
class PostModel extends PostEntity {
  PostModel({
    required super.uuid,
    required super.contant,
    required super.number_of_likes,
    required super.number_of_comments,
    required super.created_at,
    required super.auther_info,
    required super.post_tags,
    required super.post_images,
  });

  factory PostModel.fromMap(Map<String, dynamic> json) =>
      _$PostModelFromJson(json);

  Map<String, dynamic> toMap() => _$PostModelToJson(this);
}
