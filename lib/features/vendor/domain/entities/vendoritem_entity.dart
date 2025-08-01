import 'package:hive/hive.dart';
import 'package:auto_mappr_annotation/auto_mappr_annotation.dart';

import '../../data/models/vendoritem_model.dart';

part 'vendoritem_entity.g.dart';

@HiveType(typeId: 15)
@AutoMappr([
  MapType<VendorItemModel, VendorItemEntity>(),
])
class VendorItemEntity extends $VendorItemEntity {
  @HiveField(0)
  final String bussiness_name;

  @HiveField(1)
  final int bussiness_avg_stars;

  @HiveField(2)
  final int num_of_reviews;

  @HiveField(3)
  final String bussiness_logo;

  @HiveField(4)
  final int bussiness_id;

  @HiveField(5)
  final bool? is_fav;

  @HiveField(6)
  final double distance_in_kilo_meters;

  @HiveField(7)
  final String uuid;

  VendorItemEntity(
      {required this.bussiness_name,
      required this.bussiness_avg_stars,
      required this.num_of_reviews,
      required this.bussiness_logo,
      required this.bussiness_id,
      this.is_fav,
      required this.distance_in_kilo_meters,
      required this.uuid});

  factory VendorItemEntity.fromModel(VendorItemModel model) =>
      const $VendorItemEntity()
          .convert<VendorItemModel, VendorItemEntity>(model);

  // Static serialization methods for nested objects
}
