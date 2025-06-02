import 'package:hive/hive.dart';
import 'package:auto_mappr_annotation/auto_mappr_annotation.dart';
import 'package:prezza/features/payment/data/models/creditcard_model.dart';

part 'creditcard_entity.g.dart';

@HiveType(typeId: 13)
@AutoMappr([
  MapType<CreditCardModel, CreditCardEntity>(),
])
class CreditCardEntity extends $CreditCardEntity {
  @HiveField(0)
  final String uuid;

  @HiveField(1)
  final String card_holder_name;

  @HiveField(2)
  final int expiry_month;

  @HiveField(3)
  final int expiry_year;

  @HiveField(4)
  final String last_4_digits;

  CreditCardEntity({
    required this.uuid,
    required this.card_holder_name,
    required this.expiry_month,
    required this.expiry_year,
    required this.last_4_digits,
  });

  factory CreditCardEntity.fromModel(CreditCardModel model) =>
      const $CreditCardEntity()
          .convert<CreditCardModel, CreditCardEntity>(model);

  // Static serialization methods for nested objects
}
