// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vendorbalance_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

VendorBalanceModel _$VendorBalanceModelFromJson(Map<String, dynamic> json) =>
    VendorBalanceModel(
      curr_balance: json['curr_balance'] as num,
      total_balance: json['total_balance'] as num,
    );

Map<String, dynamic> _$VendorBalanceModelToJson(VendorBalanceModel instance) =>
    <String, dynamic>{
      'curr_balance': instance.curr_balance,
      'total_balance': instance.total_balance,
    };
