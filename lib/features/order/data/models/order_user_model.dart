import 'package:json_annotation/json_annotation.dart';
import '../../domain/entities/order_user_entity.dart';

part 'order_user_model.g.dart';

@JsonSerializable(explicitToJson: true)
class OrderUserItemModel {
  final String uuid;
  
  @JsonKey(name: 'total_price')
  final int totalPrice;
  
  @JsonKey(name: 'created_at')
  final String createdAt;
  
  @JsonKey(name: 'bussiness_name') // Keep API spelling
  final String businessName;
  
  @JsonKey(name: 'bussiness_logo') // Keep API spelling
  final String businessLogo;
  
  @JsonKey(name: 'cart_uuid')
  final String cartUuid;

  OrderUserItemModel({
    required this.uuid,
    required this.totalPrice,
    required this.createdAt,
    required this.businessName,
    required this.businessLogo,
    required this.cartUuid,
  });

  factory OrderUserItemModel.fromJson(Map<String, dynamic> json) =>
      _$OrderUserItemModelFromJson(json);

  Map<String, dynamic> toJson() => _$OrderUserItemModelToJson(this);

  // Convert model to entity
  OrderUserItemEntity toEntity() {
    return OrderUserItemEntity(
      uuid: uuid,
      totalPrice: totalPrice,
      createdAt: createdAt,
      businessName: businessName,
      businessLogo: businessLogo,
      cartUuid: cartUuid,
    );
  }

  // Convert entity to model
  factory OrderUserItemModel.fromEntity(OrderUserItemEntity entity) {
    return OrderUserItemModel(
      uuid: entity.uuid,
      totalPrice: entity.totalPrice,
      createdAt: entity.createdAt,
      businessName: entity.businessName,
      businessLogo: entity.businessLogo,
      cartUuid: entity.cartUuid,
    );
  }

  factory OrderUserItemModel.empty() => OrderUserItemModel(
        uuid: '',
        totalPrice: 0,
        createdAt: '',
        businessName: '',
        businessLogo: '',
        cartUuid: '',
      );
}