import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:prezza/features/vendor/domain/entities/vendoritem_entity.dart';

part 'vendoritem_model.g.dart';

@JsonSerializable()
class VendorItemModel extends VendorItemEntity {
  VendorItemModel({
    required super.bussiness_name,
    required super.bussiness_avg_stars,
    required super.num_of_reviews,
    required super.bussiness_logo,
    required super.bussiness_id,
    required super.distance_in_kilo_meters,
    super.is_fav,
  });

  factory VendorItemModel.fromJson(Map<String, dynamic> json) =>
      _$VendorItemModelFromJson(json);
}
