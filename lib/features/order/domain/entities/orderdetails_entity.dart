import 'package:hive_flutter/hive_flutter.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:auto_mappr_annotation/auto_mappr_annotation.dart';
import 'package:equatable/equatable.dart';

import '../../data/models/orderdetails_model.dart';

part 'orderdetails_entity.g.dart';

@HiveType(typeId: 63)
@AutoMappr([
  MapType<OrderDetailsModel, OrderDetailsEntity>(),
])
class OrderDetailsEntity extends $OrderDetailsEntity {
  @HiveField(0)
  final String uuid;

  @HiveField(1)
  final String size_name;

  @HiveField(2)
  final int quantity;

  @HiveField(3)
  final num item_total_price;

  @HiveField(4)
  @JsonKey(fromJson: Product_info.fromMap, toJson: product_infoToMap)
  final Product_info product_info;

  @HiveField(5)
  @JsonKey(fromJson: extrafromMap, toJson: extraToMap)
  final List<Extras> extras;

  @HiveField(6)
  @JsonKey(fromJson: sideItemsfromMap, toJson: sideItemsToMap)
  final List<Side_items> side_items;
  
  OrderDetailsEntity({
    required this.uuid,
    required this.size_name,
    required this.quantity,
    required this.item_total_price,
    required this.product_info,
    required this.extras,
    required this.side_items,
  });

  factory OrderDetailsEntity.empty() => OrderDetailsEntity(
        uuid: '',
        size_name: '',
        quantity: 0,
        item_total_price: 0,
        product_info: const Product_info(uuid: '', name: ''),
        extras: [],
        side_items: [],
      );

  factory OrderDetailsEntity.fromModel(OrderDetailsModel model) =>
      const $OrderDetailsEntity()
          .convert<OrderDetailsModel, OrderDetailsEntity>(model);

  

  // Static serialization methods for nested objects
  static Map<String, dynamic> product_infoToMap(Product_info productInfo) =>
      productInfo.toMap();
  static List<Side_items> sideItemsfromMap(List json) {
    return List<Side_items>.from(json.map((e) => Side_items.fromMap(e)));
  }
  static List<Map<String, dynamic>> sideItemsToMap(List<Side_items> items) {
    return items.map((e) => e.toMap()).toList();
  }

  static List<Extras> extrafromMap(List json) {
    return List<Extras>.from(json.map((e) => Extras.fromMap(e)));
  }

  static List<Map<String, dynamic>> extraToMap(List<Extras> items) {
    return items.map((e) => e.toMap()).toList();
  }

  
}
extension OrderDetailsMapper on OrderDetailsEntity {
  OrderDetailsModel toModel() =>
      const $OrderDetailsEntity()
          .convert<OrderDetailsEntity, OrderDetailsModel>(this);
}

@HiveType(typeId: 82)
class Product_info extends Equatable {
  @HiveField(0)
  final String uuid;
  @HiveField(1)
  final String name;
  @HiveField(2)
  final String? main_image;  // Add optional fields
  @HiveField(3)
  final num? prepare_time;

  const Product_info({
    required this.uuid,
    required this.name,
    this.main_image,
    this.prepare_time,
  });

  Map<String, dynamic> toMap() {
    return {
      'uuid': uuid,
      'name': name,
      'main_image': main_image,
      'prepare_time': prepare_time,
    };
  }

  factory Product_info.fromMap(Map<String, dynamic> map) {
    return Product_info(
      uuid: map['uuid']?.toString() ?? '',  
      name: map['name']?.toString() ?? '', 
      main_image: map['main_image']?.toString(),
      prepare_time: map['prepare_time'],
    );
  }

  @override
  List<Object?> get props => [uuid, name, main_image, prepare_time];
}

@HiveType(typeId: 58)
class Extras extends Equatable {
  @HiveField(0)
  final String extra_name;

  @HiveField(1)
  final num extra_price;

  const Extras({
    required this.extra_name,
    required this.extra_price,
  });

  Map<String, dynamic> toMap() {
    return {
      'extra_name': extra_name,
      'extra_price': extra_price,
    };
  }

  factory Extras.fromMap(Map<String, dynamic> map) {
    return Extras(
      extra_name: map['extra_name'],
      extra_price: map['extra_price'],
    );
  }

  @override
  List<Object?> get props => [extra_name, extra_price];
}

@HiveType(typeId: 2)
class Side_items extends Equatable {
  @HiveField(0)
  final String side_item_name;

  const Side_items({
    required this.side_item_name,
  });

  Map<String, dynamic> toMap() {
    return {
      'side_item_name': side_item_name,
    };
  }

  factory Side_items.fromMap(Map<String, dynamic> map) {
    return Side_items(
      side_item_name: map['side_item_name'],
    );
  }

  @override
  List<Object?> get props => [side_item_name];
}
