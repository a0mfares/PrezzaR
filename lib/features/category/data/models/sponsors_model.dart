import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:prezza/features/category/domain/entities/sponsors_entity.dart';

part 'sponsors_model.g.dart';

@JsonSerializable()
class SponsorsModel extends SponsorsEntity {
  SponsorsModel(
      {required super.uuid, required super.image, required super.end_date});

  factory SponsorsModel.fromJson(Map<String, dynamic> json) =>
      _$SponsorsModelFromJson(json);

  Map<String, dynamic> toMap() => _$SponsorsModelToJson(this);
}
