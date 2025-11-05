import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_flutter/hive_flutter.dart';

part 'order_tracking_details_entity.g.dart';

@HiveType(typeId: 4)
class OrderTrackingDetailsEntity {
  @HiveField(0)
  final String uuid;
  
  @HiveField(1)
  final int order_total_price;
  
  @HiveField(2)
  final String created_at;
  
  @HiveField(3)
  final String bussiness_name;
  
  @HiveField(4)
  final String bussiness_logo;
  
  @HiveField(5)
  final String order_status;
  
  @HiveField(6)
  final List<Product> items;

  OrderTrackingDetailsEntity({
    required this.uuid,
    required this.order_status,
    required this.created_at,
    required this.bussiness_logo,
    required this.bussiness_name,
    required this.order_total_price,
    required this.items,
  });

  factory OrderTrackingDetailsEntity.empty() => OrderTrackingDetailsEntity(
        uuid: '',
        order_total_price: 0,
        created_at: '',
        bussiness_name: '',
        bussiness_logo: '',
        order_status: '',
        items: [],
      );

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is OrderTrackingDetailsEntity &&
          runtimeType == other.runtimeType &&
          uuid == other.uuid;

  @override
  int get hashCode => uuid.hashCode;
}

@JsonSerializable()
@HiveType(typeId: 88)
class Product extends Equatable {
  @HiveField(0)
  final String uuid;

  @HiveField(1)
  final String product_name;

  @HiveField(2)
  final int quantity;

  @HiveField(3)
  final double item_total_price;

  const Product({
    required this.uuid,
    required this.product_name,
    required this.quantity,
    required this.item_total_price,
  });

  factory Product.fromJson(Map<String, dynamic> json) => _$ProductFromJson(json);
  Map<String, dynamic> toJson() => _$ProductToJson(this);

  @override
  List<Object?> get props => [uuid, product_name, quantity, item_total_price];
}
