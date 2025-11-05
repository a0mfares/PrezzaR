// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile_social_entity.dart';

// **************************************************************************
// AutoMapprGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, prefer_const_constructors
// ignore_for_file: prefer_const_literals_to_create_immutables
// ignore_for_file: require_trailing_commas, unnecessary_const
// ignore_for_file: unnecessary_lambdas, unnecessary_parenthesis
// ignore_for_file: unnecessary_raw_strings

/// {@template package:prezza/features/newsfeed/domain/entities/profile_social_entity.dart}
/// Available mappings:
/// - `ProfileSocialModel` → `ProfileSocialEntity`.
/// {@endtemplate}
class $ProfileSocialEntity implements AutoMapprInterface {
  const $ProfileSocialEntity();

  Type _typeOf<T>() => T;

  List<AutoMapprInterface> get _modules => const [];

  /// {@macro AutoMapprInterface:canConvert}
  /// {@macro package:prezza/features/newsfeed/domain/entities/profile_social_entity.dart}
  @override
  bool canConvert<SOURCE, TARGET>({bool recursive = true}) {
    final sourceTypeOf = _typeOf<SOURCE>();
    final targetTypeOf = _typeOf<TARGET>();
    if ((sourceTypeOf == _typeOf<ProfileSocialModel>() ||
            sourceTypeOf == _typeOf<ProfileSocialModel?>()) &&
        (targetTypeOf == _typeOf<ProfileSocialEntity>() ||
            targetTypeOf == _typeOf<ProfileSocialEntity?>())) {
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
  /// {@macro package:prezza/features/newsfeed/domain/entities/profile_social_entity.dart}
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
  /// {@macro package:prezza/features/newsfeed/domain/entities/profile_social_entity.dart}
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
  /// {@macro package:prezza/features/newsfeed/domain/entities/profile_social_entity.dart}
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
  /// {@macro package:prezza/features/newsfeed/domain/entities/profile_social_entity.dart}
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
  /// {@macro package:prezza/features/newsfeed/domain/entities/profile_social_entity.dart}
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
  /// {@macro package:prezza/features/newsfeed/domain/entities/profile_social_entity.dart}
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
  /// {@macro package:prezza/features/newsfeed/domain/entities/profile_social_entity.dart}
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
  /// {@macro package:prezza/features/newsfeed/domain/entities/profile_social_entity.dart}
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
    if ((sourceTypeOf == _typeOf<ProfileSocialModel>() ||
            sourceTypeOf == _typeOf<ProfileSocialModel?>()) &&
        (targetTypeOf == _typeOf<ProfileSocialEntity>() ||
            targetTypeOf == _typeOf<ProfileSocialEntity?>())) {
      if (canReturnNull && model == null) {
        return null;
      }
      return (_map__ProfileSocialModel__To__ProfileSocialEntity(
          (model as ProfileSocialModel?)) as TARGET);
    }
    throw Exception('No ${model.runtimeType} -> $targetTypeOf mapping.');
  }

  ProfileSocialEntity _map__ProfileSocialModel__To__ProfileSocialEntity(
      ProfileSocialModel? input) {
    final model = input;
    if (model == null) {
      throw Exception(
          r'Mapping ProfileSocialModel → ProfileSocialEntity failed because ProfileSocialModel was null, and no default value was provided. '
          r'Consider setting the whenSourceIsNull parameter on the MapType<ProfileSocialModel, ProfileSocialEntity> to handle null values during mapping.');
    }
    return ProfileSocialEntity(
      uuid: model.uuid,
      full_name: model.full_name,
      user_name: model.user_name,
      profile_picture_url: model.profile_picture_url,
      number_of_followers: model.number_of_followers,
      number_of_following: model.number_of_following,
      bio: model.bio,
      is_following: model.is_following,
    );
  }
}

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class ProfileSocialEntityAdapter extends TypeAdapter<ProfileSocialEntity> {
  @override
  final int typeId = 3;

  @override
  ProfileSocialEntity read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return ProfileSocialEntity(
      uuid: fields[0] as String,
      full_name: fields[1] as String,
      user_name: fields[2] as String,
      profile_picture_url: fields[3] as String,
      number_of_followers: fields[4] as int,
      number_of_following: fields[5] as int,
      bio: fields[6] as String?,
      is_following: fields[7] as bool?,
    );
  }

  @override
  void write(BinaryWriter writer, ProfileSocialEntity obj) {
    writer
      ..writeByte(8)
      ..writeByte(0)
      ..write(obj.uuid)
      ..writeByte(1)
      ..write(obj.full_name)
      ..writeByte(2)
      ..write(obj.user_name)
      ..writeByte(3)
      ..write(obj.profile_picture_url)
      ..writeByte(4)
      ..write(obj.number_of_followers)
      ..writeByte(5)
      ..write(obj.number_of_following)
      ..writeByte(6)
      ..write(obj.bio)
      ..writeByte(7)
      ..write(obj.is_following);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ProfileSocialEntityAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
