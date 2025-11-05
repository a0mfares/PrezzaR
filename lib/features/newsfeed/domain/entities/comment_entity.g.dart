// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'comment_entity.dart';

// **************************************************************************
// AutoMapprGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, prefer_const_constructors
// ignore_for_file: prefer_const_literals_to_create_immutables
// ignore_for_file: require_trailing_commas, unnecessary_const
// ignore_for_file: unnecessary_lambdas, unnecessary_parenthesis
// ignore_for_file: unnecessary_raw_strings

/// {@template package:prezza/features/newsfeed/domain/entities/comment_entity.dart}
/// Available mappings:
/// - `CommentModel` → `CommentEntity`.
/// {@endtemplate}
class $CommentEntity implements AutoMapprInterface {
  const $CommentEntity();

  Type _typeOf<T>() => T;

  List<AutoMapprInterface> get _modules => const [];

  /// {@macro AutoMapprInterface:canConvert}
  /// {@macro package:prezza/features/newsfeed/domain/entities/comment_entity.dart}
  @override
  bool canConvert<SOURCE, TARGET>({bool recursive = true}) {
    final sourceTypeOf = _typeOf<SOURCE>();
    final targetTypeOf = _typeOf<TARGET>();
    if ((sourceTypeOf == _typeOf<CommentModel>() ||
            sourceTypeOf == _typeOf<CommentModel?>()) &&
        (targetTypeOf == _typeOf<CommentEntity>() ||
            targetTypeOf == _typeOf<CommentEntity?>())) {
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
  /// {@macro package:prezza/features/newsfeed/domain/entities/comment_entity.dart}
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
  /// {@macro package:prezza/features/newsfeed/domain/entities/comment_entity.dart}
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
  /// {@macro package:prezza/features/newsfeed/domain/entities/comment_entity.dart}
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
  /// {@macro package:prezza/features/newsfeed/domain/entities/comment_entity.dart}
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
  /// {@macro package:prezza/features/newsfeed/domain/entities/comment_entity.dart}
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
  /// {@macro package:prezza/features/newsfeed/domain/entities/comment_entity.dart}
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
  /// {@macro package:prezza/features/newsfeed/domain/entities/comment_entity.dart}
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
  /// {@macro package:prezza/features/newsfeed/domain/entities/comment_entity.dart}
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
    if ((sourceTypeOf == _typeOf<CommentModel>() ||
            sourceTypeOf == _typeOf<CommentModel?>()) &&
        (targetTypeOf == _typeOf<CommentEntity>() ||
            targetTypeOf == _typeOf<CommentEntity?>())) {
      if (canReturnNull && model == null) {
        return null;
      }
      return (_map__CommentModel__To__CommentEntity((model as CommentModel?))
          as TARGET);
    }
    throw Exception('No ${model.runtimeType} -> $targetTypeOf mapping.');
  }

  CommentEntity _map__CommentModel__To__CommentEntity(CommentModel? input) {
    final model = input;
    if (model == null) {
      throw Exception(
          r'Mapping CommentModel → CommentEntity failed because CommentModel was null, and no default value was provided. '
          r'Consider setting the whenSourceIsNull parameter on the MapType<CommentModel, CommentEntity> to handle null values during mapping.');
    }
    return CommentEntity(
      uuid: model.uuid,
      content: model.content,
      number_of_likes: model.number_of_likes,
      number_of_replies: model.number_of_replies,
      created_at: model.created_at,
      is_i_comment_owner: model.is_i_comment_owner,
      is_i_replay_owner: model.is_i_replay_owner,
      user_info: model.user_info,
      is_liked: model.is_liked,
    );
  }
}

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class CommentEntityAdapter extends TypeAdapter<CommentEntity> {
  @override
  final int typeId = 3;

  @override
  CommentEntity read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return CommentEntity(
      uuid: fields[0] as String,
      content: fields[1] as String,
      number_of_likes: fields[2] as int?,
      number_of_replies: fields[3] as int?,
      created_at: fields[4] as String,
      is_i_comment_owner: fields[5] as bool,
      is_i_replay_owner: fields[7] as bool,
      user_info: fields[6] as UserInfoEntity,
      is_liked: fields[8] as bool,
    );
  }

  @override
  void write(BinaryWriter writer, CommentEntity obj) {
    writer
      ..writeByte(9)
      ..writeByte(0)
      ..write(obj.uuid)
      ..writeByte(1)
      ..write(obj.content)
      ..writeByte(2)
      ..write(obj.number_of_likes)
      ..writeByte(3)
      ..write(obj.number_of_replies)
      ..writeByte(4)
      ..write(obj.created_at)
      ..writeByte(5)
      ..write(obj.is_i_comment_owner)
      ..writeByte(7)
      ..write(obj.is_i_replay_owner)
      ..writeByte(8)
      ..write(obj.is_liked)
      ..writeByte(6)
      ..write(obj.user_info);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CommentEntityAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
