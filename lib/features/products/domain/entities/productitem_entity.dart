import 'package:hive/hive.dart';
import 'package:auto_mappr_annotation/auto_mappr_annotation.dart';
import 'package:prezza/features/products/data/models/productitem_model.dart';

part 'productitem_entity.g.dart';

@HiveType(typeId: 1)
@AutoMappr([
  MapType<ProductItemModel, ProductItemEntity>(),
])
class ProductItemEntity extends $ProductItemEntity {
  @HiveField(0)
  final String uuid;

  @HiveField(1)
  final String name;

  @HiveField(2)
  final String description;

  @HiveField(3)
  final String? main_image;

  @HiveField(4)
  final String price_range;
  @HiveField(5)
  final bool? is_fav;

  ProductItemEntity({
    required this.uuid,
    required this.name,
    this.is_fav,
    required this.description,
    required this.main_image,
    required this.price_range,
  });

  factory ProductItemEntity.empty() => ProductItemEntity(
        uuid: '',
        name: '',
        description: '',
        main_image: '',
        price_range: '',
      );

  factory ProductItemEntity.fromModel(ProductItemModel model) =>
      const $ProductItemEntity()
          .convert<ProductItemModel, ProductItemEntity>(model);

  // Static serialization methods for nested objects
}
