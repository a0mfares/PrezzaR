// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cartdetails_entity.dart';

// **************************************************************************
// AutoMapprGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, prefer_const_constructors
// ignore_for_file: prefer_const_literals_to_create_immutables
// ignore_for_file: require_trailing_commas, unnecessary_const
// ignore_for_file: unnecessary_lambdas, unnecessary_parenthesis
// ignore_for_file: unnecessary_raw_strings

/// {@template package:prezza/features/cart/domain/entities/cartdetails_entity.dart}
/// Available mappings:
/// - `CartDetailsModel` → `CartDetailsEntity`.
/// {@endtemplate}
class $CartDetailsEntity implements AutoMapprInterface {
  const $CartDetailsEntity();

  Type _typeOf<T>() => T;

  List<AutoMapprInterface> get _modules => const [];

  /// {@macro AutoMapprInterface:canConvert}
  /// {@macro package:prezza/features/cart/domain/entities/cartdetails_entity.dart}
  @override
  bool canConvert<SOURCE, TARGET>({bool recursive = true}) {
    final sourceTypeOf = _typeOf<SOURCE>();
    final targetTypeOf = _typeOf<TARGET>();
    if ((sourceTypeOf == _typeOf<CartDetailsModel>() ||
            sourceTypeOf == _typeOf<CartDetailsModel?>()) &&
        (targetTypeOf == _typeOf<CartDetailsEntity>() ||
            targetTypeOf == _typeOf<CartDetailsEntity?>())) {
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
  /// {@macro package:prezza/features/cart/domain/entities/cartdetails_entity.dart}
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
  /// {@macro package:prezza/features/cart/domain/entities/cartdetails_entity.dart}
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
  /// {@macro package:prezza/features/cart/domain/entities/cartdetails_entity.dart}
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
  /// {@macro package:prezza/features/cart/domain/entities/cartdetails_entity.dart}
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
  /// {@macro package:prezza/features/cart/domain/entities/cartdetails_entity.dart}
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
  /// {@macro package:prezza/features/cart/domain/entities/cartdetails_entity.dart}
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
  /// {@macro package:prezza/features/cart/domain/entities/cartdetails_entity.dart}
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
  /// {@macro package:prezza/features/cart/domain/entities/cartdetails_entity.dart}
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
    if ((sourceTypeOf == _typeOf<CartDetailsModel>() ||
            sourceTypeOf == _typeOf<CartDetailsModel?>()) &&
        (targetTypeOf == _typeOf<CartDetailsEntity>() ||
            targetTypeOf == _typeOf<CartDetailsEntity?>())) {
      if (canReturnNull && model == null) {
        return null;
      }
      return (_map__CartDetailsModel__To__CartDetailsEntity(
          (model as CartDetailsModel?)) as TARGET);
    }
    throw Exception('No ${model.runtimeType} -> $targetTypeOf mapping.');
  }

  CartDetailsEntity _map__CartDetailsModel__To__CartDetailsEntity(
      CartDetailsModel? input) {
    final model = input;
    if (model == null) {
      throw Exception(
          r'Mapping CartDetailsModel → CartDetailsEntity failed because CartDetailsModel was null, and no default value was provided. '
          r'Consider setting the whenSourceIsNull parameter on the MapType<CartDetailsModel, CartDetailsEntity> to handle null values during mapping.');
    }
    return CartDetailsEntity(
      uuid: model.uuid,
      vendor_phone_number: model.vendor_phone_number,
      cart_business_type: model.cart_business_type,
      cart_total_price: model.cart_total_price,
      cart_items: model.cart_items,
    );
  }
}

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class CartDetailsEntityAdapter extends TypeAdapter<CartDetailsEntity> {
  @override
  final int typeId = 1;

  @override
  CartDetailsEntity read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return CartDetailsEntity(
      uuid: fields[0] as String,
      vendor_phone_number: fields[3] as String,
      cart_business_type: fields[4] as String,
      cart_total_price: fields[1] as num,
      cart_items: (fields[2] as List).cast<Cart_items>(),
    );
  }

  @override
  void write(BinaryWriter writer, CartDetailsEntity obj) {
    writer
      ..writeByte(5)
      ..writeByte(0)
      ..write(obj.uuid)
      ..writeByte(1)
      ..write(obj.cart_total_price)
      ..writeByte(3)
      ..write(obj.vendor_phone_number)
      ..writeByte(4)
      ..write(obj.cart_business_type)
      ..writeByte(2)
      ..write(obj.cart_items);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CartDetailsEntityAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class CartitemsAdapter extends TypeAdapter<Cart_items> {
  @override
  final int typeId = 81;

  @override
  Cart_items read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Cart_items(
      uuid: fields[0] as String,
      product_name: fields[1] as String,
      product_image: fields[2] as String,
      quantity: fields[3] as int,
      price: fields[4] as num,
      extra_price: fields[5] as num,
      total_price: fields[6] as num,
    );
  }

  @override
  void write(BinaryWriter writer, Cart_items obj) {
    writer
      ..writeByte(7)
      ..writeByte(0)
      ..write(obj.uuid)
      ..writeByte(1)
      ..write(obj.product_name)
      ..writeByte(2)
      ..write(obj.product_image)
      ..writeByte(3)
      ..write(obj.quantity)
      ..writeByte(4)
      ..write(obj.price)
      ..writeByte(5)
      ..write(obj.extra_price)
      ..writeByte(6)
      ..write(obj.total_price);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CartitemsAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
