import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:prezza/features/order/domain/entities/orderdelivery_entity.dart';

part 'orderdelivery_model.g.dart';

@JsonSerializable()
class OrderDeliveryModel extends OrderDeliveryEntity {
  OrderDeliveryModel(
      {required super.uuid,
      required super.delivery_address,
      required super.customer_phone});

  factory OrderDeliveryModel.fromMap(Map<String, dynamic> json) =>
      _$OrderDeliveryModelFromJson(json);
}
