import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:prezza/features/landing/domain/entities/downloadplatforms_entity.dart';

part 'downloadplatforms_model.g.dart';

@JsonSerializable()
class DownloadPlatformsModel extends DownloadPlatformsEntity {
  DownloadPlatformsModel({
    required super.platform_name,
    required super.platform_icon,
    required super.download_url,
  });
  factory DownloadPlatformsModel.fromMap(Map<String, dynamic> json) =>
      _$DownloadPlatformsModelFromJson(json);
}
