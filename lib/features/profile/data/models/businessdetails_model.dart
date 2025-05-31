import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:prezza/features/profile/domain/entities/businessdetails_entity.dart';

import '../../../category/data/models/category_model.dart';

part 'businessdetails_model.g.dart';

@JsonSerializable()
class BusinessDetailsModel extends BusinessDetailsEntity {
  BusinessDetailsModel(
      {required super.business_name,
      required super.branches,
      required super.vendor_role,
      required super.description,
      required super.operating_hours_from,
      required super.operating_hours_to,
      required super.has_booking,
      required super.service,
      required super.business_logo,
      required super.business_category});

  factory BusinessDetailsModel.fromMpa(Map<String, dynamic> json) =>
      _$BusinessDetailsModelFromJson(json);
}
