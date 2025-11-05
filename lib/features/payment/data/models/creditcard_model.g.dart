// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'creditcard_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CreditCardModel _$CreditCardModelFromJson(Map<String, dynamic> json) =>
    CreditCardModel(
      uuid: json['uuid'] as String,
      card_holder_name: json['card_holder_name'] as String,
      expiry_month: (json['expiry_month'] as num).toInt(),
      expiry_year: (json['expiry_year'] as num).toInt(),
      last_4_digits: json['last_4_digits'] as String,
    );

Map<String, dynamic> _$CreditCardModelToJson(CreditCardModel instance) =>
    <String, dynamic>{
      'uuid': instance.uuid,
      'card_holder_name': instance.card_holder_name,
      'expiry_month': instance.expiry_month,
      'expiry_year': instance.expiry_year,
      'last_4_digits': instance.last_4_digits,
    };
