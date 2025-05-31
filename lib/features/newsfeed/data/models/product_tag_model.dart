import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/entities/product_tag_entity.dart';

part 'product_tag_model.g.dart';

@JsonSerializable()
class ProductTagModel extends ProductTagEntity {
  ProductTagModel({
    required super.uuid,
    required super.name,
  });

  factory ProductTagModel.fromMap(Map<String, dynamic> json) =>
      _$ProductTagModelFromJson(json);

  Map<String, dynamic> toMap() => _$ProductTagModelToJson(this);
}
