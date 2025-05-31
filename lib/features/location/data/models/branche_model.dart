import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/entities/branche_entity.dart';

part 'branche_model.g.dart';

@JsonSerializable()
class BrancheModel extends BrancheEntity {
  BrancheModel({
    required super.branch_address,
    required super.branch_landmark,
    required super.longitude,
    required super.latitude,
    super.id,
  });

  factory BrancheModel.fromMap(Map<String, dynamic> json) =>
      _$BrancheModelFromJson(json);
}
