// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:auto_mappr_annotation/auto_mappr_annotation.dart';
import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';

import '../../data/models/user_model.dart';

part 'user_entity.g.dart';

@HiveType(typeId: 63)
@AutoMappr([
  MapType<UserModel, UserEntity>(),
])
class UserEntity extends $UserEntity {
  @HiveField(0)
  @JsonKey(fromJson: User.fromMap, toJson: userToMap)
  final User user;

  @HiveField(1)
  @JsonKey(fromJson: Tokens.fromMap, toJson: tokensToMap)
  final Tokens tokens;

  UserEntity({
    required this.user,
    required this.tokens,
  });

  factory UserEntity.empty() => UserEntity(
      tokens: const Tokens(refresh: '', access: ''),
      user: const User(
          uuid: '',
          username: '',
          first_name: '',
          last_name: '',
          phone: '',
          email: '',
          profile_picture: '',
          is_staff: false,
          is_superuser: false,
          user_type: ''));

  UserEntity copyWith({User? user, Tokens? tokens}) {
    return UserEntity(user: user ?? this.user, tokens: tokens ?? this.tokens);
  }

  factory UserEntity.fromModel(UserModel model) =>
      const $UserEntity().convert<UserModel, UserEntity>(model);

  // Static serialization methods for nested objects
  static Map<String, dynamic> userToMap(User user) => user.toMap();
  static Map<String, dynamic> tokensToMap(Tokens tokens) => tokens.toMap();
}

@HiveType(typeId: 46)
class User extends Equatable {
  @HiveField(0)
  final String uuid;

  @HiveField(1)
  final String username;

  @HiveField(2)
  final String first_name;

  @HiveField(3)
  final String last_name;

  @HiveField(4)
  final String email;

  @HiveField(5)
  final String profile_picture;

  @HiveField(6)
  final bool is_staff;

  @HiveField(7)
  final bool is_superuser;

  @HiveField(8)
  final String user_type;
  @HiveField(9)
  final String phone;

  //test
  User copyWith({
    String? uuid,
    String? phone,
    String? username,
    String? first_name,
    String? last_name,
    String? email,
    String? profile_picture,
    bool? is_staff,
    bool? is_superuser,
    String? user_type,
  }) {
    return User(
      uuid: uuid ?? this.uuid,
      username: username ?? this.username,
      phone: phone ?? this.phone,
      first_name: first_name ?? this.first_name,
      last_name: last_name ?? this.last_name,
      email: email ?? this.email,
      profile_picture: profile_picture ?? this.profile_picture,
      is_staff: is_staff ?? this.is_staff,
      is_superuser: is_superuser ?? this.is_superuser,
      user_type: user_type ?? this.user_type,
    );
  }

  const User({
    required this.uuid,
    required this.username,
    required this.first_name,
    required this.last_name,
    required this.email,
    required this.phone,
    required this.profile_picture,
    required this.is_staff,
    required this.is_superuser,
    required this.user_type,
  });

  Map<String, dynamic> toMap() {
    return {
      'uuid': uuid,
      'username': username,
      'phone': phone,
      'first_name': first_name,
      'last_name': last_name,
      'email': email,
      'user_type': user_type,
      'profile_picture': profile_picture,
      'is_staff': is_staff,
      'is_superuser': is_superuser,
    };
  }

  factory User.fromMap(Map<String, dynamic> map) {
    return User(
      uuid: map['uuid'],
      username: map['username'],
      first_name: map['first_name'],
      last_name: map['last_name'],
      phone: map['phone'],
      user_type: map['user_type'],
      email: map['email'],
      profile_picture: map['profile_picture'],
      is_staff: map['is_staff'],
      is_superuser: map['is_superuser'],
    );
  }

  @override
  List<Object?> get props => [
        uuid,
        username,
        first_name,
        last_name,
        email,
        profile_picture,
        user_type,
        phone,
        is_staff,
        is_superuser,
      ];
}

@HiveType(typeId: 85)
class Tokens extends Equatable {
  @HiveField(0)
  final String refresh;

  @HiveField(1)
  final String access;

  const Tokens({
    required this.refresh,
    required this.access,
  });

  Map<String, dynamic> toMap() {
    return {
      'refresh': refresh,
      'access': access,
    };
  }

  factory Tokens.fromMap(Map<String, dynamic> map) {
    return Tokens(
      refresh: map['refresh'],
      access: map['access'],
    );
  }

  @override
  List<Object?> get props => [refresh, access];
}
