import 'package:json_annotation/json_annotation.dart';

import '../../domain/entities/productsearch_entity.dart';

part 'productsearch_model.g.dart';

@JsonSerializable()
class ProductSearchModel extends ProductSearchEntity {
  ProductSearchModel({required super.uuid, required super.name});
  factory ProductSearchModel.fromJson(Map<String, dynamic> json) =>
      _$ProductSearchModelFromJson(json);
}
