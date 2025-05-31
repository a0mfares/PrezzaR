import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/entities/review_entity.dart';

part 'review_model.g.dart';

@JsonSerializable()
class ReviewModel extends ReviewEntity {
  ReviewModel({
    required super.review,
    required super.stars,
     super.image,
    required super.created_at,
    required super.reviwer_profile_picture,
  });

  factory ReviewModel.fromMap(Map<String, dynamic> json) =>
      _$ReviewModelFromJson(json);

  Map<String, dynamic> toMap() => _$ReviewModelToJson(this);
}
