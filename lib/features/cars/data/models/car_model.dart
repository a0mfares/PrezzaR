import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:prezza/features/cars/domain/entities/car_entity.dart';

part 'car_model.g.dart';

@JsonSerializable()
class CarModel extends CarEntity {
  CarModel(
      {required super.uuid,
      required super.brand,
      required super.model,
      required super.car_type,
      required super.color,
      required super.car_plat_number,
      required super.car_image});

  factory CarModel.fromMap(Map<String, dynamic> json) =>
      _$CarModelFromJson(json);
}
