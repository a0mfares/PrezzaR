import 'package:hive/hive.dart';
import 'package:auto_mappr_annotation/auto_mappr_annotation.dart';

import '../../data/models/address_model.dart';

part 'address_entity.g.dart';

@HiveType(typeId: 97)
@AutoMappr([
  MapType<AddressModel, AddressEntity>(),
])
class AddressEntity extends $AddressEntity {
  @HiveField(0)
  final String uuid;

  @HiveField(1)
  final String address;

  @HiveField(2)
  final String landmark;

  @HiveField(3)
  final String title;

  AddressEntity({
    required this.uuid,
    required this.address,
    required this.landmark,
    required this.title,
  });

  factory AddressEntity.empty() => AddressEntity(
        uuid: '',
        address: '',
        landmark: '',
        title: '',
      );

  factory AddressEntity.fromModel(AddressModel model) =>
      const $AddressEntity().convert<AddressModel, AddressEntity>(model);

  // Static serialization methods for nested objects
}
