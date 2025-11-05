import 'package:hive_flutter/hive_flutter.dart';
import 'package:auto_mappr_annotation/auto_mappr_annotation.dart';

import '../../data/models/vendorsearch_model.dart';

part 'vendorsearch_entity.g.dart';

@HiveType(typeId: 96)
@AutoMappr([
  MapType<VendorSearchModel, VendorSearchEntity>(),
])
class VendorSearchEntity extends $VendorSearchEntity {
  @HiveField(0)
  final int bussiness_id;

  @HiveField(1)
  final String business_name;

  VendorSearchEntity({
    required this.bussiness_id,
    required this.business_name,
  });

  factory VendorSearchEntity.fromModel(VendorSearchModel model) =>
      const $VendorSearchEntity()
          .convert<VendorSearchModel, VendorSearchEntity>(model);

  VendorSearchModel toModel() => const $VendorSearchEntity()
      .convert<VendorSearchEntity, VendorSearchModel>(this);

  // Static serialization methods for nested objects
}
