import 'package:hive/hive.dart';
import 'package:auto_mappr_annotation/auto_mappr_annotation.dart';

import '../../data/models/vendorcard_model.dart';

part 'vendorcard_entity.g.dart';

@HiveType(typeId: 16)
@AutoMappr([
  MapType<VendorCardModel, VendorCardEntity>(),
])
class VendorCardEntity extends $VendorCardEntity {
  @HiveField(0)
  final String bank_name;

  @HiveField(1)
  final String card_holder_name;

  @HiveField(2)
  final String card_last_four_digits;

  VendorCardEntity({
    required this.bank_name,
    required this.card_holder_name,
    required this.card_last_four_digits,
  });

  factory VendorCardEntity.fromModel(VendorCardModel model) =>
      const $VendorCardEntity()
          .convert<VendorCardModel, VendorCardEntity>(model);

  // Static serialization methods for nested objects
}
