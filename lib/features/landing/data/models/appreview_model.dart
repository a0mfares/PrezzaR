import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:prezza/features/landing/domain/entities/appreview_entity.dart';

part 'appreview_model.g.dart';

@JsonSerializable()
class AppReviewModel extends AppReviewEntity {
  AppReviewModel({required super.review, required super.stars});

  factory AppReviewModel.fromMap(Map<String, dynamic> json) =>
      _$AppReviewModelFromJson(json);
}
