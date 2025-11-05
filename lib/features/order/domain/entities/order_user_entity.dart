import 'package:hive_flutter/hive_flutter.dart';

part 'order_user_entity.g.dart';

@HiveType(typeId: 3)
class OrderUserItemEntity {
  @HiveField(0)
  final String uuid;
  
  @HiveField(1)
  final int totalPrice;
  
  @HiveField(2)
  final String createdAt;
  
  @HiveField(3)
  final String businessName;
  
  @HiveField(4)
  final String businessLogo;
  
  @HiveField(5)
  final String cartUuid;

  OrderUserItemEntity({
    required this.uuid,
    required this.totalPrice,
    required this.createdAt,
    required this.businessName,
    required this.businessLogo,
    required this.cartUuid,
  });

  factory OrderUserItemEntity.empty() => OrderUserItemEntity(
        uuid: '',
        totalPrice: 0,
        createdAt: '',
        businessName: '',
        businessLogo: '',
        cartUuid: '',
      );

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is OrderUserItemEntity &&
          runtimeType == other.runtimeType &&
          uuid == other.uuid;

  @override
  int get hashCode => uuid.hashCode;
}