// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'appreview_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AppReviewModel _$AppReviewModelFromJson(Map<String, dynamic> json) =>
    AppReviewModel(
      review: json['review'] as String,
      stars: json['stars'] as num,
    );

Map<String, dynamic> _$AppReviewModelToJson(AppReviewModel instance) =>
    <String, dynamic>{
      'review': instance.review,
      'stars': instance.stars,
    };
