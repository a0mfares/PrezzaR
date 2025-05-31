import '../../data/models/post_model.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:auto_mappr_annotation/auto_mappr_annotation.dart';

part 'post_entity.g.dart';

@HiveType(typeId: 3)
@AutoMappr([
  MapType<PostModel, PostEntity>(),
])
class PostEntity extends $PostEntity {
  @HiveField(0)
  final String uuid;

  @HiveField(1)
  final String contant;

  @HiveField(2)
  final int number_of_likes;

  @HiveField(3)
  final int number_of_comments;

  @HiveField(4)
  final String created_at;

  @HiveField(5)
  @JsonKey(fromJson: auther_infoFromMap, toJson: auther_infoToMap)
  final AutherInfoEntity auther_info;

  @HiveField(6)
  @JsonKey(fromJson: post_tagsFromMap, toJson: post_tagsToMap)
  final List<PostTagsEntity> post_tags;

  @HiveField(7)
  @JsonKey(fromJson: post_imagesFromMap, toJson: post_imagesToMap)
  final List<PostImagesEntity> post_images;

  PostEntity({
    required this.uuid,
    required this.contant,
    required this.number_of_likes,
    required this.number_of_comments,
    required this.created_at,
    required this.auther_info,
    required this.post_tags,
    required this.post_images,
  });
  factory PostEntity.empty() => PostEntity(
        uuid: '',
        contant: '',
        number_of_likes: 0,
        number_of_comments: 0,
        created_at: '',
        auther_info: AutherInfoEntity.empty(),
        post_tags: [],
        post_images: [],
      );

  factory PostEntity.fromModel(PostModel model) =>
      const $PostEntity().convert<PostModel, PostEntity>(model);

  static AutherInfoEntity auther_infoFromMap(Map<String, dynamic> json) {
    return AutherInfoEntity.fromJson(json);
  }

  static Map<String, dynamic> auther_infoToMap(AutherInfoEntity instance) {
    return instance.toJson();
  }

  static List<PostTagsEntity> post_tagsFromMap(List<dynamic> json) {
    return json.map((e) => PostTagsEntity.fromJson(e)).toList();
  }

  static List<Map<String, dynamic>> post_tagsToMap(List<PostTagsEntity> items) {
    return items.map((e) => e.toJson()).toList();
  }

  static List<PostImagesEntity> post_imagesFromMap(List<dynamic> json) {
    return json.map((e) => PostImagesEntity.fromJson(e)).toList();
  }

  static List<Map<String, dynamic>> post_imagesToMap(
      List<PostImagesEntity> items) {
    return items.map((e) => e.toJson()).toList();
  }
}

class AutherInfoEntity {
  final String uuid;
  final String full_name;
  final String user_name;
  final String profile_picture_url;

  AutherInfoEntity({
    required this.uuid,
    required this.full_name,
    required this.user_name,
    required this.profile_picture_url,
  });

  factory AutherInfoEntity.empty() => AutherInfoEntity(
        uuid: '',
        full_name: '',
        user_name: '',
        profile_picture_url: '',
      );

  factory AutherInfoEntity.fromJson(Map<String, dynamic> json) {
    return AutherInfoEntity(
      uuid: json['uuid'],
      full_name: json['full_name'],
      user_name: json['user_name'],
      profile_picture_url: json['profile_picture_url'],
    );
  }

  Map<String, dynamic> toJson() => {
        'uuid': uuid,
        'full_name': full_name,
        'user_name': user_name,
        'profile_picture_url': profile_picture_url,
      };
}

class PostTagsEntity {
  final String uuid;
  final int? bussines_id;
  final String? product_uuid;

  PostTagsEntity({
    required this.uuid,
    required this.bussines_id,
    required this.product_uuid,
  });

  factory PostTagsEntity.empty() => PostTagsEntity(
        uuid: '',
        bussines_id: 0,
        product_uuid: '',
      );

  factory PostTagsEntity.fromJson(Map<String, dynamic> json) {
    return PostTagsEntity(
      uuid: json['uuid'],
      bussines_id: json['bussines_id'] ?? 0,
      product_uuid: json['product_uuid'] ?? '',
    );
  }

  Map<String, dynamic> toJson() => {
        'uuid': uuid,
        'bussines_id': bussines_id,
        'product_uuid': product_uuid,
      };
}

class PostImagesEntity {
  final String uuid;
  final String image;

  PostImagesEntity({
    required this.uuid,
    required this.image,
  });

  factory PostImagesEntity.empty() => PostImagesEntity(
        uuid: '',
        image: '',
      );

  factory PostImagesEntity.fromJson(Map<String, dynamic> json) {
    return PostImagesEntity(
      uuid: json['uuid'],
      image: json['image'],
    );
  }

  Map<String, dynamic> toJson() => {
        'uuid': uuid,
        'image': image,
      };
}
