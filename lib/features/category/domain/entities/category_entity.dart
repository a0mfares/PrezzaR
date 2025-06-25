import 'package:hive/hive.dart';
import 'package:auto_mappr_annotation/auto_mappr_annotation.dart';
import '../../data/models/category_model.dart';

part 'category_entity.g.dart';

@HiveType(typeId: 53)
@AutoMappr([
  MapType<CategoryModel, CategoryEntity>(),
])
class CategoryEntity extends $CategoryEntity {
  @HiveField(0)
  final int id;

  @HiveField(1)
  final String name;

  @HiveField(2)
  final String? imageUrl;

  CategoryEntity({
    required this.id,
    required this.name,
    required this.imageUrl,
  });

  CategoryModel toModel() =>
      const $CategoryEntity().convert<CategoryEntity, CategoryModel>(this);

  factory CategoryEntity.fromModel(CategoryModel model) =>
      const $CategoryEntity().convert<CategoryModel, CategoryEntity>(model);
}
