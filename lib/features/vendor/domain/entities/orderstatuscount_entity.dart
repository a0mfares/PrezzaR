import 'package:hive/hive.dart';
import 'package:auto_mappr_annotation/auto_mappr_annotation.dart';

import '../../data/models/orderstatuscount_model.dart';

part 'orderstatuscount_entity.g.dart';

@HiveType(typeId: 85)
@AutoMappr([
  MapType<OrderStatusCountModel, OrderStatusCountEntity>(),
])
class OrderStatusCountEntity extends $OrderStatusCountEntity {
  @HiveField(0)
  final num pending_orders;

  @HiveField(1)
  final num running_orders;

  OrderStatusCountEntity({
    required this.pending_orders,
    required this.running_orders,
  });

  factory OrderStatusCountEntity.fromModel(OrderStatusCountModel model) =>
      const $OrderStatusCountEntity()
          .convert<OrderStatusCountModel, OrderStatusCountEntity>(model);

  // Static serialization methods for nested objects
}
