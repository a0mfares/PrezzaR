import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/entities/order_user_entity.dart';

part 'order_user_model.g.dart';

@JsonSerializable()
class OrderUserItemModel extends OrderUserItemEntity {
  OrderUserItemModel({
    required super.uuid,
    required super.total_price,
    required super.created_at,
    required super.bussiness_name,
    required super.bussiness_logo,
    required super.cart_uuid,
  });

  factory OrderUserItemModel.fromMap(Map<String, dynamic> json) =>
      _$OrderUserItemModelFromJson(json);

  Map<String, dynamic> toMap() => _$OrderUserItemModelToJson(this);
}
