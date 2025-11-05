// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'orderpickup_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OrderPickupModel _$OrderPickupModelFromJson(Map<String, dynamic> json) =>
    OrderPickupModel(
      uuid: json['uuid'] as String,
      arrival_date: json['arrival_date'] as String,
      customer_phone: json['customer_phone'] as String?,
      car: Car.fromMap(json['car'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$OrderPickupModelToJson(OrderPickupModel instance) =>
    <String, dynamic>{
      'uuid': instance.uuid,
      'arrival_date': instance.arrival_date,
      'customer_phone': instance.customer_phone,
      'car': OrderPickupEntity.carToMap(instance.car),
    };
