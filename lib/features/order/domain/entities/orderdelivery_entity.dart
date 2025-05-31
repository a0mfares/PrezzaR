import 'package:hive/hive.dart';
import 'package:auto_mappr_annotation/auto_mappr_annotation.dart';

import '../../data/models/orderdelivery_model.dart';

part 'orderdelivery_entity.g.dart';

@HiveType(typeId: 81)
@AutoMappr([
  MapType<OrderDeliveryModel, OrderDeliveryEntity>(),
])
class OrderDeliveryEntity extends $OrderDeliveryEntity {
  @HiveField(0)
  final String uuid;

  @HiveField(1)
  final String delivery_address;

  @HiveField(2)
  final String customer_phone;

  OrderDeliveryEntity({
    required this.uuid,
    required this.delivery_address,
    required this.customer_phone,
  });

  factory OrderDeliveryEntity.empty() => OrderDeliveryEntity(
        uuid: '',
        delivery_address: '',
        customer_phone: '',
      );

  factory OrderDeliveryEntity.fromModel(OrderDeliveryModel model) =>
      const $OrderDeliveryEntity()
          .convert<OrderDeliveryModel, OrderDeliveryEntity>(model);

  // Static serialization methods for nested objects
}
