import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:prezza/features/vendor/domain/entities/orderstatuscount_entity.dart';

part 'orderstatuscount_model.g.dart';

@JsonSerializable()
class OrderStatusCountModel extends OrderStatusCountEntity {
  OrderStatusCountModel(
      {required super.pending_orders, required super.running_orders});

  factory OrderStatusCountModel.fromMap(Map<String, dynamic> json) =>
      _$OrderStatusCountModelFromJson(json);
}
