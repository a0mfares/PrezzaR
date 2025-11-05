import 'package:freezed_annotation/freezed_annotation.dart';
import '../../domain/entities/profile_social_entity.dart';

part 'profile_social_model.g.dart';

@JsonSerializable()
class ProfileSocialModel extends ProfileSocialEntity {
  ProfileSocialModel({
    required super.uuid,
    required super.full_name,
    required super.user_name,
    required super.profile_picture_url,
    required super.number_of_followers,
    required super.number_of_following,
  });

  factory ProfileSocialModel.fromMap(Map<String, dynamic> json) =>
      _$ProfileSocialModelFromJson(json);

  Map<String, dynamic> toMap() => _$ProfileSocialModelToJson(this);
}
