// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'orderitem_entity.dart';

// **************************************************************************
// AutoMapprGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, prefer_const_constructors
// ignore_for_file: prefer_const_literals_to_create_immutables
// ignore_for_file: require_trailing_commas, unnecessary_const
// ignore_for_file: unnecessary_lambdas, unnecessary_parenthesis
// ignore_for_file: unnecessary_raw_strings

/// {@template package:prezza/features/order/domain/entities/orderitem_entity.dart}
/// Available mappings:
/// - `OrderVendorItemModel` → `OrderVendorItemEntity`.
/// {@endtemplate}
class $OrderVendorItemEntity implements AutoMapprInterface {
  const $OrderVendorItemEntity();

  Type _typeOf<T>() => T;

  List<AutoMapprInterface> get _modules => const [];

  /// {@macro AutoMapprInterface:canConvert}
  /// {@macro package:prezza/features/order/domain/entities/orderitem_entity.dart}
  @override
  bool canConvert<SOURCE, TARGET>({bool recursive = true}) {
    final sourceTypeOf = _typeOf<SOURCE>();
    final targetTypeOf = _typeOf<TARGET>();
    if ((sourceTypeOf == _typeOf<OrderVendorItemModel>() ||
            sourceTypeOf == _typeOf<OrderVendorItemModel?>()) &&
        (targetTypeOf == _typeOf<OrderVendorItemEntity>() ||
            targetTypeOf == _typeOf<OrderVendorItemEntity?>())) {
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
  /// {@macro package:prezza/features/order/domain/entities/orderitem_entity.dart}
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
  /// {@macro package:prezza/features/order/domain/entities/orderitem_entity.dart}
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
  /// {@macro package:prezza/features/order/domain/entities/orderitem_entity.dart}
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
  /// {@macro package:prezza/features/order/domain/entities/orderitem_entity.dart}
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
  /// {@macro package:prezza/features/order/domain/entities/orderitem_entity.dart}
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
  /// {@macro package:prezza/features/order/domain/entities/orderitem_entity.dart}
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
  /// {@macro package:prezza/features/order/domain/entities/orderitem_entity.dart}
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
  /// {@macro package:prezza/features/order/domain/entities/orderitem_entity.dart}
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
    if ((sourceTypeOf == _typeOf<OrderVendorItemModel>() ||
            sourceTypeOf == _typeOf<OrderVendorItemModel?>()) &&
        (targetTypeOf == _typeOf<OrderVendorItemEntity>() ||
            targetTypeOf == _typeOf<OrderVendorItemEntity?>())) {
      if (canReturnNull && model == null) {
        return null;
      }
      return (_map__OrderVendorItemModel__To__OrderVendorItemEntity(
          (model as OrderVendorItemModel?)) as TARGET);
    }
    throw Exception('No ${model.runtimeType} -> $targetTypeOf mapping.');
  }

  OrderVendorItemEntity _map__OrderVendorItemModel__To__OrderVendorItemEntity(
      OrderVendorItemModel? input) {
    final model = input;
    if (model == null) {
      throw Exception(
          r'Mapping OrderVendorItemModel → OrderVendorItemEntity failed because OrderVendorItemModel was null, and no default value was provided. '
          r'Consider setting the whenSourceIsNull parameter on the MapType<OrderVendorItemModel, OrderVendorItemEntity> to handle null values during mapping.');
    }
    return OrderVendorItemEntity(
      order_uuid: model.order_uuid,
      order_type: model.order_type,
      customer_name: model.customer_name,
      showen_id: model.showen_id,
      total_price: model.total_price,
    );
  }
}

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class OrderVendorItemEntityAdapter extends TypeAdapter<OrderVendorItemEntity> {
  @override
  final int typeId = 31;

  @override
  OrderVendorItemEntity read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return OrderVendorItemEntity(
      order_uuid: fields[0] as String,
      order_type: fields[1] as String,
      customer_name: fields[2] as String,
      showen_id: fields[3] as String,
      total_price: fields[4] as double,
    );
  }

  @override
  void write(BinaryWriter writer, OrderVendorItemEntity obj) {
    writer
      ..writeByte(5)
      ..writeByte(0)
      ..write(obj.order_uuid)
      ..writeByte(1)
      ..write(obj.order_type)
      ..writeByte(2)
      ..write(obj.customer_name)
      ..writeByte(3)
      ..write(obj.showen_id)
      ..writeByte(4)
      ..write(obj.total_price);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is OrderVendorItemEntityAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
