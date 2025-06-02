import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:prezza/features/payment/domain/entities/creditcard_entity.dart';

part 'creditcard_model.g.dart';

@JsonSerializable()
class CreditCardModel extends CreditCardEntity {
  CreditCardModel(
      {required super.uuid,
      required super.card_holder_name,
      required super.expiry_month,
      required super.expiry_year,
      required super.last_4_digits});

  factory CreditCardModel.fromMap(Map<String, dynamic> json) =>
      _$CreditCardModelFromJson(json);
}
