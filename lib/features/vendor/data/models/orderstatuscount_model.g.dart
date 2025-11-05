// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'orderstatuscount_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OrderStatusCountModel _$OrderStatusCountModelFromJson(
        Map<String, dynamic> json) =>
    OrderStatusCountModel(
      pending_orders: json['pending_orders'] as num,
      running_orders: json['running_orders'] as num,
    );

Map<String, dynamic> _$OrderStatusCountModelToJson(
        OrderStatusCountModel instance) =>
    <String, dynamic>{
      'pending_orders': instance.pending_orders,
      'running_orders': instance.running_orders,
    };
