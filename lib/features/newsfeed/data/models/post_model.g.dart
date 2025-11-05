// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PostModel _$PostModelFromJson(Map<String, dynamic> json) => PostModel(
      uuid: json['uuid'] as String,
      contant: json['contant'] as String,
      number_of_likes: (json['number_of_likes'] as num).toInt(),
      number_of_comments: (json['number_of_comments'] as num).toInt(),
      created_at: json['created_at'] as String,
      auther_info: PostEntity.auther_infoFromMap(
          json['auther_info'] as Map<String, dynamic>),
      post_tags: PostEntity.post_tagsFromMap(json['post_tags'] as List),
      post_images: PostEntity.post_imagesFromMap(json['post_images'] as List),
      is_liked: json['is_liked'] as bool? ?? false,
      is_saved: json['is_saved'] as bool? ?? false,
    );

Map<String, dynamic> _$PostModelToJson(PostModel instance) => <String, dynamic>{
      'uuid': instance.uuid,
      'contant': instance.contant,
      'number_of_likes': instance.number_of_likes,
      'number_of_comments': instance.number_of_comments,
      'created_at': instance.created_at,
      'auther_info': PostEntity.auther_infoToMap(instance.auther_info),
      'post_tags': PostEntity.post_tagsToMap(instance.post_tags),
      'post_images': PostEntity.post_imagesToMap(instance.post_images),
      'is_liked': instance.is_liked,
      'is_saved': instance.is_saved,
    };
