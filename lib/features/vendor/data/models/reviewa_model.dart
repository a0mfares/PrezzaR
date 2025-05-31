import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:prezza/features/vendor/domain/entities/reviewa_entity.dart';

part 'reviewa_model.g.dart';

@JsonSerializable()
class ReviewAModel extends ReviewAEntity {
  ReviewAModel({required super.total_reviews, required super.average_stars});

  factory ReviewAModel.fromMap(Map<String, dynamic> json) =>
      _$ReviewAModelFromJson(json);
}
