import 'package:json_annotation/json_annotation.dart';
import 'package:prezza/features/vendor/domain/entities/vendordetails_entity.dart';

part 'vendordetails_model.g.dart';

@JsonSerializable()
class VendorDetailsModel extends VendorDetailsEntity {
  VendorDetailsModel(
      {required super.id,
      required super.service,
      required super.business_name,
      required super.description,
      required super.business_logo,
      required super.bussiness_avg_stars,
      required super.num_of_reviews,
      super.booking_facilities});

  factory VendorDetailsModel.fromJson(Map<String, dynamic> json) =>
      _$VendorDetailsModelFromJson(json);
}
