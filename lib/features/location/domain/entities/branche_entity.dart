// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:auto_mappr_annotation/auto_mappr_annotation.dart';
import 'package:hive_flutter/hive_flutter.dart';

import 'package:prezza/features/location/data/models/branche_model.dart';

part 'branche_entity.g.dart';

@HiveType(typeId: 59)
@AutoMappr([
  MapType<BrancheModel, BrancheEntity>(),
])
class BrancheEntity extends $BrancheEntity {
  @HiveField(0)
  final String branch_address;

  @HiveField(1)
  final String branch_landmark;

  @HiveField(2)
  final double longitude;

  @HiveField(3)
  final double latitude;
  @HiveField(4)
  final String branch_uuid;

  BrancheEntity({
    required this.branch_address,
    required this.branch_landmark,
    required this.longitude,
    required this.latitude,
    required this.branch_uuid,
  });

  factory BrancheEntity.empty() => BrancheEntity(
        branch_address: '',
        branch_landmark: '',
        longitude: 0.0,
        latitude: 0.0,
        branch_uuid: '',
      );

  factory BrancheEntity.fromModel(BrancheModel model) =>
      const $BrancheEntity().convert<BrancheModel, BrancheEntity>(model);

  // Static serialization methods for nested objects
}
