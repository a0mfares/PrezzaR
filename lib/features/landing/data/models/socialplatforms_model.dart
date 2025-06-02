import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:prezza/features/landing/domain/entities/socialplatforms_entity.dart';

part 'socialplatforms_model.g.dart';

@JsonSerializable()
class SocialPlatformsModel extends SocialPlatformsEntity {
  SocialPlatformsModel(
      {required super.platform_icon, required super.platform_url});

  factory SocialPlatformsModel.fromMap(Map<String, dynamic> json) =>
      _$SocialPlatformsModelFromJson(json);
}
