

// ignore_for_file: non_constant_identifier_names

import '../../data/models/user_search_model.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:auto_mappr_annotation/auto_mappr_annotation.dart';

part 'user_search_entity.g.dart';

@HiveType(typeId: 3)
@AutoMappr([
  MapType<UserSearchModel, UserSearchEntity>(),
])
class UserSearchEntity extends $UserSearchEntity {
  @HiveField(0)
  final String uuid;

  @HiveField(1)
  final String username;

  @HiveField(2)
  final String user_type;

  UserSearchEntity({
    required this.uuid,
    required this.username,
    required this.user_type,
  });

  factory UserSearchEntity.fromModel(UserSearchModel model) =>
      const $UserSearchEntity().convert<UserSearchModel, UserSearchEntity>(model);


  factory UserSearchEntity.empty() => UserSearchEntity(
    uuid: '',
username: '',
user_type: '',
  );
  
}
  


