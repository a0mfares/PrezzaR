import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:prezza/features/order/domain/entities/orderbooking_entity.dart';

part 'orderbooking_model.g.dart';

@JsonSerializable()
class OrderBookingModel extends OrderBookingEntity {
  OrderBookingModel(
      {required super.uuid,
      required super.arrival_date,
      super.customer_phone,
      required super.number_of_seats,
      required super.branch_info});

  factory OrderBookingModel.fromMap(Map<String, dynamic> json) =>
      _$OrderBookingModelFromJson(json);
}
