import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/entities/vendor_tag_entity.dart';

part 'vendor_tag_model.g.dart';

@JsonSerializable()
class VendorTagModel extends VendorTagEntity {
  VendorTagModel({
    required super.bussiness_id,
    required super.business_name,
  });

  factory VendorTagModel.fromMap(Map<String, dynamic> json) =>
      _$VendorTagModelFromJson(json);

  Map<String, dynamic> toMap() => _$VendorTagModelToJson(this);
}
