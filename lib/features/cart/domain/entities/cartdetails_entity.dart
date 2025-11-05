import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:auto_mappr_annotation/auto_mappr_annotation.dart';
import 'package:equatable/equatable.dart';
import 'package:hive_flutter/hive_flutter.dart';

import '../../data/models/cartdetails_model.dart';

part 'cartdetails_entity.g.dart';

@HiveType(typeId: 1)
@AutoMappr([
  MapType<CartDetailsModel, CartDetailsEntity>(),
])
class CartDetailsEntity extends $CartDetailsEntity {
  @HiveField(0)
  final String uuid;

  @HiveField(1)
  final num cart_total_price;
  @HiveField(3)
  final String vendor_phone_number;
  @HiveField(4)
  final String cart_business_type;

  @HiveField(2)
  @JsonKey(fromJson: cart_itemsFromMap, toJson: cart_itemsToMap)
  final List<Cart_items> cart_items;

  CartDetailsEntity({
    required this.uuid,
    required this.vendor_phone_number,
    required this.cart_business_type,
    required this.cart_total_price,
    required this.cart_items,
  });

  factory CartDetailsEntity.empty() => CartDetailsEntity(
      uuid: '',
      cart_total_price: 0,
      cart_business_type: '',
      cart_items: [],
      vendor_phone_number: '');

  factory CartDetailsEntity.fromModel(CartDetailsModel model) =>
      const $CartDetailsEntity()
          .convert<CartDetailsModel, CartDetailsEntity>(model);

  // Static serialization methods for nested objects
  static List<Map<String, dynamic>> cart_itemsToMap(
          List<Cart_items> cartItems) =>
      cartItems.map((e) => e.toMap()).toList();
  static List<Cart_items> cart_itemsFromMap(List cartItems) =>
      List<Cart_items>.from(cartItems.map((e) => Cart_items.fromMap(e)));
}

@HiveType(typeId: 81)
class Cart_items extends Equatable {
  @HiveField(0)
  final String uuid;

  @HiveField(1)
  final String product_name;

  @HiveField(2)
  final String product_image;

  @HiveField(3)
  final int quantity;

  @HiveField(4)
  final num price;

  @HiveField(5)
  final num extra_price;

  @HiveField(6)
  final num total_price;

  const Cart_items({
    required this.uuid,
    required this.product_name,
    required this.product_image,
    required this.quantity,
    required this.price,
    required this.extra_price,
    required this.total_price,
  });

  Map<String, dynamic> toMap() {
    return {
      'uuid': uuid,
      'product_name': product_name,
      'product_image': product_image,
      'quantity': quantity,
      'price': price,
      'extra_price': extra_price,
      'total_price': total_price,
    };
  }

  factory Cart_items.fromMap(Map<String, dynamic> map) {
    return Cart_items(
      uuid: map['uuid'],
      product_name: map['product_name'],
      product_image: map['product_image'],
      quantity: map['quantity'],
      price: map['price'],
      extra_price: map['extra_price'],
      total_price: map['total_price'],
    );
  }

  @override
  List<Object?> get props => [
        uuid,
        product_name,
        product_image,
        quantity,
        price,
        extra_price,
        total_price
      ];
}
