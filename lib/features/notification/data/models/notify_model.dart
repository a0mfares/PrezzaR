import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:prezza/features/notification/domain/entities/notify_entity.dart';

part 'notify_model.g.dart';

@JsonSerializable()
class NotifyModel extends NotifyEntity {
  NotifyModel(
      {required super.id,
      required super.user_name,
      required super.profile_picture_url,
      required super.message,
      required super.is_read,
      required super.created_at});

  factory NotifyModel.fromMap(Map<String, dynamic> json) =>
      _$NotifyModelFromJson(json);
}
