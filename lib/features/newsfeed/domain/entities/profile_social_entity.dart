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
  @HiveField(6)
  final String? bio;
  @HiveField(7)
  final bool? is_following;

  ProfileSocialEntity({
    required this.uuid,
    required this.full_name,
    required this.user_name,
    required this.profile_picture_url,
    required this.number_of_followers,
    required this.number_of_following,
    this.bio,
    this.is_following,
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
        bio: null,
        is_following: null,
      );

  ProfileSocialEntity copyWith({
    String? uuid,
    String? full_name,
    String? user_name,
    String? profile_picture_url,
    int? number_of_followers,
    int? number_of_following,
    String? bio,
    bool? is_following,
  }) {
    return ProfileSocialEntity(
      uuid: uuid ?? this.uuid,
      full_name: full_name ?? this.full_name,
      user_name: user_name ?? this.user_name,
      profile_picture_url: profile_picture_url ?? this.profile_picture_url,
      number_of_followers: number_of_followers ?? this.number_of_followers,
      number_of_following: number_of_following ?? this.number_of_following,
      bio: bio ?? this.bio,
      is_following: is_following ?? this.is_following,
    );
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is ProfileSocialEntity &&
        other.uuid == uuid &&
        other.full_name == full_name &&
        other.user_name == user_name &&
        other.profile_picture_url == profile_picture_url &&
        other.number_of_followers == number_of_followers &&
        other.number_of_following == number_of_following &&
        other.bio == bio &&
        other.is_following == is_following;
  }

  @override
  int get hashCode {
    return Object.hash(
      uuid,
      full_name,
      user_name,
      profile_picture_url,
      number_of_followers,
      number_of_following,
      bio,
      is_following,
    );
  }

  @override
  String toString() {
    return 'ProfileSocialEntity('
        'uuid: $uuid, '
        'full_name: $full_name, '
        'user_name: $user_name, '
        'profile_picture_url: $profile_picture_url, '
        'number_of_followers: $number_of_followers, '
        'number_of_following: $number_of_following, '
        'bio: $bio, '
        'is_following: $is_following'
        ')';
  }
}
