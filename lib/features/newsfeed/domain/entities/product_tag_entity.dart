import 'package:hive_flutter/hive_flutter.dart';
import 'package:auto_mappr_annotation/auto_mappr_annotation.dart';

import '../../data/models/product_tag_model.dart';

part 'product_tag_entity.g.dart';

@HiveType(typeId: 3)
@AutoMappr([
  MapType<ProductTagModel, ProductTagEntity>(),
])
class ProductTagEntity extends $ProductTagEntity {
  @HiveField(0)
  final String uuid;

  @HiveField(1)
  final String name;

  ProductTagEntity({
    required this.uuid,
    required this.name,
  });

  factory ProductTagEntity.fromModel(ProductTagModel model) =>
      const $ProductTagEntity()
          .convert<ProductTagModel, ProductTagEntity>(model);

  factory ProductTagEntity.empty() => ProductTagEntity(
        uuid: '',
        name: '',
      );
}
