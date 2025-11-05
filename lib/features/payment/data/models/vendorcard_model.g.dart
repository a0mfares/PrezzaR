// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vendorcard_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

VendorCardModel _$VendorCardModelFromJson(Map<String, dynamic> json) =>
    VendorCardModel(
      bank_name: json['bank_name'] as String,
      card_holder_name: json['card_holder_name'] as String,
      card_last_four_digits: json['card_last_four_digits'] as String,
    );

Map<String, dynamic> _$VendorCardModelToJson(VendorCardModel instance) =>
    <String, dynamic>{
      'bank_name': instance.bank_name,
      'card_holder_name': instance.card_holder_name,
      'card_last_four_digits': instance.card_last_four_digits,
    };
