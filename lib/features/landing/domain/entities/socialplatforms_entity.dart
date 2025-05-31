import 'package:hive/hive.dart';
import 'package:auto_mappr_annotation/auto_mappr_annotation.dart';
import 'package:prezza/features/landing/data/models/socialplatforms_model.dart';

part 'socialplatforms_entity.g.dart';

@HiveType(typeId: 10)
@AutoMappr([
  MapType<SocialPlatformsModel, SocialPlatformsEntity>(),
])
class SocialPlatformsEntity extends $SocialPlatformsEntity {
  @HiveField(0)
  final String platform_icon;

  @HiveField(1)
  final String platform_url;

  SocialPlatformsEntity({
    required this.platform_icon,
    required this.platform_url,
  });

  factory SocialPlatformsEntity.fromModel(SocialPlatformsEntity model) =>
      const $SocialPlatformsEntity()
          .convert<SocialPlatformsEntity, SocialPlatformsEntity>(model);

  // Static serialization methods for nested objects
}
