// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'businessdetails_entity.dart';

// **************************************************************************
// AutoMapprGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, prefer_const_constructors
// ignore_for_file: prefer_const_literals_to_create_immutables
// ignore_for_file: require_trailing_commas, unnecessary_const
// ignore_for_file: unnecessary_lambdas, unnecessary_parenthesis
// ignore_for_file: unnecessary_raw_strings

/// {@template package:prezza/features/profile/domain/entities/businessdetails_entity.dart}
/// Available mappings:
/// - `BusinessDetailsModel` → `BusinessDetailsEntity`.
/// {@endtemplate}
class $BusinessDetailsEntity implements AutoMapprInterface {
  const $BusinessDetailsEntity();

  Type _typeOf<T>() => T;

  List<AutoMapprInterface> get _modules => const [];

  /// {@macro AutoMapprInterface:canConvert}
  /// {@macro package:prezza/features/profile/domain/entities/businessdetails_entity.dart}
  @override
  bool canConvert<SOURCE, TARGET>({bool recursive = true}) {
    final sourceTypeOf = _typeOf<SOURCE>();
    final targetTypeOf = _typeOf<TARGET>();
    if ((sourceTypeOf == _typeOf<BusinessDetailsModel>() ||
            sourceTypeOf == _typeOf<BusinessDetailsModel?>()) &&
        (targetTypeOf == _typeOf<BusinessDetailsEntity>() ||
            targetTypeOf == _typeOf<BusinessDetailsEntity?>())) {
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
  /// {@macro package:prezza/features/profile/domain/entities/businessdetails_entity.dart}
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
  /// {@macro package:prezza/features/profile/domain/entities/businessdetails_entity.dart}
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
  /// {@macro package:prezza/features/profile/domain/entities/businessdetails_entity.dart}
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
  /// {@macro package:prezza/features/profile/domain/entities/businessdetails_entity.dart}
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
  /// {@macro package:prezza/features/profile/domain/entities/businessdetails_entity.dart}
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
  /// {@macro package:prezza/features/profile/domain/entities/businessdetails_entity.dart}
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
  /// {@macro package:prezza/features/profile/domain/entities/businessdetails_entity.dart}
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
  /// {@macro package:prezza/features/profile/domain/entities/businessdetails_entity.dart}
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
    if ((sourceTypeOf == _typeOf<BusinessDetailsModel>() ||
            sourceTypeOf == _typeOf<BusinessDetailsModel?>()) &&
        (targetTypeOf == _typeOf<BusinessDetailsEntity>() ||
            targetTypeOf == _typeOf<BusinessDetailsEntity?>())) {
      if (canReturnNull && model == null) {
        return null;
      }
      return (_map__BusinessDetailsModel__To__BusinessDetailsEntity(
          (model as BusinessDetailsModel?)) as TARGET);
    }
    throw Exception('No ${model.runtimeType} -> $targetTypeOf mapping.');
  }

  BusinessDetailsEntity _map__BusinessDetailsModel__To__BusinessDetailsEntity(
      BusinessDetailsModel? input) {
    final model = input;
    if (model == null) {
      throw Exception(
          r'Mapping BusinessDetailsModel → BusinessDetailsEntity failed because BusinessDetailsModel was null, and no default value was provided. '
          r'Consider setting the whenSourceIsNull parameter on the MapType<BusinessDetailsModel, BusinessDetailsEntity> to handle null values during mapping.');
    }
    return BusinessDetailsEntity(
      business_name: model.business_name,
      branches: model.branches,
      vendor_role: model.vendor_role,
      description: model.description,
      operating_hours_from: model.operating_hours_from,
      operating_hours_to: model.operating_hours_to,
      has_booking: model.has_booking,
      service: model.service,
      business_logo: model.business_logo,
      business_category: model.business_category,
    );
  }
}

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class BusinessDetailsEntityAdapter extends TypeAdapter<BusinessDetailsEntity> {
  @override
  final int typeId = 23;

  @override
  BusinessDetailsEntity read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return BusinessDetailsEntity(
      business_name: fields[0] as String,
      branches: fields[1] as int,
      vendor_role: fields[2] as String,
      description: fields[3] as String,
      operating_hours_from: fields[4] as String,
      operating_hours_to: fields[5] as String,
      has_booking: fields[6] as bool,
      service: fields[7] as String,
      business_logo: fields[8] as String,
      business_category: fields[9] as CategoryEntity,
    );
  }

  @override
  void write(BinaryWriter writer, BusinessDetailsEntity obj) {
    writer
      ..writeByte(10)
      ..writeByte(0)
      ..write(obj.business_name)
      ..writeByte(1)
      ..write(obj.branches)
      ..writeByte(2)
      ..write(obj.vendor_role)
      ..writeByte(3)
      ..write(obj.description)
      ..writeByte(4)
      ..write(obj.operating_hours_from)
      ..writeByte(5)
      ..write(obj.operating_hours_to)
      ..writeByte(6)
      ..write(obj.has_booking)
      ..writeByte(7)
      ..write(obj.service)
      ..writeByte(8)
      ..write(obj.business_logo)
      ..writeByte(9)
      ..write(obj.business_category);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is BusinessDetailsEntityAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class BusinesscategoryAdapter extends TypeAdapter<Business_category> {
  @override
  final int typeId = 54;

  @override
  Business_category read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Business_category(
      id: fields[0] as int,
      name: fields[1] as String,
    );
  }

  @override
  void write(BinaryWriter writer, Business_category obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.name);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is BusinesscategoryAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
