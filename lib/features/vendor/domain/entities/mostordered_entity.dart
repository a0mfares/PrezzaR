import 'package:hive/hive.dart';
import 'package:auto_mappr_annotation/auto_mappr_annotation.dart';

import '../../data/models/mostordered_model.dart';

part 'mostordered_entity.g.dart';

@HiveType(typeId: 42)
@AutoMappr([
  MapType<MostOrderedModel, MostOrderedEntity>(),
])
class MostOrderedEntity extends $MostOrderedEntity {
  @HiveField(0)
  final String product__name;

  @HiveField(1)
  final String product__uuid;

  @HiveField(2)
  final String product__main_image;

  @HiveField(3)
  final num order_count;

  MostOrderedEntity({
    required this.product__name,
    required this.product__uuid,
    required this.product__main_image,
    required this.order_count,
  });

  factory MostOrderedEntity.fromModel(MostOrderedModel model) =>
      const $MostOrderedEntity()
          .convert<MostOrderedModel, MostOrderedEntity>(model);

  // Static serialization methods for nested objects
}
