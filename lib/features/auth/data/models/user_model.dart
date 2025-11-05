import 'package:json_annotation/json_annotation.dart';
import '../../domain/entities/user_entity.dart';

part 'user_model.g.dart';

@JsonSerializable()
class UserModel extends UserEntity {
  UserModel({
    required super.user,
    required super.tokens,
  });

  factory UserModel.fromMap(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);

  Map<String, dynamic> toMap() => _$UserModelToJson(this);
}
