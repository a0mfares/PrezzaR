// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'review_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ReviewModel _$ReviewModelFromJson(Map<String, dynamic> json) => ReviewModel(
      review: json['review'] as String,
      stars: (json['stars'] as num).toInt(),
      image: json['image'] as String?,
      created_at: json['created_at'] as String,
      reviwer_profile_picture: json['reviwer_profile_picture'] as String,
    );

Map<String, dynamic> _$ReviewModelToJson(ReviewModel instance) =>
    <String, dynamic>{
      'review': instance.review,
      'stars': instance.stars,
      'image': instance.image,
      'created_at': instance.created_at,
      'reviwer_profile_picture': instance.reviwer_profile_picture,
    };
