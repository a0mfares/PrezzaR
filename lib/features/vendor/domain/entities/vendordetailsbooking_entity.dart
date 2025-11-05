import 'package:hive_flutter/hive_flutter.dart';
import 'package:auto_mappr_annotation/auto_mappr_annotation.dart';

import '../../data/models/vendordetailsbooking_model.dart';

part 'vendordetailsbooking_entity.g.dart';

@HiveType(typeId: 75)
@AutoMappr([
  MapType<VendorDetailsBookingModel, VendorDetailsBookingEntity>(),
])
class VendorDetailsBookingEntity extends $VendorDetailsBookingEntity {
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
  final double distance_in_kilo_meters;

  VendorDetailsBookingEntity({
    required this.id,
    required this.service,
    required this.business_name,
    required this.description,
    required this.business_logo,
    required this.bussiness_avg_stars,
    required this.num_of_reviews,
    required this.distance_in_kilo_meters,
  });

  factory VendorDetailsBookingEntity.empty()=> VendorDetailsBookingEntity(
    id: 0,
    service: '',
    business_name: '',
    description: '',
    business_logo: '',
    bussiness_avg_stars: 0,
    num_of_reviews: 0,
    distance_in_kilo_meters: 0.0,
  );

  factory VendorDetailsBookingEntity.fromModel(
          VendorDetailsBookingModel model) =>
      const $VendorDetailsBookingEntity()
          .convert<VendorDetailsBookingModel, VendorDetailsBookingEntity>(
              model);

  // Static serialization methods for nested objects
}
