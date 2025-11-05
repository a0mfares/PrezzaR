import 'package:json_annotation/json_annotation.dart';
import 'package:prezza/features/order/domain/entities/order_tracking_details_entity.dart';


part 'order_tracking_details_model.g.dart';

@JsonSerializable(explicitToJson: true)
class OrderTrackingDetailsModel {
  final String uuid;
  
  @JsonKey(name: 'order_total_price')
  final int order_total_price;
  
  @JsonKey(name: 'created_at')
  final String created_at;
  
  @JsonKey(name: 'bussiness_name') 
  final String bussiness_name;
  
  @JsonKey(name: 'bussiness_logo') 
  final String  bussiness_logo;
  
  @JsonKey(name: 'order_status')
  final String order_status;
  
  @JsonKey(name: 'items')
  final List<Product> items;

  OrderTrackingDetailsModel({
    required this.uuid,
    required this.order_total_price,
    required this.created_at,
    required this.bussiness_name,
    required this.bussiness_logo,
    required this.order_status,
    required this.items,
  });

  factory OrderTrackingDetailsModel.fromJson(Map<String, dynamic> json) =>
      _$OrderTrackingDetailsModelFromJson(json);

  Map<String, dynamic> toJson() => _$OrderTrackingDetailsModelToJson(this);

  // Convert model to entity
  OrderTrackingDetailsEntity toEntity() {
    return OrderTrackingDetailsEntity(
      uuid: uuid,
      order_total_price: order_total_price,
      created_at: created_at,
      bussiness_name: bussiness_name,
      bussiness_logo: bussiness_logo,
      order_status: order_status,
      items: items,
    );
  }

  // Convert entity to model
  factory OrderTrackingDetailsModel.fromEntity(
      OrderTrackingDetailsEntity entity) {
    return OrderTrackingDetailsModel(
      uuid: entity.uuid,
      order_total_price: entity.order_total_price,
      created_at: entity.created_at,
      bussiness_name: entity.bussiness_name,
      bussiness_logo: entity.bussiness_logo,
      order_status: entity.order_status,
      items: entity.items
    );
  }

  factory OrderTrackingDetailsModel.empty() => OrderTrackingDetailsModel(
        uuid: '',
        order_total_price: 0,
        created_at: '',
        bussiness_name: '',
        bussiness_logo: '',
        order_status: '',
        items: [],
      );
}