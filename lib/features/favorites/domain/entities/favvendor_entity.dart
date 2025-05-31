import 'package:hive/hive.dart';
import 'package:auto_mappr_annotation/auto_mappr_annotation.dart';

import '../../data/models/favvendor_model.dart';

part 'favvendor_entity.g.dart';

@HiveType(typeId: 95)
@AutoMappr([
  MapType<FavVendorModel, FavVendorEntity>(),
])
class FavVendorEntity extends $FavVendorEntity {
  @HiveField(0)
  final String uuid;

  @HiveField(1)
  final String bussiness_category;

  @HiveField(2)
  final String bussiness_name;

  @HiveField(3)
  final int bussiness_avg_stars;

  @HiveField(4)
  final int num_of_reviews;

  @HiveField(5)
  final String bussiness_logo;

  FavVendorEntity({
    required this.uuid,
    required this.bussiness_category,
    required this.bussiness_name,
    required this.bussiness_avg_stars,
    required this.num_of_reviews,
    required this.bussiness_logo,
  });

  factory FavVendorEntity.fromModel(FavVendorModel model) =>
      const $FavVendorEntity().convert<FavVendorModel, FavVendorEntity>(model);

  // Static serialization methods for nested objects
}
