import 'package:hive_flutter/hive_flutter.dart';
import 'package:auto_mappr_annotation/auto_mappr_annotation.dart';

import '../../data/models/vendordetails_model.dart';

part 'vendordetails_entity.g.dart';

@HiveType(typeId: 77)
@AutoMappr([
  MapType<VendorDetailsModel, VendorDetailsEntity>(),
])
class VendorDetailsEntity extends $VendorDetailsEntity {
  @HiveField(0)
  final int id;

  @HiveField(1)
  final String service;

  @HiveField(2)
  final String business_name;

  @HiveField(3)
  final String description;

  @HiveField(4)
  final String business_logo;

  @HiveField(5)
  final int bussiness_avg_stars;

  @HiveField(6)
  final int num_of_reviews;

  @HiveField(7)
  final List<String>? booking_facilities;

  VendorDetailsEntity({
    required this.id,
    required this.service,
    required this.business_name,
    required this.description,
    required this.business_logo,
    required this.bussiness_avg_stars,
    required this.num_of_reviews,
    this.booking_facilities,
  });

  factory VendorDetailsEntity.empty() => VendorDetailsEntity(
        id: 0,
        service: '',
        business_name: '',
        description: '',
        business_logo: '',
        bussiness_avg_stars: 0,
        num_of_reviews: 0,
        booking_facilities: [],
      );

  factory VendorDetailsEntity.fromModel(VendorDetailsModel model) =>
      const $VendorDetailsEntity()
          .convert<VendorDetailsModel, VendorDetailsEntity>(model);
}
