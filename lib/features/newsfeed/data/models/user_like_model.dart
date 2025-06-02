import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/entities/user_like_entity.dart';

part 'user_like_model.g.dart';

@JsonSerializable()
class UserLikeModel extends UserLikeEntity {
  UserLikeModel({
    required super.uuid,
    required super.user_info,
  });

  factory UserLikeModel.fromMap(Map<String, dynamic> json) =>
      _$UserLikeModelFromJson(json);

  Map<String, dynamic> toMap() => _$UserLikeModelToJson(this);
}
