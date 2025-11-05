import 'package:hive_flutter/hive_flutter.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:auto_mappr_annotation/auto_mappr_annotation.dart';
import 'package:equatable/equatable.dart';

import '../../data/models/orderpickup_model.dart';

part 'orderpickup_entity.g.dart';

@HiveType(typeId: 90)
@AutoMappr([
  MapType<OrderPickupModel, OrderPickupEntity>(),
])
class OrderPickupEntity extends $OrderPickupEntity {
  @HiveField(0)
  final String uuid;

  @HiveField(1)
  final String arrival_date;

  @HiveField(2)
  final String? customer_phone;

  @HiveField(3)
  @JsonKey(fromJson: Car.fromMap, toJson: carToMap)
  final Car car;

  OrderPickupEntity({
    required this.uuid,
    required this.arrival_date,
    this.customer_phone,
    required this.car,
  });

  factory OrderPickupEntity.empty() => OrderPickupEntity(
      uuid: '',
      arrival_date: '',
      customer_phone: '',
      car: const Car(
          uuid: '',
          brand: '',
          model: '',
          car_type: '',
          color: '',
          car_plat_number: ''));

  factory OrderPickupEntity.fromModel(OrderPickupModel model) =>
      const $OrderPickupEntity()
          .convert<OrderPickupModel, OrderPickupEntity>(model);

  // Static serialization methods for nested objects
  static Map<String, dynamic> carToMap(Car car) => car.toMap();
}

@HiveType(typeId: 52)
class Car extends Equatable {
  @HiveField(0)
  final String uuid;

  @HiveField(1)
  final String brand;

  @HiveField(2)
  final String model;

  @HiveField(3)
  final String car_type;

  @HiveField(4)
  final String color;

  @HiveField(5)
  final String car_plat_number;

  const Car({
    required this.uuid,
    required this.brand,
    required this.model,
    required this.car_type,
    required this.color,
    required this.car_plat_number,
  });

  Map<String, dynamic> toMap() {
    return {
      'uuid': uuid,
      'brand': brand,
      'model': model,
      'car_type': car_type,
      'color': color,
      'car_plat_number': car_plat_number,
    };
  }

  factory Car.fromMap(Map<String, dynamic> map) {
    return Car(
      uuid: map['uuid'],
      brand: map['brand'],
      model: map['model'],
      car_type: map['car_type'],
      color: map['color'],
      car_plat_number: map['car_plat_number'],
    );
  }

  @override
  List<Object?> get props =>
      [uuid, brand, model, car_type, color, car_plat_number];
}
