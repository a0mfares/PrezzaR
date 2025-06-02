import 'package:hive/hive.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:auto_mappr_annotation/auto_mappr_annotation.dart';
import 'package:equatable/equatable.dart';

import '../../data/models/usercart_model.dart';

part 'usercart_entity.g.dart';

@HiveType(typeId: 35)
@AutoMappr([
  MapType<UserCartModel, UserCartEntity>(),
])
class UserCartEntity extends $UserCartEntity {
  @HiveField(0)
  final String uuid;

  @HiveField(1)
  @JsonKey(fromJson: Bussiness_info.fromMap, toJson: bussiness_infoToMap)
  final Bussiness_info bussiness_info;

  UserCartEntity({
    required this.uuid,
    required this.bussiness_info,
  });

  factory UserCartEntity.empty() => UserCartEntity(
      uuid: '',
      bussiness_info:
          Bussiness_info(id: 0, business_name: '', business_logo: ''));

  factory UserCartEntity.fromModel(UserCartModel model) =>
      const $UserCartEntity().convert<UserCartModel, UserCartEntity>(model);

  // Static serialization methods for nested objects
  static Map<String, dynamic> bussiness_infoToMap(
          Bussiness_info bussinessInfo) =>
      bussinessInfo.toMap();
}

@HiveType(typeId: 60)
class Bussiness_info extends Equatable {
  @HiveField(0)
  final int id;

  @HiveField(1)
  final String business_name;

  @HiveField(2)
  final String business_logo;

  const Bussiness_info({
    required this.id,
    required this.business_name,
    required this.business_logo,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'business_name': business_name,
      'business_logo': business_logo,
    };
  }

  factory Bussiness_info.fromMap(Map<String, dynamic> map) {
    return Bussiness_info(
      id: map['id'],
      business_name: map['business_name'],
      business_logo: map['business_logo'],
    );
  }

  @override
  List<Object?> get props => [id, business_name, business_logo];
}
