import 'package:hive/hive.dart';
import 'package:auto_mappr_annotation/auto_mappr_annotation.dart';

import '../../data/models/productsearch_model.dart';

part 'productsearch_entity.g.dart';

@HiveType(typeId: 39)
@AutoMappr([
  MapType<ProductSearchModel, ProductSearchEntity>(),
])
class ProductSearchEntity extends $ProductSearchEntity {
  @HiveField(0)
  final String uuid;

  @HiveField(1)
  final String name;

  ProductSearchEntity({
    required this.uuid,
    required this.name,
  });

  factory ProductSearchEntity.fromModel(ProductSearchModel model) =>
      const $ProductSearchEntity()
          .convert<ProductSearchModel, ProductSearchEntity>(model);

  // Static serialization methods for nested objects
}
