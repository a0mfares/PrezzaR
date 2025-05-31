import 'package:hive/hive.dart';
import 'package:auto_mappr_annotation/auto_mappr_annotation.dart';

import '../../data/models/car_model.dart';

part 'car_entity.g.dart';

@HiveType(typeId: 3)
@AutoMappr([
  MapType<CarModel, CarEntity>(),
])
class CarEntity extends $CarEntity {
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
  @HiveField(6)
  final String car_image;

  CarEntity({
    required this.uuid,
    required this.brand,
    required this.car_image,
    required this.model,
    required this.car_type,
    required this.color,
    required this.car_plat_number,
  });

  factory CarEntity.fromModel(CarModel model) =>
      const $CarEntity().convert<CarModel, CarEntity>(model);

  // Static serialization methods for nested objects
}
