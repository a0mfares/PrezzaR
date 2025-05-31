// ignore_for_file: non_constant_identifier_names

import 'package:hive_flutter/hive_flutter.dart';
import 'package:auto_mappr_annotation/auto_mappr_annotation.dart';

import '../../data/models/vendor_tag_model.dart';

part 'vendor_tag_entity.g.dart';

@HiveType(typeId: 3)
@AutoMappr([
  MapType<VendorTagModel, VendorTagEntity>(),
])
class VendorTagEntity extends $VendorTagEntity {
  @HiveField(0)
  final int bussiness_id;

  @HiveField(1)
  final String business_name;

  VendorTagEntity({
    required this.bussiness_id,
    required this.business_name,
  });

  factory VendorTagEntity.fromModel(VendorTagModel model) =>
      const $VendorTagEntity().convert<VendorTagModel, VendorTagEntity>(model);

  factory VendorTagEntity.empty() => VendorTagEntity(
        bussiness_id: 0,
        business_name: '',
      );
}
