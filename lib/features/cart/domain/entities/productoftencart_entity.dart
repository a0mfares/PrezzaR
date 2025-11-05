import 'package:auto_mappr_annotation/auto_mappr_annotation.dart';
import 'package:hive_flutter/hive_flutter.dart';

import '../../data/models/productoftencart_model.dart';

part 'productoftencart_entity.g.dart';

@HiveType(typeId: 96)
@AutoMappr([
  MapType<ProductOftenCartModel, ProductOftenCartEntity>(),
])
class ProductOftenCartEntity extends $ProductOftenCartEntity {
  @HiveField(0)
  final String uuid;

  @HiveField(1)
  final String name;

  @HiveField(2)
  final String price_range;

  @HiveField(3)
  final int? smallest_size_id;

  ProductOftenCartEntity({
    required this.uuid,
    required this.name,
    required this.price_range,
    required this.smallest_size_id,
  });

  factory ProductOftenCartEntity.fromModel(ProductOftenCartModel model) =>
      const $ProductOftenCartEntity()
          .convert<ProductOftenCartModel, ProductOftenCartEntity>(model);

  // Static serialization methods for nested objects
}
