// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'current_location_entity.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class CurrentLocationEntityAdapter extends TypeAdapter<CurrentLocationEntity> {
  @override
  final int typeId = 30;

  @override
  CurrentLocationEntity read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return CurrentLocationEntity(
      latitude: fields[0] as double,
      longitude: fields[1] as double,
      locationName: fields[2] as String,
    );
  }

  @override
  void write(BinaryWriter writer, CurrentLocationEntity obj) {
    writer
      ..writeByte(3)
      ..writeByte(0)
      ..write(obj.latitude)
      ..writeByte(1)
      ..write(obj.longitude)
      ..writeByte(2)
      ..write(obj.locationName);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CurrentLocationEntityAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
