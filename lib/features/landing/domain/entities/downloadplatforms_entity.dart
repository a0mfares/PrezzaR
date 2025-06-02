import 'package:hive/hive.dart';
import 'package:auto_mappr_annotation/auto_mappr_annotation.dart';
import 'package:prezza/features/landing/data/models/downloadplatforms_model.dart';

part 'downloadplatforms_entity.g.dart';

@HiveType(typeId: 35)
@AutoMappr([
  MapType<DownloadPlatformsModel, DownloadPlatformsEntity>(),
])
class DownloadPlatformsEntity extends $DownloadPlatformsEntity {
  @HiveField(0)
  final String platform_name;

  @HiveField(1)
  final String platform_icon;

  @HiveField(2)
  final String download_url;

  DownloadPlatformsEntity({
    required this.platform_name,
    required this.platform_icon,
    required this.download_url,
  });

  factory DownloadPlatformsEntity.fromModel(DownloadPlatformsEntity model) =>
      const $DownloadPlatformsEntity()
          .convert<DownloadPlatformsEntity, DownloadPlatformsEntity>(model);

  // Static serialization methods for nested objects
}
