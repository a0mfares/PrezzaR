import 'package:hive_flutter/hive_flutter.dart';
import 'package:auto_mappr_annotation/auto_mappr_annotation.dart';

import '../../data/models/notify_model.dart';

part 'notify_entity.g.dart';

@HiveType(typeId: 12)
@AutoMappr([
  MapType<NotifyModel, NotifyEntity>(),
])
class NotifyEntity extends $NotifyEntity {
  @HiveField(0)
  final int id;

  @HiveField(1)
  final String user_name;

  @HiveField(2)
  final String profile_picture_url;

  @HiveField(3)
  final String message;

  @HiveField(4)
  final bool is_read;

  @HiveField(5)
  final String created_at;

  NotifyEntity({
    required this.id,
    required this.user_name,
    required this.profile_picture_url,
    required this.message,
    required this.is_read,
    required this.created_at,
  });

  factory NotifyEntity.fromModel(NotifyModel model) =>
      const $NotifyEntity().convert<NotifyModel, NotifyEntity>(model);

  // Static serialization methods for nested objects
}
