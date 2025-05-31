import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:prezza/features/search/domain/entities/vendorsearch_entity.dart';

part 'vendorsearch_model.g.dart';

@JsonSerializable()
class VendorSearchModel extends VendorSearchEntity {
  VendorSearchModel(
      {required super.bussiness_id, required super.business_name});
  factory VendorSearchModel.fromJson(Map<String, dynamic> json) =>
      _$VendorSearchModelFromJson(json);

  Map<String, dynamic> toJson() => _$VendorSearchModelToJson(this);
}
