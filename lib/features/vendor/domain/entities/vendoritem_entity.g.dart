// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vendoritem_entity.dart';

// **************************************************************************
// AutoMapprGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, prefer_const_constructors
// ignore_for_file: prefer_const_literals_to_create_immutables
// ignore_for_file: require_trailing_commas, unnecessary_const
// ignore_for_file: unnecessary_lambdas, unnecessary_parenthesis
// ignore_for_file: unnecessary_raw_strings

/// {@template package:prezza/features/vendor/domain/entities/vendoritem_entity.dart}
/// Available mappings:
/// - `VendorItemModel` → `VendorItemEntity`.
/// {@endtemplate}
class $VendorItemEntity implements AutoMapprInterface {
  const $VendorItemEntity();

  Type _typeOf<T>() => T;

  List<AutoMapprInterface> get _modules => const [];

  /// {@macro AutoMapprInterface:canConvert}
  /// {@macro package:prezza/features/vendor/domain/entities/vendoritem_entity.dart}
  @override
  bool canConvert<SOURCE, TARGET>({bool recursive = true}) {
    final sourceTypeOf = _typeOf<SOURCE>();
    final targetTypeOf = _typeOf<TARGET>();
    if ((sourceTypeOf == _typeOf<VendorItemModel>() ||
            sourceTypeOf == _typeOf<VendorItemModel?>()) &&
        (targetTypeOf == _typeOf<VendorItemEntity>() ||
            targetTypeOf == _typeOf<VendorItemEntity?>())) {
      return true;
    }
    if (recursive) {
      for (final mappr in _modules) {
        if (mappr.canConvert<SOURCE, TARGET>()) {
          return true;
        }
      }
    }
    return false;
  }

  /// {@macro AutoMapprInterface:convert}
  /// {@macro package:prezza/features/vendor/domain/entities/vendoritem_entity.dart}
  @override
  TARGET convert<SOURCE, TARGET>(SOURCE? model) {
    if (canConvert<SOURCE, TARGET>(recursive: false)) {
      return _convert(model)!;
    }
    for (final mappr in _modules) {
      if (mappr.canConvert<SOURCE, TARGET>()) {
        return mappr.convert(model)!;
      }
    }

    throw Exception('No ${_typeOf<SOURCE>()} -> ${_typeOf<TARGET>()} mapping.');
  }

  /// {@macro AutoMapprInterface:tryConvert}
  /// {@macro package:prezza/features/vendor/domain/entities/vendoritem_entity.dart}
  @override
  TARGET? tryConvert<SOURCE, TARGET>(SOURCE? model) {
    if (canConvert<SOURCE, TARGET>(recursive: false)) {
      return _convert(
        model,
        canReturnNull: true,
      );
    }
    for (final mappr in _modules) {
      if (mappr.canConvert<SOURCE, TARGET>()) {
        return mappr.tryConvert(model);
      }
    }

    return null;
  }

  /// {@macro AutoMapprInterface:convertIterable}
  /// {@macro package:prezza/features/vendor/domain/entities/vendoritem_entity.dart}
  @override
  Iterable<TARGET> convertIterable<SOURCE, TARGET>(Iterable<SOURCE?> model) {
    if (canConvert<SOURCE, TARGET>(recursive: false)) {
      return model.map<TARGET>((item) => _convert(item)!);
    }
    for (final mappr in _modules) {
      if (mappr.canConvert<SOURCE, TARGET>()) {
        return mappr.convertIterable(model);
      }
    }

    throw Exception('No ${_typeOf<SOURCE>()} -> ${_typeOf<TARGET>()} mapping.');
  }

  /// For iterable items, converts from SOURCE to TARGET if such mapping is configured, into Iterable.
  ///
  /// When an item in the source iterable is null, uses `whenSourceIsNull` if defined or null
  ///
  /// {@macro package:prezza/features/vendor/domain/entities/vendoritem_entity.dart}
  @override
  Iterable<TARGET?> tryConvertIterable<SOURCE, TARGET>(
      Iterable<SOURCE?> model) {
    if (canConvert<SOURCE, TARGET>(recursive: false)) {
      return model.map<TARGET?>((item) => _convert(item, canReturnNull: true));
    }
    for (final mappr in _modules) {
      if (mappr.canConvert<SOURCE, TARGET>()) {
        return mappr.tryConvertIterable(model);
      }
    }

    throw Exception('No ${_typeOf<SOURCE>()} -> ${_typeOf<TARGET>()} mapping.');
  }

  /// {@macro AutoMapprInterface:convertList}
  /// {@macro package:prezza/features/vendor/domain/entities/vendoritem_entity.dart}
  @override
  List<TARGET> convertList<SOURCE, TARGET>(Iterable<SOURCE?> model) {
    if (canConvert<SOURCE, TARGET>(recursive: false)) {
      return convertIterable<SOURCE, TARGET>(model).toList();
    }
    for (final mappr in _modules) {
      if (mappr.canConvert<SOURCE, TARGET>()) {
        return mappr.convertList(model);
      }
    }

    throw Exception('No ${_typeOf<SOURCE>()} -> ${_typeOf<TARGET>()} mapping.');
  }

  /// For iterable items, converts from SOURCE to TARGET if such mapping is configured, into List.
  ///
  /// When an item in the source iterable is null, uses `whenSourceIsNull` if defined or null
  ///
  /// {@macro package:prezza/features/vendor/domain/entities/vendoritem_entity.dart}
  @override
  List<TARGET?> tryConvertList<SOURCE, TARGET>(Iterable<SOURCE?> model) {
    if (canConvert<SOURCE, TARGET>(recursive: false)) {
      return tryConvertIterable<SOURCE, TARGET>(model).toList();
    }
    for (final mappr in _modules) {
      if (mappr.canConvert<SOURCE, TARGET>()) {
        return mappr.tryConvertList(model);
      }
    }

    throw Exception('No ${_typeOf<SOURCE>()} -> ${_typeOf<TARGET>()} mapping.');
  }

  /// {@macro AutoMapprInterface:convertSet}
  /// {@macro package:prezza/features/vendor/domain/entities/vendoritem_entity.dart}
  @override
  Set<TARGET> convertSet<SOURCE, TARGET>(Iterable<SOURCE?> model) {
    if (canConvert<SOURCE, TARGET>(recursive: false)) {
      return convertIterable<SOURCE, TARGET>(model).toSet();
    }
    for (final mappr in _modules) {
      if (mappr.canConvert<SOURCE, TARGET>()) {
        return mappr.convertSet(model);
      }
    }

    throw Exception('No ${_typeOf<SOURCE>()} -> ${_typeOf<TARGET>()} mapping.');
  }

  /// For iterable items, converts from SOURCE to TARGET if such mapping is configured, into Set.
  ///
  /// When an item in the source iterable is null, uses `whenSourceIsNull` if defined or null
  ///
  /// {@macro package:prezza/features/vendor/domain/entities/vendoritem_entity.dart}
  @override
  Set<TARGET?> tryConvertSet<SOURCE, TARGET>(Iterable<SOURCE?> model) {
    if (canConvert<SOURCE, TARGET>(recursive: false)) {
      return tryConvertIterable<SOURCE, TARGET>(model).toSet();
    }
    for (final mappr in _modules) {
      if (mappr.canConvert<SOURCE, TARGET>()) {
        return mappr.tryConvertSet(model);
      }
    }

    throw Exception('No ${_typeOf<SOURCE>()} -> ${_typeOf<TARGET>()} mapping.');
  }

  TARGET? _convert<SOURCE, TARGET>(
    SOURCE? model, {
    bool canReturnNull = false,
  }) {
    final sourceTypeOf = _typeOf<SOURCE>();
    final targetTypeOf = _typeOf<TARGET>();
    if ((sourceTypeOf == _typeOf<VendorItemModel>() ||
            sourceTypeOf == _typeOf<VendorItemModel?>()) &&
        (targetTypeOf == _typeOf<VendorItemEntity>() ||
            targetTypeOf == _typeOf<VendorItemEntity?>())) {
      if (canReturnNull && model == null) {
        return null;
      }
      return (_map__VendorItemModel__To__VendorItemEntity(
          (model as VendorItemModel?)) as TARGET);
    }
    throw Exception('No ${model.runtimeType} -> $targetTypeOf mapping.');
  }

  VendorItemEntity _map__VendorItemModel__To__VendorItemEntity(
      VendorItemModel? input) {
    final model = input;
    if (model == null) {
      throw Exception(
          r'Mapping VendorItemModel → VendorItemEntity failed because VendorItemModel was null, and no default value was provided. '
          r'Consider setting the whenSourceIsNull parameter on the MapType<VendorItemModel, VendorItemEntity> to handle null values during mapping.');
    }
    return VendorItemEntity(
        bussiness_name: model.bussiness_name,
        bussiness_avg_stars: model.bussiness_avg_stars,
        num_of_reviews: model.num_of_reviews,
        bussiness_logo: model.bussiness_logo,
        bussiness_id: model.bussiness_id,
        is_fav: model.is_fav,
        distance_in_kilo_meters: model.distance_in_kilo_meters,
        uuid: model.uuid);
  }
}

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class VendorItemEntityAdapter extends TypeAdapter<VendorItemEntity> {
  @override
  final int typeId = 15;

  @override
  VendorItemEntity read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return VendorItemEntity(
        bussiness_name: fields[0] as String,
        bussiness_avg_stars: fields[1] as int,
        num_of_reviews: fields[2] as int,
        bussiness_logo: fields[3] as String,
        bussiness_id: fields[4] as int,
        is_fav: fields[5] as bool?,
        distance_in_kilo_meters: fields[6] as double,
        uuid: fields[7] as String);
  }

  @override
  void write(BinaryWriter writer, VendorItemEntity obj) {
    writer
      ..writeByte(7)
      ..writeByte(0)
      ..write(obj.bussiness_name)
      ..writeByte(1)
      ..write(obj.bussiness_avg_stars)
      ..writeByte(2)
      ..write(obj.num_of_reviews)
      ..writeByte(3)
      ..write(obj.bussiness_logo)
      ..writeByte(4)
      ..write(obj.bussiness_id)
      ..writeByte(5)
      ..write(obj.is_fav)
      ..writeByte(6)
      ..write(obj.distance_in_kilo_meters);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is VendorItemEntityAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
