// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'orderbooking_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OrderBookingModel _$OrderBookingModelFromJson(Map<String, dynamic> json) =>
    OrderBookingModel(
      uuid: json['uuid'] as String,
      arrival_date: json['arrival_date'] as String,
      customer_phone: json['customer_phone'] as String?,
      number_of_seats: (json['number_of_seats'] as num).toInt(),
      branch_info:
          Branch_info.fromMap(json['branch_info'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$OrderBookingModelToJson(OrderBookingModel instance) =>
    <String, dynamic>{
      'uuid': instance.uuid,
      'arrival_date': instance.arrival_date,
      'customer_phone': instance.customer_phone,
      'number_of_seats': instance.number_of_seats,
      'branch_info': OrderBookingEntity.branch_infoToMap(instance.branch_info),
    };
