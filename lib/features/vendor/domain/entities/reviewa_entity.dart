import 'package:hive_flutter/hive_flutter.dart';
import 'package:auto_mappr_annotation/auto_mappr_annotation.dart';

import '../../data/models/reviewa_model.dart';

part 'reviewa_entity.g.dart';

@HiveType(typeId: 78)
@AutoMappr([
  MapType<ReviewAModel, ReviewAEntity>(),
])
class ReviewAEntity extends $ReviewAEntity {
  @HiveField(0)
  final num total_reviews;

  @HiveField(1)
  final num average_stars;

  ReviewAEntity({
    required this.total_reviews,
    required this.average_stars,
  });

  factory ReviewAEntity.fromModel(ReviewAModel model) =>
      const $ReviewAEntity().convert<ReviewAModel, ReviewAEntity>(model);

  // Static serialization methods for nested objects
}
