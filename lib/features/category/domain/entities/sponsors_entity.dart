import 'package:hive/hive.dart';
import 'package:auto_mappr_annotation/auto_mappr_annotation.dart';

import '../../data/models/sponsors_model.dart';

part 'sponsors_entity.g.dart';

@HiveType(typeId: 62)
@AutoMappr([
  MapType<SponsorsModel, SponsorsEntity>(),
])
class SponsorsEntity extends $SponsorsEntity {
  @HiveField(0)
  final String uuid;

  @HiveField(1)
  final String image;

  @HiveField(2)
  final String end_date;

  SponsorsEntity({
    required this.uuid,
    required this.image,
    required this.end_date,
  });

  factory SponsorsEntity.fromModel(SponsorsModel model) =>
      const $SponsorsEntity().convert<SponsorsModel, SponsorsEntity>(model);

  factory SponsorsEntity.empty() =>
      SponsorsEntity(uuid: '', image: '', end_date: '');
}
