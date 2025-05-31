import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/entities/user_search_entity.dart';

part 'user_search_model.g.dart';

@JsonSerializable()
class UserSearchModel extends UserSearchEntity {
  UserSearchModel({
    required super.uuid,
    required super.username,
    required super.user_type,
  });

  factory UserSearchModel.fromMap(Map<String, dynamic> json) =>
      _$UserSearchModelFromJson(json);

  Map<String, dynamic> toMap() => _$UserSearchModelToJson(this);
}
