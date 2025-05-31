import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:prezza/features/order/domain/entities/orderdetails_entity.dart';

part 'orderdetails_model.g.dart';

@JsonSerializable()
class OrderDetailsModel extends OrderDetailsEntity {
  OrderDetailsModel(
      {required super.uuid,
      required super.size_name,
      required super.quantity,
      required super.item_total_price,
      required super.product_info,
      required super.extras,
      required super.side_items});

  factory OrderDetailsModel.fromMap(Map<String, dynamic> json) =>
      _$OrderDetailsModelFromJson(json);
}
