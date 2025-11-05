// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserModel _$UserModelFromJson(Map<String, dynamic> json) => UserModel(
      user: User.fromMap(json['user'] as Map<String, dynamic>),
      tokens: Tokens.fromMap(json['tokens'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$UserModelToJson(UserModel instance) => <String, dynamic>{
      'user': UserEntity.userToMap(instance.user),
      'tokens': UserEntity.tokensToMap(instance.tokens),
    };
