// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'productdetails_entity.dart';

// **************************************************************************
// AutoMapprGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, prefer_const_constructors
// ignore_for_file: prefer_const_literals_to_create_immutables
// ignore_for_file: require_trailing_commas, unnecessary_const
// ignore_for_file: unnecessary_lambdas, unnecessary_parenthesis
// ignore_for_file: unnecessary_raw_strings

/// {@template package:prezza/features/products/domain/entities/productdetails_entity.dart}
/// Available mappings:
/// - `ProductDetailsModel` → `ProductDetailsEntity`.
/// {@endtemplate}
class $ProductDetailsEntity implements AutoMapprInterface {
  const $ProductDetailsEntity();

  Type _typeOf<T>() => T;

  List<AutoMapprInterface> get _modules => const [];

  /// {@macro AutoMapprInterface:canConvert}
  /// {@macro package:prezza/features/products/domain/entities/productdetails_entity.dart}
  @override
  bool canConvert<SOURCE, TARGET>({bool recursive = true}) {
    final sourceTypeOf = _typeOf<SOURCE>();
    final targetTypeOf = _typeOf<TARGET>();
    if ((sourceTypeOf == _typeOf<ProductDetailsModel>() ||
            sourceTypeOf == _typeOf<ProductDetailsModel?>()) &&
        (targetTypeOf == _typeOf<ProductDetailsEntity>() ||
            targetTypeOf == _typeOf<ProductDetailsEntity?>())) {
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
  /// {@macro package:prezza/features/products/domain/entities/productdetails_entity.dart}
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
  /// {@macro package:prezza/features/products/domain/entities/productdetails_entity.dart}
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
  /// {@macro package:prezza/features/products/domain/entities/productdetails_entity.dart}
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
  /// {@macro package:prezza/features/products/domain/entities/productdetails_entity.dart}
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
  /// {@macro package:prezza/features/products/domain/entities/productdetails_entity.dart}
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
  /// {@macro package:prezza/features/products/domain/entities/productdetails_entity.dart}
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
  /// {@macro package:prezza/features/products/domain/entities/productdetails_entity.dart}
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
  /// {@macro package:prezza/features/products/domain/entities/productdetails_entity.dart}
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
    if ((sourceTypeOf == _typeOf<ProductDetailsModel>() ||
            sourceTypeOf == _typeOf<ProductDetailsModel?>()) &&
        (targetTypeOf == _typeOf<ProductDetailsEntity>() ||
            targetTypeOf == _typeOf<ProductDetailsEntity?>())) {
      if (canReturnNull && model == null) {
        return null;
      }
      return (_map__ProductDetailsModel__To__ProductDetailsEntity(
          (model as ProductDetailsModel?)) as TARGET);
    }
    throw Exception('No ${model.runtimeType} -> $targetTypeOf mapping.');
  }

  ProductDetailsEntity _map__ProductDetailsModel__To__ProductDetailsEntity(
      ProductDetailsModel? input) {
    final model = input;
    if (model == null) {
      throw Exception(
          r'Mapping ProductDetailsModel → ProductDetailsEntity failed because ProductDetailsModel was null, and no default value was provided. '
          r'Consider setting the whenSourceIsNull parameter on the MapType<ProductDetailsModel, ProductDetailsEntity> to handle null values during mapping.');
    }
    return ProductDetailsEntity(
      uuid: model.uuid,
      name: model.name,
      description: model.description,
      main_image: model.main_image,
      price_range: model.price_range,
      extras: model.extras,
      side_items: model.side_items,
      product_sizes: model.product_sizes,
    );
  }
}

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class ProductDetailsEntityAdapter extends TypeAdapter<ProductDetailsEntity> {
  @override
  final int typeId = 58;

  @override
  ProductDetailsEntity read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return ProductDetailsEntity(
      uuid: fields[0] as String,
      name: fields[1] as String,
      description: fields[2] as String,
      main_image: fields[3] as String,
      price_range: fields[4] as String,
      extras: (fields[5] as List).cast<Extras>(),
      side_items: (fields[6] as List).cast<Side_items>(),
      product_sizes: (fields[7] as List).cast<Product_sizes>(),
    );
  }

  @override
  void write(BinaryWriter writer, ProductDetailsEntity obj) {
    writer
      ..writeByte(8)
      ..writeByte(0)
      ..write(obj.uuid)
      ..writeByte(1)
      ..write(obj.name)
      ..writeByte(2)
      ..write(obj.description)
      ..writeByte(3)
      ..write(obj.main_image)
      ..writeByte(4)
      ..write(obj.price_range)
      ..writeByte(5)
      ..write(obj.extras)
      ..writeByte(6)
      ..write(obj.side_items)
      ..writeByte(7)
      ..write(obj.product_sizes);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ProductDetailsEntityAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class ExtrasAdapter extends TypeAdapter<Extras> {
  @override
  final int typeId = 44;

  @override
  Extras read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Extras(
      id: fields[0] as int,
      name: fields[1] as String,
      price: fields[2] as num,
    );
  }

  @override
  void write(BinaryWriter writer, Extras obj) {
    writer
      ..writeByte(3)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.name)
      ..writeByte(2)
      ..write(obj.price);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ExtrasAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class SideitemsAdapter extends TypeAdapter<Side_items> {
  @override
  final int typeId = 94;

  @override
  Side_items read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Side_items(
      Question: fields[0] as String,
      side_items: (fields[1] as List)
          .map((dynamic e) => (e as Map).cast<String, dynamic>())
          .toList(),
    );
  }

  @override
  void write(BinaryWriter writer, Side_items obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.Question)
      ..writeByte(1)
      ..write(obj.side_items);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is SideitemsAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class ProductsizesAdapter extends TypeAdapter<Product_sizes> {
  @override
  final int typeId = 53;

  @override
  Product_sizes read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Product_sizes(
      id: fields[0] as int,
      price: fields[1] as num,
      name: fields[2] as String,
    );
  }

  @override
  void write(BinaryWriter writer, Product_sizes obj) {
    writer
      ..writeByte(3)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.price)
      ..writeByte(2)
      ..write(obj.name);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ProductsizesAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
