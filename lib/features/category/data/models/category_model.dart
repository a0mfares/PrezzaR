import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:prezza/features/category/domain/entities/category_entity.dart';

part 'category_model.g.dart';

@JsonSerializable()
class CategoryModel extends CategoryEntity {
  CategoryModel({
    required super.id,
    required super.name,
    required super.imageUrl,
  });

  factory CategoryModel.fromMap(Map<String, dynamic> json) =>
      _$CategoryModelFromJson(json);

  Map<String, dynamic> toMap() => _$CategoryModelToJson(this);
}
