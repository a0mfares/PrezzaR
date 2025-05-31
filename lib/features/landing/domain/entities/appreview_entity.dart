import 'package:hive/hive.dart';
import 'package:auto_mappr_annotation/auto_mappr_annotation.dart';

import '../../data/models/appreview_model.dart';

part 'appreview_entity.g.dart';

@HiveType(typeId: 36)
@AutoMappr([
  MapType<AppReviewModel, AppReviewEntity>(),
])
class AppReviewEntity extends $AppReviewEntity {
  @HiveField(0)
  final String review;

  @HiveField(1)
  final num stars;

  AppReviewEntity({
    required this.review,
    required this.stars,
  });

  factory AppReviewEntity.fromModel(AppReviewModel model) =>
      const $AppReviewEntity().convert<AppReviewModel, AppReviewEntity>(model);

  // Static serialization methods for nested objects
}
