import 'package:hive_flutter/hive_flutter.dart';
import 'package:auto_mappr_annotation/auto_mappr_annotation.dart';

import '../../data/models/vendorbalance_model.dart';

part 'vendorbalance_entity.g.dart';

@HiveType(typeId: 44)
@AutoMappr([
  MapType<VendorBalanceModel, VendorBalanceEntity>(),
])
class VendorBalanceEntity extends $VendorBalanceEntity {
  @HiveField(0)
  final num curr_balance;

  @HiveField(1)
  final num total_balance;

  VendorBalanceEntity({
    required this.curr_balance,
    required this.total_balance,
  });

  factory VendorBalanceEntity.fromModel(VendorBalanceModel model) =>
      const $VendorBalanceEntity()
          .convert<VendorBalanceModel, VendorBalanceEntity>(model);

  // Static serialization methods for nested objects
}
