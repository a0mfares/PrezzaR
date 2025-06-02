import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:prezza/features/order/domain/entities/orderpickup_entity.dart';

part 'orderpickup_model.g.dart';

@JsonSerializable()
class OrderPickupModel extends OrderPickupEntity {
  OrderPickupModel(
      {required super.uuid,
      required super.arrival_date,
      required super.customer_phone,
      required super.car});

  factory OrderPickupModel.fromMap(Map<String, dynamic> json) =>
      _$OrderPickupModelFromJson(json);
}
