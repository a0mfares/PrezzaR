import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:prezza/features/location/domain/entities/address_entity.dart';

part 'address_model.g.dart';

@JsonSerializable()
class AddressModel extends AddressEntity {
  AddressModel(
      {required super.uuid,
      required super.address,
      required super.landmark,
      required super.title});

  factory AddressModel.fromMap(Map<String, dynamic> json) =>
      _$AddressModelFromJson(json);
}
