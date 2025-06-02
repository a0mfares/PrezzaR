import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:prezza/features/landing/domain/entities/faq_entity.dart';

part 'faq_model.g.dart';

@JsonSerializable()
class FaqModel extends FaqEntity {
  FaqModel({
    required super.question,
    required super.issue,
    required super.index,
  });

  factory FaqModel.fromMap(Map<String, dynamic> json) =>
      _$FaqModelFromJson(json);
}
