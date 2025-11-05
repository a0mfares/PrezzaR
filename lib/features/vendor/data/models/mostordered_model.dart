import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:prezza/features/vendor/domain/entities/mostordered_entity.dart';

part 'mostordered_model.g.dart';


@JsonSerializable()
class MostOrderedModel extends MostOrderedEntity {
  MostOrderedModel(
      {required super.product__name,
      required super.product__uuid,
      required super.product__main_image,
      required super.order_count});

  factory MostOrderedModel.fromMap(Map<String, dynamic> json) =>
      _$MostOrderedModelFromJson(json);
}
