import 'package:hive/hive.dart';
import 'package:auto_mappr_annotation/auto_mappr_annotation.dart';

import '../../data/models/orderitem_model.dart';

part 'orderitem_entity.g.dart';

@HiveType(typeId: 31)
@AutoMappr([
  MapType<OrderVendorItemModel, OrderVendorItemEntity>(),
])
class OrderVendorItemEntity extends $OrderVendorItemEntity {
  @HiveField(0)
  final String order_uuid;

  @HiveField(1)
  final String order_type;

  @HiveField(2)
  final String customer_name;

  @HiveField(3)
  final String showen_id;

  @HiveField(4)
  final double total_price;

  OrderVendorItemEntity({
    required this.order_uuid,
    required this.order_type,
    required this.customer_name,
    required this.showen_id,
    required this.total_price,
  });

  factory OrderVendorItemEntity.fromModel(OrderVendorItemModel model) =>
      const $OrderVendorItemEntity()
          .convert<OrderVendorItemModel, OrderVendorItemEntity>(model);

  // Static serialization methods for nested objects
}
