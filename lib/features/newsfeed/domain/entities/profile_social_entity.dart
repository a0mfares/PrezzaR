import 'package:hive_flutter/hive_flutter.dart';
import 'package:auto_mappr_annotation/auto_mappr_annotation.dart';

import '../../data/models/profile_social_model.dart';

part 'profile_social_entity.g.dart';

@HiveType(typeId: 3)
@AutoMappr([
  MapType<ProfileSocialModel, ProfileSocialEntity>(),
])
class ProfileSocialEntity extends $ProfileSocialEntity {
  @HiveField(0)
  final String uuid;

  @HiveField(1)
  final String full_name;

  @HiveField(2)
  final String user_name;

  @HiveField(3)
  final String profile_picture_url;

  @HiveField(4)
  final int number_of_followers;

  @HiveField(5)
  final int number_of_following;

  ProfileSocialEntity({
    required this.uuid,
    required this.full_name,
    required this.user_name,
    required this.profile_picture_url,
    required this.number_of_followers,
    required this.number_of_following,
  });

  factory ProfileSocialEntity.fromModel(ProfileSocialModel model) =>
      const $ProfileSocialEntity()
          .convert<ProfileSocialModel, ProfileSocialEntity>(model);

  factory ProfileSocialEntity.empty() => ProfileSocialEntity(
        uuid: '',
        full_name: '',
        user_name: '',
        profile_picture_url: '',
        number_of_followers: 0,
        number_of_following: 0,
      );
}
