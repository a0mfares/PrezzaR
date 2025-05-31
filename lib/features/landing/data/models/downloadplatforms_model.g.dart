// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'downloadplatforms_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DownloadPlatformsModel _$DownloadPlatformsModelFromJson(
        Map<String, dynamic> json) =>
    DownloadPlatformsModel(
      platform_name: json['platform_name'] as String,
      platform_icon: json['platform_icon'] as String,
      download_url: json['download_url'] as String,
    );

Map<String, dynamic> _$DownloadPlatformsModelToJson(
        DownloadPlatformsModel instance) =>
    <String, dynamic>{
      'platform_name': instance.platform_name,
      'platform_icon': instance.platform_icon,
      'download_url': instance.download_url,
    };
