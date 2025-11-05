import '../../data/models/review_model.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:auto_mappr_annotation/auto_mappr_annotation.dart';

part 'review_entity.g.dart';

@HiveType(typeId: 3)
@AutoMappr([
  MapType<ReviewModel, ReviewEntity>(),
])
class ReviewEntity extends $ReviewEntity {
  @HiveField(0)
  final String review;

  @HiveField(1)
  final int stars;

  @HiveField(2)
  final String? image;

  @HiveField(3)
  final String created_at;

  @HiveField(4)
  final String reviwer_profile_picture;

  ReviewEntity({
    required this.review,
    required this.stars,
    this.image,
    required this.created_at,
    required this.reviwer_profile_picture,
  });

  factory ReviewEntity.fromModel(ReviewModel model) =>
      const $ReviewEntity().convert<ReviewModel, ReviewEntity>(model);

  factory ReviewEntity.empty() => ReviewEntity(
        review: '',
        stars: 0,
        image: null,
        created_at: '',
        reviwer_profile_picture: '',
      );
}
