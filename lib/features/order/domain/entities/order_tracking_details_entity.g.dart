// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_tracking_details_entity.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class OrderTrackingDetailsEntityAdapter
    extends TypeAdapter<OrderTrackingDetailsEntity> {
  @override
  final int typeId = 4;

  @override
  OrderTrackingDetailsEntity read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return OrderTrackingDetailsEntity(
      uuid: fields[0] as String,
      order_status: fields[5] as String,
      created_at: fields[2] as String,
      bussiness_logo: fields[4] as String,
      bussiness_name: fields[3] as String,
      order_total_price: fields[1] as int,
      items: (fields[6] as List).cast<Product>(),
    );
  }

  @override
  void write(BinaryWriter writer, OrderTrackingDetailsEntity obj) {
    writer
      ..writeByte(7)
      ..writeByte(0)
      ..write(obj.uuid)
      ..writeByte(1)
      ..write(obj.order_total_price)
      ..writeByte(2)
      ..write(obj.created_at)
      ..writeByte(3)
      ..write(obj.bussiness_name)
      ..writeByte(4)
      ..write(obj.bussiness_logo)
      ..writeByte(5)
      ..write(obj.order_status)
      ..writeByte(6)
      ..write(obj.items);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is OrderTrackingDetailsEntityAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class ProductAdapter extends TypeAdapter<Product> {
  @override
  final int typeId = 88;

  @override
  Product read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Product(
      uuid: fields[0] as String,
      product_name: fields[1] as String,
      quantity: fields[2] as int,
      item_total_price: fields[3] as double,
    );
  }

  @override
  void write(BinaryWriter writer, Product obj) {
    writer
      ..writeByte(4)
      ..writeByte(0)
      ..write(obj.uuid)
      ..writeByte(1)
      ..write(obj.product_name)
      ..writeByte(2)
      ..write(obj.quantity)
      ..writeByte(3)
      ..write(obj.item_total_price);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ProductAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Product _$ProductFromJson(Map<String, dynamic> json) => Product(
      uuid: json['uuid'] as String,
      product_name: json['product_name'] as String,
      quantity: (json['quantity'] as num).toInt(),
      item_total_price: (json['item_total_price'] as num).toDouble(),
    );

Map<String, dynamic> _$ProductToJson(Product instance) => <String, dynamic>{
      'uuid': instance.uuid,
      'product_name': instance.product_name,
      'quantity': instance.quantity,
      'item_total_price': instance.item_total_price,
    };
