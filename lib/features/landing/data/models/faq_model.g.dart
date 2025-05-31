// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'faq_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FaqModel _$FaqModelFromJson(Map<String, dynamic> json) => FaqModel(
      question: json['question'] as String,
      issue: json['issue'] as String,
      index: (json['index'] as num).toInt(),
    );

Map<String, dynamic> _$FaqModelToJson(FaqModel instance) => <String, dynamic>{
      'question': instance.question,
      'issue': instance.issue,
      'index': instance.index,
    };
