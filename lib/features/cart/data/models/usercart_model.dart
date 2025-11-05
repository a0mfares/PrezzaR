import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/entities/usercart_entity.dart';

part 'usercart_model.g.dart';

@JsonSerializable()
class UserCartModel extends UserCartEntity {
  UserCartModel({required super.uuid, required super.bussiness_info, required super.is_closed});

  factory UserCartModel.fromJson(Map<String, dynamic> json) =>
      _$UserCartModelFromJson(json);
}
