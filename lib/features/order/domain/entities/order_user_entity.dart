import '../../data/models/order_user_model.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:auto_mappr_annotation/auto_mappr_annotation.dart';

part 'order_user_entity.g.dart';

@HiveType(typeId: 3)
@AutoMappr([
  MapType<OrderUserItemModel, OrderUserItemEntity>(),
])
class OrderUserItemEntity extends $OrderUserItemEntity {
  @HiveField(0)
  final String uuid;

  @HiveField(1)
  final int total_price;

  @HiveField(2)
  final String created_at;

  @HiveField(3)
  final String bussiness_name;

  @HiveField(4)
  final String bussiness_logo;

  @HiveField(5)
  final String cart_uuid;

  OrderUserItemEntity({
    required this.uuid,
    required this.total_price,
    required this.created_at,
    required this.bussiness_name,
    required this.bussiness_logo,
    required this.cart_uuid,
  });

  factory OrderUserItemEntity.fromModel(OrderUserItemModel model) =>
      const $OrderUserItemEntity()
          .convert<OrderUserItemModel, OrderUserItemEntity>(model);

  factory OrderUserItemEntity.empty() => OrderUserItemEntity(
        uuid: '',
        total_price: 0,
        created_at: '',
        bussiness_name: '',
        bussiness_logo: '',
        cart_uuid: '',
      );
}
