// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vendordetailsbooking_entity.dart';

// **************************************************************************
// AutoMapprGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, prefer_const_constructors
// ignore_for_file: prefer_const_literals_to_create_immutables
// ignore_for_file: require_trailing_commas, unnecessary_const
// ignore_for_file: unnecessary_lambdas, unnecessary_parenthesis
// ignore_for_file: unnecessary_raw_strings

/// {@template package:prezza/features/vendor/domain/entities/vendordetailsbooking_entity.dart}
/// Available mappings:
/// - `VendorDetailsBookingModel` → `VendorDetailsBookingEntity`.
/// {@endtemplate}
class $VendorDetailsBookingEntity implements AutoMapprInterface {
  const $VendorDetailsBookingEntity();

  Type _typeOf<T>() => T;

  List<AutoMapprInterface> get _modules => const [];

  /// {@macro AutoMapprInterface:canConvert}
  /// {@macro package:prezza/features/vendor/domain/entities/vendordetailsbooking_entity.dart}
  @override
  bool canConvert<SOURCE, TARGET>({bool recursive = true}) {
    final sourceTypeOf = _typeOf<SOURCE>();
    final targetTypeOf = _typeOf<TARGET>();
    if ((sourceTypeOf == _typeOf<VendorDetailsBookingModel>() ||
            sourceTypeOf == _typeOf<VendorDetailsBookingModel?>()) &&
        (targetTypeOf == _typeOf<VendorDetailsBookingEntity>() ||
            targetTypeOf == _typeOf<VendorDetailsBookingEntity?>())) {
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
  /// {@macro package:prezza/features/vendor/domain/entities/vendordetailsbooking_entity.dart}
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
  /// {@macro package:prezza/features/vendor/domain/entities/vendordetailsbooking_entity.dart}
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
  /// {@macro package:prezza/features/vendor/domain/entities/vendordetailsbooking_entity.dart}
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
  /// {@macro package:prezza/features/vendor/domain/entities/vendordetailsbooking_entity.dart}
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
  /// {@macro package:prezza/features/vendor/domain/entities/vendordetailsbooking_entity.dart}
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
  /// {@macro package:prezza/features/vendor/domain/entities/vendordetailsbooking_entity.dart}
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
  /// {@macro package:prezza/features/vendor/domain/entities/vendordetailsbooking_entity.dart}
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
  /// {@macro package:prezza/features/vendor/domain/entities/vendordetailsbooking_entity.dart}
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
    if ((sourceTypeOf == _typeOf<VendorDetailsBookingModel>() ||
            sourceTypeOf == _typeOf<VendorDetailsBookingModel?>()) &&
        (targetTypeOf == _typeOf<VendorDetailsBookingEntity>() ||
            targetTypeOf == _typeOf<VendorDetailsBookingEntity?>())) {
      if (canReturnNull && model == null) {
        return null;
      }
      return (_map__VendorDetailsBookingModel__To__VendorDetailsBookingEntity(
          (model as VendorDetailsBookingModel?)) as TARGET);
    }
    throw Exception('No ${model.runtimeType} -> $targetTypeOf mapping.');
  }

  VendorDetailsBookingEntity
      _map__VendorDetailsBookingModel__To__VendorDetailsBookingEntity(
          VendorDetailsBookingModel? input) {
    final model = input;
    if (model == null) {
      throw Exception(
          r'Mapping VendorDetailsBookingModel → VendorDetailsBookingEntity failed because VendorDetailsBookingModel was null, and no default value was provided. '
          r'Consider setting the whenSourceIsNull parameter on the MapType<VendorDetailsBookingModel, VendorDetailsBookingEntity> to handle null values during mapping.');
    }
    return VendorDetailsBookingEntity(
      id: model.id,
      service: model.service,
      business_name: model.business_name,
      description: model.description,
      business_logo: model.business_logo,
      bussiness_avg_stars: model.bussiness_avg_stars,
      num_of_reviews: model.num_of_reviews,
      distance_in_kilo_meters: model.distance_in_kilo_meters,
    );
  }
}

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class VendorDetailsBookingEntityAdapter
    extends TypeAdapter<VendorDetailsBookingEntity> {
  @override
  final int typeId = 75;

  @override
  VendorDetailsBookingEntity read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return VendorDetailsBookingEntity(
      id: fields[0] as int,
      service: fields[1] as String,
      business_name: fields[2] as String,
      description: fields[3] as String,
      business_logo: fields[4] as String,
      bussiness_avg_stars: fields[5] as int,
      num_of_reviews: fields[6] as int,
      distance_in_kilo_meters: fields[7] as double,
    );
  }

  @override
  void write(BinaryWriter writer, VendorDetailsBookingEntity obj) {
    writer
      ..writeByte(8)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.service)
      ..writeByte(2)
      ..write(obj.business_name)
      ..writeByte(3)
      ..write(obj.description)
      ..writeByte(4)
      ..write(obj.business_logo)
      ..writeByte(5)
      ..write(obj.bussiness_avg_stars)
      ..writeByte(6)
      ..write(obj.num_of_reviews)
      ..writeByte(7)
      ..write(obj.distance_in_kilo_meters);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is VendorDetailsBookingEntityAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
