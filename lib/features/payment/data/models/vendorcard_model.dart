import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:prezza/features/payment/domain/entities/vendorcard_entity.dart';

part 'vendorcard_model.g.dart';

@JsonSerializable()
class VendorCardModel extends VendorCardEntity {
  VendorCardModel(
      {required super.bank_name,
      required super.card_holder_name,
      required super.card_last_four_digits});

  factory VendorCardModel.fromMap(Map<String, dynamic> json) =>
      _$VendorCardModelFromJson(json);
}
