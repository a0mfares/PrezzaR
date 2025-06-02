import 'package:hive/hive.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:auto_mappr_annotation/auto_mappr_annotation.dart';
import 'package:equatable/equatable.dart';

import '../../data/models/orderbooking_model.dart';
part 'orderbooking_entity.g.dart';

@HiveType(typeId: 56)
@AutoMappr([
  MapType<OrderBookingModel, OrderBookingEntity>(),
])
class OrderBookingEntity extends $OrderBookingEntity {
  @HiveField(0)
  final String uuid;

  @HiveField(1)
  final String arrival_date;

  @HiveField(2)
  final String customer_phone;

  @HiveField(3)
  final int number_of_seats;

  @HiveField(4)
  @JsonKey(fromJson: Branch_info.fromMap, toJson: branch_infoToMap)
  final Branch_info branch_info;

  factory OrderBookingEntity.empty() => OrderBookingEntity(
        uuid: '',
        arrival_date: '',
        customer_phone: '',
        number_of_seats: 0,
        branch_info:
            const Branch_info(bussiness_name: '', bussiness_logo: '', address: ''),
      );

  OrderBookingEntity({
    required this.uuid,
    required this.arrival_date,
    required this.customer_phone,
    required this.number_of_seats,
    required this.branch_info,
  });

  factory OrderBookingEntity.fromModel(OrderBookingModel model) =>
      const $OrderBookingEntity()
          .convert<OrderBookingModel, OrderBookingEntity>(model);

  // Static serialization methods for nested objects
  static Map<String, dynamic> branch_infoToMap(Branch_info branchInfo) =>
      branchInfo.toMap();
}

@HiveType(typeId: 95)
class Branch_info extends Equatable {
  @HiveField(0)
  final String bussiness_name;

  @HiveField(1)
  final String bussiness_logo;

  @HiveField(2)
  final String address;

  const Branch_info({
    required this.bussiness_name,
    required this.bussiness_logo,
    required this.address,
  });

  Map<String, dynamic> toMap() {
    return {
      'bussiness_name': bussiness_name,
      'bussiness_logo': bussiness_logo,
      'address': address,
    };
  }

  factory Branch_info.fromMap(Map<String, dynamic> map) {
    return Branch_info(
      bussiness_name: map['bussiness_name'],
      bussiness_logo: map['bussiness_logo'],
      address: map['address'],
    );
  }

  @override
  List<Object?> get props => [bussiness_name, bussiness_logo, address];
}
