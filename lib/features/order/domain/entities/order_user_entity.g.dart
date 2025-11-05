// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_user_entity.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class OrderUserItemEntityAdapter extends TypeAdapter<OrderUserItemEntity> {
  @override
  final int typeId = 3;

  @override
  OrderUserItemEntity read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return OrderUserItemEntity(
      uuid: fields[0] as String,
      totalPrice: fields[1] as int,
      createdAt: fields[2] as String,
      businessName: fields[3] as String,
      businessLogo: fields[4] as String,
      cartUuid: fields[5] as String,
    );
  }

  @override
  void write(BinaryWriter writer, OrderUserItemEntity obj) {
    writer
      ..writeByte(6)
      ..writeByte(0)
      ..write(obj.uuid)
      ..writeByte(1)
      ..write(obj.totalPrice)
      ..writeByte(2)
      ..write(obj.createdAt)
      ..writeByte(3)
      ..write(obj.businessName)
      ..writeByte(4)
      ..write(obj.businessLogo)
      ..writeByte(5)
      ..write(obj.cartUuid);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is OrderUserItemEntityAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
