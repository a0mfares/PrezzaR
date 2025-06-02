import 'package:json_annotation/json_annotation.dart';

import '../../domain/entities/vendordetailsbooking_entity.dart';

part 'vendordetailsbooking_model.g.dart';

@JsonSerializable()
class VendorDetailsBookingModel extends VendorDetailsBookingEntity {
  VendorDetailsBookingModel({
    required super.id,
    required super.service,
    required super.business_name,
    required super.description,
    required super.business_logo,
    required super.bussiness_avg_stars,
    required super.num_of_reviews,
    required super.distance_in_kilo_meters,
  });

  factory VendorDetailsBookingModel.fromJson(Map<String, dynamic> json) =>
      _$VendorDetailsBookingModelFromJson(json);
}
