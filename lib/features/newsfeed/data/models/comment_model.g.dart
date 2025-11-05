// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'comment_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CommentModel _$CommentModelFromJson(Map<String, dynamic> json) => CommentModel(
      uuid: json['uuid'] as String,
      content: json['content'] as String,
      number_of_likes: (json['number_of_likes'] as num?)?.toInt(),
      number_of_replies: (json['number_of_replies'] as num?)?.toInt(),
      created_at: json['created_at'] as String,
      is_i_replay_owner: json['is_i_replay_owner'] as bool? ?? false,
      is_i_comment_owner: json['is_i_comment_owner'] as bool? ?? false,
      user_info: CommentEntity.user_infoFromMap(
          json['user_info'] as Map<String, dynamic>),
      is_liked: json['is_liked'] as bool? ?? false,
    );

Map<String, dynamic> _$CommentModelToJson(CommentModel instance) =>
    <String, dynamic>{
      'uuid': instance.uuid,
      'content': instance.content,
      'number_of_likes': instance.number_of_likes,
      'number_of_replies': instance.number_of_replies,
      'created_at': instance.created_at,
      'is_i_comment_owner': instance.is_i_comment_owner,
      'is_i_replay_owner': instance.is_i_replay_owner,
      'is_liked': instance.is_liked,
      'user_info': CommentEntity.user_infoToMap(instance.user_info),
    };
