import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:prezza/features/order/domain/entities/orderitem_entity.dart';

part 'orderitem_model.g.dart';

@JsonSerializable()
class OrderVendorItemModel extends OrderVendorItemEntity {
  OrderVendorItemModel(
      {required super.order_uuid,
      required super.order_type,
      required super.customer_name,
      required super.showen_id,
      required super.total_price});

  factory OrderVendorItemModel.fromMap(Map<String, dynamic> json) =>
      _$OrderVendorItemModelFromJson(json);
}
