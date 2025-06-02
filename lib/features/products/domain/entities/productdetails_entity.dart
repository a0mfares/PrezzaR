import 'package:hive/hive.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:auto_mappr_annotation/auto_mappr_annotation.dart';
import 'package:equatable/equatable.dart';

import '../../data/models/productdetails_model.dart';

part 'productdetails_entity.g.dart';

@HiveType(typeId: 58)
@AutoMappr([
  MapType<ProductDetailsModel, ProductDetailsEntity>(),
])
class ProductDetailsEntity extends $ProductDetailsEntity {
  @HiveField(0)
  final String uuid;

  @HiveField(1)
  final String name;

  @HiveField(2)
  final String description;

  @HiveField(3)
  final String main_image;

  @HiveField(4)
  final String price_range;

  @HiveField(5)
  @JsonKey(fromJson: extrafromMap, toJson: extraToMap)
  final List<Extras> extras;

  @HiveField(6)
  @JsonKey(fromJson: sideItemsfromMap, toJson: sideItemsToMap)
  final List<Side_items> side_items;

  @HiveField(7)
  @JsonKey(fromJson: sizefromMap, toJson: sizeToMap)
  final List<Product_sizes> product_sizes;

  ProductDetailsEntity({
    required this.uuid,
    required this.name,
    required this.description,
    required this.main_image,
    required this.price_range,
    required this.extras,
    required this.side_items,
    required this.product_sizes,
  });

  factory ProductDetailsEntity.fromModel(ProductDetailsModel model) =>
      const $ProductDetailsEntity()
          .convert<ProductDetailsModel, ProductDetailsEntity>(model);

  // Static serialization methods for nested objects
  static List<Side_items> sideItemsfromMap(List json) {
    return List<Side_items>.from(json.map((e) => Side_items.fromMap(e)));
  }

  static List<Extras> extrafromMap(List json) {
    return List<Extras>.from(json.map((e) => Extras.fromMap(e)));
  }

  static List<Product_sizes> sizefromMap(List json) {
    return List<Product_sizes>.from(json.map((e) => Product_sizes.fromMap(e)));
  }

  static List<Map<String, dynamic>> extraToMap(List<Extras> items) {
    return items.map((e) => e.toMap()).toList();
  }

  static List<Map<String, dynamic>> sideItemsToMap(List<Side_items> items) {
    return items.map((e) => e.toMap()).toList();
  }

  static List<Map<String, dynamic>> sizeToMap(List<Product_sizes> items) {
    return items.map((e) => e.toMap()).toList();
  }
}

@HiveType(typeId: 44)
class Extras extends Equatable {
  @HiveField(0)
  final int id;

  @HiveField(1)
  final String name;

  @HiveField(2)
  final num price;

  const Extras({
    required this.id,
    required this.name,
    required this.price,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'price': price,
    };
  }

  factory Extras.fromMap(Map<String, dynamic> map) {
    return Extras(
      id: map['id'],
      name: map['name'],
      price: map['price'],
    );
  }

  @override
  List<Object?> get props => [id, name, price];
}

@HiveType(typeId: 94)
class Side_items extends Equatable {
  @HiveField(0)
  final String Question;

  @HiveField(1)
  final List<Map<String, dynamic>> side_items;

  const Side_items({
    required this.Question,
    required this.side_items,
  });

  Map<String, dynamic> toMap() {
    return {
      'Question': Question,
      'side_items': side_items,
    };
  }

  factory Side_items.fromMap(Map<String, dynamic> map) {
    return Side_items(
      Question: map['Question'],
      side_items: (map['side_items'] as List)
          .map((e) => {'name': e['name'], 'id': e['id']})
          .toList(),
    );
  }

  @override
  List<Object?> get props => [Question, side_items];
}

@HiveType(typeId: 53)
class Product_sizes extends Equatable {
  @HiveField(0)
  final int id;

  @HiveField(1)
  final num price;

  @HiveField(2)
  final String name;

  const Product_sizes({
    required this.id,
    required this.price,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'price': price,
      'name': name,
    };
  }

  factory Product_sizes.fromMap(Map<String, dynamic> map) {
    return Product_sizes(
      id: map['id'],
      price: map['price'],
      name: map['name'],
    );
  }

  @override
  List<Object?> get props => [id, price, name];
}
