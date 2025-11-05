import 'package:json_annotation/json_annotation.dart';
import 'package:prezza/features/vendor/domain/entities/vendorbalance_entity.dart';

part 'vendorbalance_model.g.dart';

@JsonSerializable()
class VendorBalanceModel extends VendorBalanceEntity {
  VendorBalanceModel(
      {required super.curr_balance, required super.total_balance});

  factory VendorBalanceModel.fromMap(Map<String, dynamic> json) =>
      _$VendorBalanceModelFromJson(json);
}
