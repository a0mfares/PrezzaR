// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'car_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CarEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() addCar,
    required TResult Function(String uuid) deleteCar,
    required TResult Function() updateCar,
    required TResult Function() searshModel,
    required TResult Function() searshMakes,
    required TResult Function() searshTypes,
    required TResult Function(String make) selectMake,
    required TResult Function(String model) selectModel,
    required TResult Function(String type) selectType,
    required TResult Function(File img) pickImage,
    required TResult Function() intializeEditMode,
    required TResult Function() getCars,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? addCar,
    TResult? Function(String uuid)? deleteCar,
    TResult? Function()? updateCar,
    TResult? Function()? searshModel,
    TResult? Function()? searshMakes,
    TResult? Function()? searshTypes,
    TResult? Function(String make)? selectMake,
    TResult? Function(String model)? selectModel,
    TResult? Function(String type)? selectType,
    TResult? Function(File img)? pickImage,
    TResult? Function()? intializeEditMode,
    TResult? Function()? getCars,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? addCar,
    TResult Function(String uuid)? deleteCar,
    TResult Function()? updateCar,
    TResult Function()? searshModel,
    TResult Function()? searshMakes,
    TResult Function()? searshTypes,
    TResult Function(String make)? selectMake,
    TResult Function(String model)? selectModel,
    TResult Function(String type)? selectType,
    TResult Function(File img)? pickImage,
    TResult Function()? intializeEditMode,
    TResult Function()? getCars,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddCar value) addCar,
    required TResult Function(_DeleteCar value) deleteCar,
    required TResult Function(_UpdateCar value) updateCar,
    required TResult Function(_SearchModel value) searshModel,
    required TResult Function(_searchMakes value) searshMakes,
    required TResult Function(_SearshTypes value) searshTypes,
    required TResult Function(_SelectMake value) selectMake,
    required TResult Function(_SelectModel value) selectModel,
    required TResult Function(_SelectType value) selectType,
    required TResult Function(_PickImage value) pickImage,
    required TResult Function(_IntializeEditMode value) intializeEditMode,
    required TResult Function(_GetCars value) getCars,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AddCar value)? addCar,
    TResult? Function(_DeleteCar value)? deleteCar,
    TResult? Function(_UpdateCar value)? updateCar,
    TResult? Function(_SearchModel value)? searshModel,
    TResult? Function(_searchMakes value)? searshMakes,
    TResult? Function(_SearshTypes value)? searshTypes,
    TResult? Function(_SelectMake value)? selectMake,
    TResult? Function(_SelectModel value)? selectModel,
    TResult? Function(_SelectType value)? selectType,
    TResult? Function(_PickImage value)? pickImage,
    TResult? Function(_IntializeEditMode value)? intializeEditMode,
    TResult? Function(_GetCars value)? getCars,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddCar value)? addCar,
    TResult Function(_DeleteCar value)? deleteCar,
    TResult Function(_UpdateCar value)? updateCar,
    TResult Function(_SearchModel value)? searshModel,
    TResult Function(_searchMakes value)? searshMakes,
    TResult Function(_SearshTypes value)? searshTypes,
    TResult Function(_SelectMake value)? selectMake,
    TResult Function(_SelectModel value)? selectModel,
    TResult Function(_SelectType value)? selectType,
    TResult Function(_PickImage value)? pickImage,
    TResult Function(_IntializeEditMode value)? intializeEditMode,
    TResult Function(_GetCars value)? getCars,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CarEventCopyWith<$Res> {
  factory $CarEventCopyWith(CarEvent value, $Res Function(CarEvent) then) =
      _$CarEventCopyWithImpl<$Res, CarEvent>;
}

/// @nodoc
class _$CarEventCopyWithImpl<$Res, $Val extends CarEvent>
    implements $CarEventCopyWith<$Res> {
  _$CarEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CarEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$AddCarImplCopyWith<$Res> {
  factory _$$AddCarImplCopyWith(
          _$AddCarImpl value, $Res Function(_$AddCarImpl) then) =
      __$$AddCarImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AddCarImplCopyWithImpl<$Res>
    extends _$CarEventCopyWithImpl<$Res, _$AddCarImpl>
    implements _$$AddCarImplCopyWith<$Res> {
  __$$AddCarImplCopyWithImpl(
      _$AddCarImpl _value, $Res Function(_$AddCarImpl) _then)
      : super(_value, _then);

  /// Create a copy of CarEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$AddCarImpl implements _AddCar {
  const _$AddCarImpl();

  @override
  String toString() {
    return 'CarEvent.addCar()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AddCarImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() addCar,
    required TResult Function(String uuid) deleteCar,
    required TResult Function() updateCar,
    required TResult Function() searshModel,
    required TResult Function() searshMakes,
    required TResult Function() searshTypes,
    required TResult Function(String make) selectMake,
    required TResult Function(String model) selectModel,
    required TResult Function(String type) selectType,
    required TResult Function(File img) pickImage,
    required TResult Function() intializeEditMode,
    required TResult Function() getCars,
  }) {
    return addCar();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? addCar,
    TResult? Function(String uuid)? deleteCar,
    TResult? Function()? updateCar,
    TResult? Function()? searshModel,
    TResult? Function()? searshMakes,
    TResult? Function()? searshTypes,
    TResult? Function(String make)? selectMake,
    TResult? Function(String model)? selectModel,
    TResult? Function(String type)? selectType,
    TResult? Function(File img)? pickImage,
    TResult? Function()? intializeEditMode,
    TResult? Function()? getCars,
  }) {
    return addCar?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? addCar,
    TResult Function(String uuid)? deleteCar,
    TResult Function()? updateCar,
    TResult Function()? searshModel,
    TResult Function()? searshMakes,
    TResult Function()? searshTypes,
    TResult Function(String make)? selectMake,
    TResult Function(String model)? selectModel,
    TResult Function(String type)? selectType,
    TResult Function(File img)? pickImage,
    TResult Function()? intializeEditMode,
    TResult Function()? getCars,
    required TResult orElse(),
  }) {
    if (addCar != null) {
      return addCar();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddCar value) addCar,
    required TResult Function(_DeleteCar value) deleteCar,
    required TResult Function(_UpdateCar value) updateCar,
    required TResult Function(_SearchModel value) searshModel,
    required TResult Function(_searchMakes value) searshMakes,
    required TResult Function(_SearshTypes value) searshTypes,
    required TResult Function(_SelectMake value) selectMake,
    required TResult Function(_SelectModel value) selectModel,
    required TResult Function(_SelectType value) selectType,
    required TResult Function(_PickImage value) pickImage,
    required TResult Function(_IntializeEditMode value) intializeEditMode,
    required TResult Function(_GetCars value) getCars,
  }) {
    return addCar(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AddCar value)? addCar,
    TResult? Function(_DeleteCar value)? deleteCar,
    TResult? Function(_UpdateCar value)? updateCar,
    TResult? Function(_SearchModel value)? searshModel,
    TResult? Function(_searchMakes value)? searshMakes,
    TResult? Function(_SearshTypes value)? searshTypes,
    TResult? Function(_SelectMake value)? selectMake,
    TResult? Function(_SelectModel value)? selectModel,
    TResult? Function(_SelectType value)? selectType,
    TResult? Function(_PickImage value)? pickImage,
    TResult? Function(_IntializeEditMode value)? intializeEditMode,
    TResult? Function(_GetCars value)? getCars,
  }) {
    return addCar?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddCar value)? addCar,
    TResult Function(_DeleteCar value)? deleteCar,
    TResult Function(_UpdateCar value)? updateCar,
    TResult Function(_SearchModel value)? searshModel,
    TResult Function(_searchMakes value)? searshMakes,
    TResult Function(_SearshTypes value)? searshTypes,
    TResult Function(_SelectMake value)? selectMake,
    TResult Function(_SelectModel value)? selectModel,
    TResult Function(_SelectType value)? selectType,
    TResult Function(_PickImage value)? pickImage,
    TResult Function(_IntializeEditMode value)? intializeEditMode,
    TResult Function(_GetCars value)? getCars,
    required TResult orElse(),
  }) {
    if (addCar != null) {
      return addCar(this);
    }
    return orElse();
  }
}

abstract class _AddCar implements CarEvent {
  const factory _AddCar() = _$AddCarImpl;
}

/// @nodoc
abstract class _$$DeleteCarImplCopyWith<$Res> {
  factory _$$DeleteCarImplCopyWith(
          _$DeleteCarImpl value, $Res Function(_$DeleteCarImpl) then) =
      __$$DeleteCarImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String uuid});
}

/// @nodoc
class __$$DeleteCarImplCopyWithImpl<$Res>
    extends _$CarEventCopyWithImpl<$Res, _$DeleteCarImpl>
    implements _$$DeleteCarImplCopyWith<$Res> {
  __$$DeleteCarImplCopyWithImpl(
      _$DeleteCarImpl _value, $Res Function(_$DeleteCarImpl) _then)
      : super(_value, _then);

  /// Create a copy of CarEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uuid = null,
  }) {
    return _then(_$DeleteCarImpl(
      null == uuid
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$DeleteCarImpl implements _DeleteCar {
  const _$DeleteCarImpl(this.uuid);

  @override
  final String uuid;

  @override
  String toString() {
    return 'CarEvent.deleteCar(uuid: $uuid)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteCarImpl &&
            (identical(other.uuid, uuid) || other.uuid == uuid));
  }

  @override
  int get hashCode => Object.hash(runtimeType, uuid);

  /// Create a copy of CarEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteCarImplCopyWith<_$DeleteCarImpl> get copyWith =>
      __$$DeleteCarImplCopyWithImpl<_$DeleteCarImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() addCar,
    required TResult Function(String uuid) deleteCar,
    required TResult Function() updateCar,
    required TResult Function() searshModel,
    required TResult Function() searshMakes,
    required TResult Function() searshTypes,
    required TResult Function(String make) selectMake,
    required TResult Function(String model) selectModel,
    required TResult Function(String type) selectType,
    required TResult Function(File img) pickImage,
    required TResult Function() intializeEditMode,
    required TResult Function() getCars,
  }) {
    return deleteCar(uuid);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? addCar,
    TResult? Function(String uuid)? deleteCar,
    TResult? Function()? updateCar,
    TResult? Function()? searshModel,
    TResult? Function()? searshMakes,
    TResult? Function()? searshTypes,
    TResult? Function(String make)? selectMake,
    TResult? Function(String model)? selectModel,
    TResult? Function(String type)? selectType,
    TResult? Function(File img)? pickImage,
    TResult? Function()? intializeEditMode,
    TResult? Function()? getCars,
  }) {
    return deleteCar?.call(uuid);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? addCar,
    TResult Function(String uuid)? deleteCar,
    TResult Function()? updateCar,
    TResult Function()? searshModel,
    TResult Function()? searshMakes,
    TResult Function()? searshTypes,
    TResult Function(String make)? selectMake,
    TResult Function(String model)? selectModel,
    TResult Function(String type)? selectType,
    TResult Function(File img)? pickImage,
    TResult Function()? intializeEditMode,
    TResult Function()? getCars,
    required TResult orElse(),
  }) {
    if (deleteCar != null) {
      return deleteCar(uuid);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddCar value) addCar,
    required TResult Function(_DeleteCar value) deleteCar,
    required TResult Function(_UpdateCar value) updateCar,
    required TResult Function(_SearchModel value) searshModel,
    required TResult Function(_searchMakes value) searshMakes,
    required TResult Function(_SearshTypes value) searshTypes,
    required TResult Function(_SelectMake value) selectMake,
    required TResult Function(_SelectModel value) selectModel,
    required TResult Function(_SelectType value) selectType,
    required TResult Function(_PickImage value) pickImage,
    required TResult Function(_IntializeEditMode value) intializeEditMode,
    required TResult Function(_GetCars value) getCars,
  }) {
    return deleteCar(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AddCar value)? addCar,
    TResult? Function(_DeleteCar value)? deleteCar,
    TResult? Function(_UpdateCar value)? updateCar,
    TResult? Function(_SearchModel value)? searshModel,
    TResult? Function(_searchMakes value)? searshMakes,
    TResult? Function(_SearshTypes value)? searshTypes,
    TResult? Function(_SelectMake value)? selectMake,
    TResult? Function(_SelectModel value)? selectModel,
    TResult? Function(_SelectType value)? selectType,
    TResult? Function(_PickImage value)? pickImage,
    TResult? Function(_IntializeEditMode value)? intializeEditMode,
    TResult? Function(_GetCars value)? getCars,
  }) {
    return deleteCar?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddCar value)? addCar,
    TResult Function(_DeleteCar value)? deleteCar,
    TResult Function(_UpdateCar value)? updateCar,
    TResult Function(_SearchModel value)? searshModel,
    TResult Function(_searchMakes value)? searshMakes,
    TResult Function(_SearshTypes value)? searshTypes,
    TResult Function(_SelectMake value)? selectMake,
    TResult Function(_SelectModel value)? selectModel,
    TResult Function(_SelectType value)? selectType,
    TResult Function(_PickImage value)? pickImage,
    TResult Function(_IntializeEditMode value)? intializeEditMode,
    TResult Function(_GetCars value)? getCars,
    required TResult orElse(),
  }) {
    if (deleteCar != null) {
      return deleteCar(this);
    }
    return orElse();
  }
}

abstract class _DeleteCar implements CarEvent {
  const factory _DeleteCar(final String uuid) = _$DeleteCarImpl;

  String get uuid;

  /// Create a copy of CarEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DeleteCarImplCopyWith<_$DeleteCarImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateCarImplCopyWith<$Res> {
  factory _$$UpdateCarImplCopyWith(
          _$UpdateCarImpl value, $Res Function(_$UpdateCarImpl) then) =
      __$$UpdateCarImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UpdateCarImplCopyWithImpl<$Res>
    extends _$CarEventCopyWithImpl<$Res, _$UpdateCarImpl>
    implements _$$UpdateCarImplCopyWith<$Res> {
  __$$UpdateCarImplCopyWithImpl(
      _$UpdateCarImpl _value, $Res Function(_$UpdateCarImpl) _then)
      : super(_value, _then);

  /// Create a copy of CarEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$UpdateCarImpl implements _UpdateCar {
  const _$UpdateCarImpl();

  @override
  String toString() {
    return 'CarEvent.updateCar()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$UpdateCarImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() addCar,
    required TResult Function(String uuid) deleteCar,
    required TResult Function() updateCar,
    required TResult Function() searshModel,
    required TResult Function() searshMakes,
    required TResult Function() searshTypes,
    required TResult Function(String make) selectMake,
    required TResult Function(String model) selectModel,
    required TResult Function(String type) selectType,
    required TResult Function(File img) pickImage,
    required TResult Function() intializeEditMode,
    required TResult Function() getCars,
  }) {
    return updateCar();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? addCar,
    TResult? Function(String uuid)? deleteCar,
    TResult? Function()? updateCar,
    TResult? Function()? searshModel,
    TResult? Function()? searshMakes,
    TResult? Function()? searshTypes,
    TResult? Function(String make)? selectMake,
    TResult? Function(String model)? selectModel,
    TResult? Function(String type)? selectType,
    TResult? Function(File img)? pickImage,
    TResult? Function()? intializeEditMode,
    TResult? Function()? getCars,
  }) {
    return updateCar?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? addCar,
    TResult Function(String uuid)? deleteCar,
    TResult Function()? updateCar,
    TResult Function()? searshModel,
    TResult Function()? searshMakes,
    TResult Function()? searshTypes,
    TResult Function(String make)? selectMake,
    TResult Function(String model)? selectModel,
    TResult Function(String type)? selectType,
    TResult Function(File img)? pickImage,
    TResult Function()? intializeEditMode,
    TResult Function()? getCars,
    required TResult orElse(),
  }) {
    if (updateCar != null) {
      return updateCar();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddCar value) addCar,
    required TResult Function(_DeleteCar value) deleteCar,
    required TResult Function(_UpdateCar value) updateCar,
    required TResult Function(_SearchModel value) searshModel,
    required TResult Function(_searchMakes value) searshMakes,
    required TResult Function(_SearshTypes value) searshTypes,
    required TResult Function(_SelectMake value) selectMake,
    required TResult Function(_SelectModel value) selectModel,
    required TResult Function(_SelectType value) selectType,
    required TResult Function(_PickImage value) pickImage,
    required TResult Function(_IntializeEditMode value) intializeEditMode,
    required TResult Function(_GetCars value) getCars,
  }) {
    return updateCar(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AddCar value)? addCar,
    TResult? Function(_DeleteCar value)? deleteCar,
    TResult? Function(_UpdateCar value)? updateCar,
    TResult? Function(_SearchModel value)? searshModel,
    TResult? Function(_searchMakes value)? searshMakes,
    TResult? Function(_SearshTypes value)? searshTypes,
    TResult? Function(_SelectMake value)? selectMake,
    TResult? Function(_SelectModel value)? selectModel,
    TResult? Function(_SelectType value)? selectType,
    TResult? Function(_PickImage value)? pickImage,
    TResult? Function(_IntializeEditMode value)? intializeEditMode,
    TResult? Function(_GetCars value)? getCars,
  }) {
    return updateCar?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddCar value)? addCar,
    TResult Function(_DeleteCar value)? deleteCar,
    TResult Function(_UpdateCar value)? updateCar,
    TResult Function(_SearchModel value)? searshModel,
    TResult Function(_searchMakes value)? searshMakes,
    TResult Function(_SearshTypes value)? searshTypes,
    TResult Function(_SelectMake value)? selectMake,
    TResult Function(_SelectModel value)? selectModel,
    TResult Function(_SelectType value)? selectType,
    TResult Function(_PickImage value)? pickImage,
    TResult Function(_IntializeEditMode value)? intializeEditMode,
    TResult Function(_GetCars value)? getCars,
    required TResult orElse(),
  }) {
    if (updateCar != null) {
      return updateCar(this);
    }
    return orElse();
  }
}

abstract class _UpdateCar implements CarEvent {
  const factory _UpdateCar() = _$UpdateCarImpl;
}

/// @nodoc
abstract class _$$SearchModelImplCopyWith<$Res> {
  factory _$$SearchModelImplCopyWith(
          _$SearchModelImpl value, $Res Function(_$SearchModelImpl) then) =
      __$$SearchModelImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SearchModelImplCopyWithImpl<$Res>
    extends _$CarEventCopyWithImpl<$Res, _$SearchModelImpl>
    implements _$$SearchModelImplCopyWith<$Res> {
  __$$SearchModelImplCopyWithImpl(
      _$SearchModelImpl _value, $Res Function(_$SearchModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of CarEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$SearchModelImpl implements _SearchModel {
  const _$SearchModelImpl();

  @override
  String toString() {
    return 'CarEvent.searshModel()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SearchModelImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() addCar,
    required TResult Function(String uuid) deleteCar,
    required TResult Function() updateCar,
    required TResult Function() searshModel,
    required TResult Function() searshMakes,
    required TResult Function() searshTypes,
    required TResult Function(String make) selectMake,
    required TResult Function(String model) selectModel,
    required TResult Function(String type) selectType,
    required TResult Function(File img) pickImage,
    required TResult Function() intializeEditMode,
    required TResult Function() getCars,
  }) {
    return searshModel();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? addCar,
    TResult? Function(String uuid)? deleteCar,
    TResult? Function()? updateCar,
    TResult? Function()? searshModel,
    TResult? Function()? searshMakes,
    TResult? Function()? searshTypes,
    TResult? Function(String make)? selectMake,
    TResult? Function(String model)? selectModel,
    TResult? Function(String type)? selectType,
    TResult? Function(File img)? pickImage,
    TResult? Function()? intializeEditMode,
    TResult? Function()? getCars,
  }) {
    return searshModel?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? addCar,
    TResult Function(String uuid)? deleteCar,
    TResult Function()? updateCar,
    TResult Function()? searshModel,
    TResult Function()? searshMakes,
    TResult Function()? searshTypes,
    TResult Function(String make)? selectMake,
    TResult Function(String model)? selectModel,
    TResult Function(String type)? selectType,
    TResult Function(File img)? pickImage,
    TResult Function()? intializeEditMode,
    TResult Function()? getCars,
    required TResult orElse(),
  }) {
    if (searshModel != null) {
      return searshModel();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddCar value) addCar,
    required TResult Function(_DeleteCar value) deleteCar,
    required TResult Function(_UpdateCar value) updateCar,
    required TResult Function(_SearchModel value) searshModel,
    required TResult Function(_searchMakes value) searshMakes,
    required TResult Function(_SearshTypes value) searshTypes,
    required TResult Function(_SelectMake value) selectMake,
    required TResult Function(_SelectModel value) selectModel,
    required TResult Function(_SelectType value) selectType,
    required TResult Function(_PickImage value) pickImage,
    required TResult Function(_IntializeEditMode value) intializeEditMode,
    required TResult Function(_GetCars value) getCars,
  }) {
    return searshModel(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AddCar value)? addCar,
    TResult? Function(_DeleteCar value)? deleteCar,
    TResult? Function(_UpdateCar value)? updateCar,
    TResult? Function(_SearchModel value)? searshModel,
    TResult? Function(_searchMakes value)? searshMakes,
    TResult? Function(_SearshTypes value)? searshTypes,
    TResult? Function(_SelectMake value)? selectMake,
    TResult? Function(_SelectModel value)? selectModel,
    TResult? Function(_SelectType value)? selectType,
    TResult? Function(_PickImage value)? pickImage,
    TResult? Function(_IntializeEditMode value)? intializeEditMode,
    TResult? Function(_GetCars value)? getCars,
  }) {
    return searshModel?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddCar value)? addCar,
    TResult Function(_DeleteCar value)? deleteCar,
    TResult Function(_UpdateCar value)? updateCar,
    TResult Function(_SearchModel value)? searshModel,
    TResult Function(_searchMakes value)? searshMakes,
    TResult Function(_SearshTypes value)? searshTypes,
    TResult Function(_SelectMake value)? selectMake,
    TResult Function(_SelectModel value)? selectModel,
    TResult Function(_SelectType value)? selectType,
    TResult Function(_PickImage value)? pickImage,
    TResult Function(_IntializeEditMode value)? intializeEditMode,
    TResult Function(_GetCars value)? getCars,
    required TResult orElse(),
  }) {
    if (searshModel != null) {
      return searshModel(this);
    }
    return orElse();
  }
}

abstract class _SearchModel implements CarEvent {
  const factory _SearchModel() = _$SearchModelImpl;
}

/// @nodoc
abstract class _$$searchMakesImplCopyWith<$Res> {
  factory _$$searchMakesImplCopyWith(
          _$searchMakesImpl value, $Res Function(_$searchMakesImpl) then) =
      __$$searchMakesImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$searchMakesImplCopyWithImpl<$Res>
    extends _$CarEventCopyWithImpl<$Res, _$searchMakesImpl>
    implements _$$searchMakesImplCopyWith<$Res> {
  __$$searchMakesImplCopyWithImpl(
      _$searchMakesImpl _value, $Res Function(_$searchMakesImpl) _then)
      : super(_value, _then);

  /// Create a copy of CarEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$searchMakesImpl implements _searchMakes {
  const _$searchMakesImpl();

  @override
  String toString() {
    return 'CarEvent.searshMakes()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$searchMakesImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() addCar,
    required TResult Function(String uuid) deleteCar,
    required TResult Function() updateCar,
    required TResult Function() searshModel,
    required TResult Function() searshMakes,
    required TResult Function() searshTypes,
    required TResult Function(String make) selectMake,
    required TResult Function(String model) selectModel,
    required TResult Function(String type) selectType,
    required TResult Function(File img) pickImage,
    required TResult Function() intializeEditMode,
    required TResult Function() getCars,
  }) {
    return searshMakes();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? addCar,
    TResult? Function(String uuid)? deleteCar,
    TResult? Function()? updateCar,
    TResult? Function()? searshModel,
    TResult? Function()? searshMakes,
    TResult? Function()? searshTypes,
    TResult? Function(String make)? selectMake,
    TResult? Function(String model)? selectModel,
    TResult? Function(String type)? selectType,
    TResult? Function(File img)? pickImage,
    TResult? Function()? intializeEditMode,
    TResult? Function()? getCars,
  }) {
    return searshMakes?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? addCar,
    TResult Function(String uuid)? deleteCar,
    TResult Function()? updateCar,
    TResult Function()? searshModel,
    TResult Function()? searshMakes,
    TResult Function()? searshTypes,
    TResult Function(String make)? selectMake,
    TResult Function(String model)? selectModel,
    TResult Function(String type)? selectType,
    TResult Function(File img)? pickImage,
    TResult Function()? intializeEditMode,
    TResult Function()? getCars,
    required TResult orElse(),
  }) {
    if (searshMakes != null) {
      return searshMakes();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddCar value) addCar,
    required TResult Function(_DeleteCar value) deleteCar,
    required TResult Function(_UpdateCar value) updateCar,
    required TResult Function(_SearchModel value) searshModel,
    required TResult Function(_searchMakes value) searshMakes,
    required TResult Function(_SearshTypes value) searshTypes,
    required TResult Function(_SelectMake value) selectMake,
    required TResult Function(_SelectModel value) selectModel,
    required TResult Function(_SelectType value) selectType,
    required TResult Function(_PickImage value) pickImage,
    required TResult Function(_IntializeEditMode value) intializeEditMode,
    required TResult Function(_GetCars value) getCars,
  }) {
    return searshMakes(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AddCar value)? addCar,
    TResult? Function(_DeleteCar value)? deleteCar,
    TResult? Function(_UpdateCar value)? updateCar,
    TResult? Function(_SearchModel value)? searshModel,
    TResult? Function(_searchMakes value)? searshMakes,
    TResult? Function(_SearshTypes value)? searshTypes,
    TResult? Function(_SelectMake value)? selectMake,
    TResult? Function(_SelectModel value)? selectModel,
    TResult? Function(_SelectType value)? selectType,
    TResult? Function(_PickImage value)? pickImage,
    TResult? Function(_IntializeEditMode value)? intializeEditMode,
    TResult? Function(_GetCars value)? getCars,
  }) {
    return searshMakes?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddCar value)? addCar,
    TResult Function(_DeleteCar value)? deleteCar,
    TResult Function(_UpdateCar value)? updateCar,
    TResult Function(_SearchModel value)? searshModel,
    TResult Function(_searchMakes value)? searshMakes,
    TResult Function(_SearshTypes value)? searshTypes,
    TResult Function(_SelectMake value)? selectMake,
    TResult Function(_SelectModel value)? selectModel,
    TResult Function(_SelectType value)? selectType,
    TResult Function(_PickImage value)? pickImage,
    TResult Function(_IntializeEditMode value)? intializeEditMode,
    TResult Function(_GetCars value)? getCars,
    required TResult orElse(),
  }) {
    if (searshMakes != null) {
      return searshMakes(this);
    }
    return orElse();
  }
}

abstract class _searchMakes implements CarEvent {
  const factory _searchMakes() = _$searchMakesImpl;
}

/// @nodoc
abstract class _$$SearshTypesImplCopyWith<$Res> {
  factory _$$SearshTypesImplCopyWith(
          _$SearshTypesImpl value, $Res Function(_$SearshTypesImpl) then) =
      __$$SearshTypesImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SearshTypesImplCopyWithImpl<$Res>
    extends _$CarEventCopyWithImpl<$Res, _$SearshTypesImpl>
    implements _$$SearshTypesImplCopyWith<$Res> {
  __$$SearshTypesImplCopyWithImpl(
      _$SearshTypesImpl _value, $Res Function(_$SearshTypesImpl) _then)
      : super(_value, _then);

  /// Create a copy of CarEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$SearshTypesImpl implements _SearshTypes {
  const _$SearshTypesImpl();

  @override
  String toString() {
    return 'CarEvent.searshTypes()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SearshTypesImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() addCar,
    required TResult Function(String uuid) deleteCar,
    required TResult Function() updateCar,
    required TResult Function() searshModel,
    required TResult Function() searshMakes,
    required TResult Function() searshTypes,
    required TResult Function(String make) selectMake,
    required TResult Function(String model) selectModel,
    required TResult Function(String type) selectType,
    required TResult Function(File img) pickImage,
    required TResult Function() intializeEditMode,
    required TResult Function() getCars,
  }) {
    return searshTypes();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? addCar,
    TResult? Function(String uuid)? deleteCar,
    TResult? Function()? updateCar,
    TResult? Function()? searshModel,
    TResult? Function()? searshMakes,
    TResult? Function()? searshTypes,
    TResult? Function(String make)? selectMake,
    TResult? Function(String model)? selectModel,
    TResult? Function(String type)? selectType,
    TResult? Function(File img)? pickImage,
    TResult? Function()? intializeEditMode,
    TResult? Function()? getCars,
  }) {
    return searshTypes?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? addCar,
    TResult Function(String uuid)? deleteCar,
    TResult Function()? updateCar,
    TResult Function()? searshModel,
    TResult Function()? searshMakes,
    TResult Function()? searshTypes,
    TResult Function(String make)? selectMake,
    TResult Function(String model)? selectModel,
    TResult Function(String type)? selectType,
    TResult Function(File img)? pickImage,
    TResult Function()? intializeEditMode,
    TResult Function()? getCars,
    required TResult orElse(),
  }) {
    if (searshTypes != null) {
      return searshTypes();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddCar value) addCar,
    required TResult Function(_DeleteCar value) deleteCar,
    required TResult Function(_UpdateCar value) updateCar,
    required TResult Function(_SearchModel value) searshModel,
    required TResult Function(_searchMakes value) searshMakes,
    required TResult Function(_SearshTypes value) searshTypes,
    required TResult Function(_SelectMake value) selectMake,
    required TResult Function(_SelectModel value) selectModel,
    required TResult Function(_SelectType value) selectType,
    required TResult Function(_PickImage value) pickImage,
    required TResult Function(_IntializeEditMode value) intializeEditMode,
    required TResult Function(_GetCars value) getCars,
  }) {
    return searshTypes(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AddCar value)? addCar,
    TResult? Function(_DeleteCar value)? deleteCar,
    TResult? Function(_UpdateCar value)? updateCar,
    TResult? Function(_SearchModel value)? searshModel,
    TResult? Function(_searchMakes value)? searshMakes,
    TResult? Function(_SearshTypes value)? searshTypes,
    TResult? Function(_SelectMake value)? selectMake,
    TResult? Function(_SelectModel value)? selectModel,
    TResult? Function(_SelectType value)? selectType,
    TResult? Function(_PickImage value)? pickImage,
    TResult? Function(_IntializeEditMode value)? intializeEditMode,
    TResult? Function(_GetCars value)? getCars,
  }) {
    return searshTypes?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddCar value)? addCar,
    TResult Function(_DeleteCar value)? deleteCar,
    TResult Function(_UpdateCar value)? updateCar,
    TResult Function(_SearchModel value)? searshModel,
    TResult Function(_searchMakes value)? searshMakes,
    TResult Function(_SearshTypes value)? searshTypes,
    TResult Function(_SelectMake value)? selectMake,
    TResult Function(_SelectModel value)? selectModel,
    TResult Function(_SelectType value)? selectType,
    TResult Function(_PickImage value)? pickImage,
    TResult Function(_IntializeEditMode value)? intializeEditMode,
    TResult Function(_GetCars value)? getCars,
    required TResult orElse(),
  }) {
    if (searshTypes != null) {
      return searshTypes(this);
    }
    return orElse();
  }
}

abstract class _SearshTypes implements CarEvent {
  const factory _SearshTypes() = _$SearshTypesImpl;
}

/// @nodoc
abstract class _$$SelectMakeImplCopyWith<$Res> {
  factory _$$SelectMakeImplCopyWith(
          _$SelectMakeImpl value, $Res Function(_$SelectMakeImpl) then) =
      __$$SelectMakeImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String make});
}

/// @nodoc
class __$$SelectMakeImplCopyWithImpl<$Res>
    extends _$CarEventCopyWithImpl<$Res, _$SelectMakeImpl>
    implements _$$SelectMakeImplCopyWith<$Res> {
  __$$SelectMakeImplCopyWithImpl(
      _$SelectMakeImpl _value, $Res Function(_$SelectMakeImpl) _then)
      : super(_value, _then);

  /// Create a copy of CarEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? make = null,
  }) {
    return _then(_$SelectMakeImpl(
      null == make
          ? _value.make
          : make // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SelectMakeImpl implements _SelectMake {
  const _$SelectMakeImpl(this.make);

  @override
  final String make;

  @override
  String toString() {
    return 'CarEvent.selectMake(make: $make)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SelectMakeImpl &&
            (identical(other.make, make) || other.make == make));
  }

  @override
  int get hashCode => Object.hash(runtimeType, make);

  /// Create a copy of CarEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SelectMakeImplCopyWith<_$SelectMakeImpl> get copyWith =>
      __$$SelectMakeImplCopyWithImpl<_$SelectMakeImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() addCar,
    required TResult Function(String uuid) deleteCar,
    required TResult Function() updateCar,
    required TResult Function() searshModel,
    required TResult Function() searshMakes,
    required TResult Function() searshTypes,
    required TResult Function(String make) selectMake,
    required TResult Function(String model) selectModel,
    required TResult Function(String type) selectType,
    required TResult Function(File img) pickImage,
    required TResult Function() intializeEditMode,
    required TResult Function() getCars,
  }) {
    return selectMake(make);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? addCar,
    TResult? Function(String uuid)? deleteCar,
    TResult? Function()? updateCar,
    TResult? Function()? searshModel,
    TResult? Function()? searshMakes,
    TResult? Function()? searshTypes,
    TResult? Function(String make)? selectMake,
    TResult? Function(String model)? selectModel,
    TResult? Function(String type)? selectType,
    TResult? Function(File img)? pickImage,
    TResult? Function()? intializeEditMode,
    TResult? Function()? getCars,
  }) {
    return selectMake?.call(make);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? addCar,
    TResult Function(String uuid)? deleteCar,
    TResult Function()? updateCar,
    TResult Function()? searshModel,
    TResult Function()? searshMakes,
    TResult Function()? searshTypes,
    TResult Function(String make)? selectMake,
    TResult Function(String model)? selectModel,
    TResult Function(String type)? selectType,
    TResult Function(File img)? pickImage,
    TResult Function()? intializeEditMode,
    TResult Function()? getCars,
    required TResult orElse(),
  }) {
    if (selectMake != null) {
      return selectMake(make);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddCar value) addCar,
    required TResult Function(_DeleteCar value) deleteCar,
    required TResult Function(_UpdateCar value) updateCar,
    required TResult Function(_SearchModel value) searshModel,
    required TResult Function(_searchMakes value) searshMakes,
    required TResult Function(_SearshTypes value) searshTypes,
    required TResult Function(_SelectMake value) selectMake,
    required TResult Function(_SelectModel value) selectModel,
    required TResult Function(_SelectType value) selectType,
    required TResult Function(_PickImage value) pickImage,
    required TResult Function(_IntializeEditMode value) intializeEditMode,
    required TResult Function(_GetCars value) getCars,
  }) {
    return selectMake(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AddCar value)? addCar,
    TResult? Function(_DeleteCar value)? deleteCar,
    TResult? Function(_UpdateCar value)? updateCar,
    TResult? Function(_SearchModel value)? searshModel,
    TResult? Function(_searchMakes value)? searshMakes,
    TResult? Function(_SearshTypes value)? searshTypes,
    TResult? Function(_SelectMake value)? selectMake,
    TResult? Function(_SelectModel value)? selectModel,
    TResult? Function(_SelectType value)? selectType,
    TResult? Function(_PickImage value)? pickImage,
    TResult? Function(_IntializeEditMode value)? intializeEditMode,
    TResult? Function(_GetCars value)? getCars,
  }) {
    return selectMake?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddCar value)? addCar,
    TResult Function(_DeleteCar value)? deleteCar,
    TResult Function(_UpdateCar value)? updateCar,
    TResult Function(_SearchModel value)? searshModel,
    TResult Function(_searchMakes value)? searshMakes,
    TResult Function(_SearshTypes value)? searshTypes,
    TResult Function(_SelectMake value)? selectMake,
    TResult Function(_SelectModel value)? selectModel,
    TResult Function(_SelectType value)? selectType,
    TResult Function(_PickImage value)? pickImage,
    TResult Function(_IntializeEditMode value)? intializeEditMode,
    TResult Function(_GetCars value)? getCars,
    required TResult orElse(),
  }) {
    if (selectMake != null) {
      return selectMake(this);
    }
    return orElse();
  }
}

abstract class _SelectMake implements CarEvent {
  const factory _SelectMake(final String make) = _$SelectMakeImpl;

  String get make;

  /// Create a copy of CarEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SelectMakeImplCopyWith<_$SelectMakeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SelectModelImplCopyWith<$Res> {
  factory _$$SelectModelImplCopyWith(
          _$SelectModelImpl value, $Res Function(_$SelectModelImpl) then) =
      __$$SelectModelImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String model});
}

/// @nodoc
class __$$SelectModelImplCopyWithImpl<$Res>
    extends _$CarEventCopyWithImpl<$Res, _$SelectModelImpl>
    implements _$$SelectModelImplCopyWith<$Res> {
  __$$SelectModelImplCopyWithImpl(
      _$SelectModelImpl _value, $Res Function(_$SelectModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of CarEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? model = null,
  }) {
    return _then(_$SelectModelImpl(
      null == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SelectModelImpl implements _SelectModel {
  const _$SelectModelImpl(this.model);

  @override
  final String model;

  @override
  String toString() {
    return 'CarEvent.selectModel(model: $model)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SelectModelImpl &&
            (identical(other.model, model) || other.model == model));
  }

  @override
  int get hashCode => Object.hash(runtimeType, model);

  /// Create a copy of CarEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SelectModelImplCopyWith<_$SelectModelImpl> get copyWith =>
      __$$SelectModelImplCopyWithImpl<_$SelectModelImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() addCar,
    required TResult Function(String uuid) deleteCar,
    required TResult Function() updateCar,
    required TResult Function() searshModel,
    required TResult Function() searshMakes,
    required TResult Function() searshTypes,
    required TResult Function(String make) selectMake,
    required TResult Function(String model) selectModel,
    required TResult Function(String type) selectType,
    required TResult Function(File img) pickImage,
    required TResult Function() intializeEditMode,
    required TResult Function() getCars,
  }) {
    return selectModel(model);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? addCar,
    TResult? Function(String uuid)? deleteCar,
    TResult? Function()? updateCar,
    TResult? Function()? searshModel,
    TResult? Function()? searshMakes,
    TResult? Function()? searshTypes,
    TResult? Function(String make)? selectMake,
    TResult? Function(String model)? selectModel,
    TResult? Function(String type)? selectType,
    TResult? Function(File img)? pickImage,
    TResult? Function()? intializeEditMode,
    TResult? Function()? getCars,
  }) {
    return selectModel?.call(model);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? addCar,
    TResult Function(String uuid)? deleteCar,
    TResult Function()? updateCar,
    TResult Function()? searshModel,
    TResult Function()? searshMakes,
    TResult Function()? searshTypes,
    TResult Function(String make)? selectMake,
    TResult Function(String model)? selectModel,
    TResult Function(String type)? selectType,
    TResult Function(File img)? pickImage,
    TResult Function()? intializeEditMode,
    TResult Function()? getCars,
    required TResult orElse(),
  }) {
    if (selectModel != null) {
      return selectModel(model);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddCar value) addCar,
    required TResult Function(_DeleteCar value) deleteCar,
    required TResult Function(_UpdateCar value) updateCar,
    required TResult Function(_SearchModel value) searshModel,
    required TResult Function(_searchMakes value) searshMakes,
    required TResult Function(_SearshTypes value) searshTypes,
    required TResult Function(_SelectMake value) selectMake,
    required TResult Function(_SelectModel value) selectModel,
    required TResult Function(_SelectType value) selectType,
    required TResult Function(_PickImage value) pickImage,
    required TResult Function(_IntializeEditMode value) intializeEditMode,
    required TResult Function(_GetCars value) getCars,
  }) {
    return selectModel(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AddCar value)? addCar,
    TResult? Function(_DeleteCar value)? deleteCar,
    TResult? Function(_UpdateCar value)? updateCar,
    TResult? Function(_SearchModel value)? searshModel,
    TResult? Function(_searchMakes value)? searshMakes,
    TResult? Function(_SearshTypes value)? searshTypes,
    TResult? Function(_SelectMake value)? selectMake,
    TResult? Function(_SelectModel value)? selectModel,
    TResult? Function(_SelectType value)? selectType,
    TResult? Function(_PickImage value)? pickImage,
    TResult? Function(_IntializeEditMode value)? intializeEditMode,
    TResult? Function(_GetCars value)? getCars,
  }) {
    return selectModel?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddCar value)? addCar,
    TResult Function(_DeleteCar value)? deleteCar,
    TResult Function(_UpdateCar value)? updateCar,
    TResult Function(_SearchModel value)? searshModel,
    TResult Function(_searchMakes value)? searshMakes,
    TResult Function(_SearshTypes value)? searshTypes,
    TResult Function(_SelectMake value)? selectMake,
    TResult Function(_SelectModel value)? selectModel,
    TResult Function(_SelectType value)? selectType,
    TResult Function(_PickImage value)? pickImage,
    TResult Function(_IntializeEditMode value)? intializeEditMode,
    TResult Function(_GetCars value)? getCars,
    required TResult orElse(),
  }) {
    if (selectModel != null) {
      return selectModel(this);
    }
    return orElse();
  }
}

abstract class _SelectModel implements CarEvent {
  const factory _SelectModel(final String model) = _$SelectModelImpl;

  String get model;

  /// Create a copy of CarEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SelectModelImplCopyWith<_$SelectModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SelectTypeImplCopyWith<$Res> {
  factory _$$SelectTypeImplCopyWith(
          _$SelectTypeImpl value, $Res Function(_$SelectTypeImpl) then) =
      __$$SelectTypeImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String type});
}

/// @nodoc
class __$$SelectTypeImplCopyWithImpl<$Res>
    extends _$CarEventCopyWithImpl<$Res, _$SelectTypeImpl>
    implements _$$SelectTypeImplCopyWith<$Res> {
  __$$SelectTypeImplCopyWithImpl(
      _$SelectTypeImpl _value, $Res Function(_$SelectTypeImpl) _then)
      : super(_value, _then);

  /// Create a copy of CarEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
  }) {
    return _then(_$SelectTypeImpl(
      null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SelectTypeImpl implements _SelectType {
  const _$SelectTypeImpl(this.type);

  @override
  final String type;

  @override
  String toString() {
    return 'CarEvent.selectType(type: $type)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SelectTypeImpl &&
            (identical(other.type, type) || other.type == type));
  }

  @override
  int get hashCode => Object.hash(runtimeType, type);

  /// Create a copy of CarEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SelectTypeImplCopyWith<_$SelectTypeImpl> get copyWith =>
      __$$SelectTypeImplCopyWithImpl<_$SelectTypeImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() addCar,
    required TResult Function(String uuid) deleteCar,
    required TResult Function() updateCar,
    required TResult Function() searshModel,
    required TResult Function() searshMakes,
    required TResult Function() searshTypes,
    required TResult Function(String make) selectMake,
    required TResult Function(String model) selectModel,
    required TResult Function(String type) selectType,
    required TResult Function(File img) pickImage,
    required TResult Function() intializeEditMode,
    required TResult Function() getCars,
  }) {
    return selectType(type);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? addCar,
    TResult? Function(String uuid)? deleteCar,
    TResult? Function()? updateCar,
    TResult? Function()? searshModel,
    TResult? Function()? searshMakes,
    TResult? Function()? searshTypes,
    TResult? Function(String make)? selectMake,
    TResult? Function(String model)? selectModel,
    TResult? Function(String type)? selectType,
    TResult? Function(File img)? pickImage,
    TResult? Function()? intializeEditMode,
    TResult? Function()? getCars,
  }) {
    return selectType?.call(type);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? addCar,
    TResult Function(String uuid)? deleteCar,
    TResult Function()? updateCar,
    TResult Function()? searshModel,
    TResult Function()? searshMakes,
    TResult Function()? searshTypes,
    TResult Function(String make)? selectMake,
    TResult Function(String model)? selectModel,
    TResult Function(String type)? selectType,
    TResult Function(File img)? pickImage,
    TResult Function()? intializeEditMode,
    TResult Function()? getCars,
    required TResult orElse(),
  }) {
    if (selectType != null) {
      return selectType(type);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddCar value) addCar,
    required TResult Function(_DeleteCar value) deleteCar,
    required TResult Function(_UpdateCar value) updateCar,
    required TResult Function(_SearchModel value) searshModel,
    required TResult Function(_searchMakes value) searshMakes,
    required TResult Function(_SearshTypes value) searshTypes,
    required TResult Function(_SelectMake value) selectMake,
    required TResult Function(_SelectModel value) selectModel,
    required TResult Function(_SelectType value) selectType,
    required TResult Function(_PickImage value) pickImage,
    required TResult Function(_IntializeEditMode value) intializeEditMode,
    required TResult Function(_GetCars value) getCars,
  }) {
    return selectType(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AddCar value)? addCar,
    TResult? Function(_DeleteCar value)? deleteCar,
    TResult? Function(_UpdateCar value)? updateCar,
    TResult? Function(_SearchModel value)? searshModel,
    TResult? Function(_searchMakes value)? searshMakes,
    TResult? Function(_SearshTypes value)? searshTypes,
    TResult? Function(_SelectMake value)? selectMake,
    TResult? Function(_SelectModel value)? selectModel,
    TResult? Function(_SelectType value)? selectType,
    TResult? Function(_PickImage value)? pickImage,
    TResult? Function(_IntializeEditMode value)? intializeEditMode,
    TResult? Function(_GetCars value)? getCars,
  }) {
    return selectType?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddCar value)? addCar,
    TResult Function(_DeleteCar value)? deleteCar,
    TResult Function(_UpdateCar value)? updateCar,
    TResult Function(_SearchModel value)? searshModel,
    TResult Function(_searchMakes value)? searshMakes,
    TResult Function(_SearshTypes value)? searshTypes,
    TResult Function(_SelectMake value)? selectMake,
    TResult Function(_SelectModel value)? selectModel,
    TResult Function(_SelectType value)? selectType,
    TResult Function(_PickImage value)? pickImage,
    TResult Function(_IntializeEditMode value)? intializeEditMode,
    TResult Function(_GetCars value)? getCars,
    required TResult orElse(),
  }) {
    if (selectType != null) {
      return selectType(this);
    }
    return orElse();
  }
}

abstract class _SelectType implements CarEvent {
  const factory _SelectType(final String type) = _$SelectTypeImpl;

  String get type;

  /// Create a copy of CarEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SelectTypeImplCopyWith<_$SelectTypeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PickImageImplCopyWith<$Res> {
  factory _$$PickImageImplCopyWith(
          _$PickImageImpl value, $Res Function(_$PickImageImpl) then) =
      __$$PickImageImplCopyWithImpl<$Res>;
  @useResult
  $Res call({File img});
}

/// @nodoc
class __$$PickImageImplCopyWithImpl<$Res>
    extends _$CarEventCopyWithImpl<$Res, _$PickImageImpl>
    implements _$$PickImageImplCopyWith<$Res> {
  __$$PickImageImplCopyWithImpl(
      _$PickImageImpl _value, $Res Function(_$PickImageImpl) _then)
      : super(_value, _then);

  /// Create a copy of CarEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? img = null,
  }) {
    return _then(_$PickImageImpl(
      null == img
          ? _value.img
          : img // ignore: cast_nullable_to_non_nullable
              as File,
    ));
  }
}

/// @nodoc

class _$PickImageImpl implements _PickImage {
  const _$PickImageImpl(this.img);

  @override
  final File img;

  @override
  String toString() {
    return 'CarEvent.pickImage(img: $img)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PickImageImpl &&
            (identical(other.img, img) || other.img == img));
  }

  @override
  int get hashCode => Object.hash(runtimeType, img);

  /// Create a copy of CarEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PickImageImplCopyWith<_$PickImageImpl> get copyWith =>
      __$$PickImageImplCopyWithImpl<_$PickImageImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() addCar,
    required TResult Function(String uuid) deleteCar,
    required TResult Function() updateCar,
    required TResult Function() searshModel,
    required TResult Function() searshMakes,
    required TResult Function() searshTypes,
    required TResult Function(String make) selectMake,
    required TResult Function(String model) selectModel,
    required TResult Function(String type) selectType,
    required TResult Function(File img) pickImage,
    required TResult Function() intializeEditMode,
    required TResult Function() getCars,
  }) {
    return pickImage(img);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? addCar,
    TResult? Function(String uuid)? deleteCar,
    TResult? Function()? updateCar,
    TResult? Function()? searshModel,
    TResult? Function()? searshMakes,
    TResult? Function()? searshTypes,
    TResult? Function(String make)? selectMake,
    TResult? Function(String model)? selectModel,
    TResult? Function(String type)? selectType,
    TResult? Function(File img)? pickImage,
    TResult? Function()? intializeEditMode,
    TResult? Function()? getCars,
  }) {
    return pickImage?.call(img);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? addCar,
    TResult Function(String uuid)? deleteCar,
    TResult Function()? updateCar,
    TResult Function()? searshModel,
    TResult Function()? searshMakes,
    TResult Function()? searshTypes,
    TResult Function(String make)? selectMake,
    TResult Function(String model)? selectModel,
    TResult Function(String type)? selectType,
    TResult Function(File img)? pickImage,
    TResult Function()? intializeEditMode,
    TResult Function()? getCars,
    required TResult orElse(),
  }) {
    if (pickImage != null) {
      return pickImage(img);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddCar value) addCar,
    required TResult Function(_DeleteCar value) deleteCar,
    required TResult Function(_UpdateCar value) updateCar,
    required TResult Function(_SearchModel value) searshModel,
    required TResult Function(_searchMakes value) searshMakes,
    required TResult Function(_SearshTypes value) searshTypes,
    required TResult Function(_SelectMake value) selectMake,
    required TResult Function(_SelectModel value) selectModel,
    required TResult Function(_SelectType value) selectType,
    required TResult Function(_PickImage value) pickImage,
    required TResult Function(_IntializeEditMode value) intializeEditMode,
    required TResult Function(_GetCars value) getCars,
  }) {
    return pickImage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AddCar value)? addCar,
    TResult? Function(_DeleteCar value)? deleteCar,
    TResult? Function(_UpdateCar value)? updateCar,
    TResult? Function(_SearchModel value)? searshModel,
    TResult? Function(_searchMakes value)? searshMakes,
    TResult? Function(_SearshTypes value)? searshTypes,
    TResult? Function(_SelectMake value)? selectMake,
    TResult? Function(_SelectModel value)? selectModel,
    TResult? Function(_SelectType value)? selectType,
    TResult? Function(_PickImage value)? pickImage,
    TResult? Function(_IntializeEditMode value)? intializeEditMode,
    TResult? Function(_GetCars value)? getCars,
  }) {
    return pickImage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddCar value)? addCar,
    TResult Function(_DeleteCar value)? deleteCar,
    TResult Function(_UpdateCar value)? updateCar,
    TResult Function(_SearchModel value)? searshModel,
    TResult Function(_searchMakes value)? searshMakes,
    TResult Function(_SearshTypes value)? searshTypes,
    TResult Function(_SelectMake value)? selectMake,
    TResult Function(_SelectModel value)? selectModel,
    TResult Function(_SelectType value)? selectType,
    TResult Function(_PickImage value)? pickImage,
    TResult Function(_IntializeEditMode value)? intializeEditMode,
    TResult Function(_GetCars value)? getCars,
    required TResult orElse(),
  }) {
    if (pickImage != null) {
      return pickImage(this);
    }
    return orElse();
  }
}

abstract class _PickImage implements CarEvent {
  const factory _PickImage(final File img) = _$PickImageImpl;

  File get img;

  /// Create a copy of CarEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PickImageImplCopyWith<_$PickImageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$IntializeEditModeImplCopyWith<$Res> {
  factory _$$IntializeEditModeImplCopyWith(_$IntializeEditModeImpl value,
          $Res Function(_$IntializeEditModeImpl) then) =
      __$$IntializeEditModeImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$IntializeEditModeImplCopyWithImpl<$Res>
    extends _$CarEventCopyWithImpl<$Res, _$IntializeEditModeImpl>
    implements _$$IntializeEditModeImplCopyWith<$Res> {
  __$$IntializeEditModeImplCopyWithImpl(_$IntializeEditModeImpl _value,
      $Res Function(_$IntializeEditModeImpl) _then)
      : super(_value, _then);

  /// Create a copy of CarEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$IntializeEditModeImpl implements _IntializeEditMode {
  const _$IntializeEditModeImpl();

  @override
  String toString() {
    return 'CarEvent.intializeEditMode()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$IntializeEditModeImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() addCar,
    required TResult Function(String uuid) deleteCar,
    required TResult Function() updateCar,
    required TResult Function() searshModel,
    required TResult Function() searshMakes,
    required TResult Function() searshTypes,
    required TResult Function(String make) selectMake,
    required TResult Function(String model) selectModel,
    required TResult Function(String type) selectType,
    required TResult Function(File img) pickImage,
    required TResult Function() intializeEditMode,
    required TResult Function() getCars,
  }) {
    return intializeEditMode();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? addCar,
    TResult? Function(String uuid)? deleteCar,
    TResult? Function()? updateCar,
    TResult? Function()? searshModel,
    TResult? Function()? searshMakes,
    TResult? Function()? searshTypes,
    TResult? Function(String make)? selectMake,
    TResult? Function(String model)? selectModel,
    TResult? Function(String type)? selectType,
    TResult? Function(File img)? pickImage,
    TResult? Function()? intializeEditMode,
    TResult? Function()? getCars,
  }) {
    return intializeEditMode?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? addCar,
    TResult Function(String uuid)? deleteCar,
    TResult Function()? updateCar,
    TResult Function()? searshModel,
    TResult Function()? searshMakes,
    TResult Function()? searshTypes,
    TResult Function(String make)? selectMake,
    TResult Function(String model)? selectModel,
    TResult Function(String type)? selectType,
    TResult Function(File img)? pickImage,
    TResult Function()? intializeEditMode,
    TResult Function()? getCars,
    required TResult orElse(),
  }) {
    if (intializeEditMode != null) {
      return intializeEditMode();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddCar value) addCar,
    required TResult Function(_DeleteCar value) deleteCar,
    required TResult Function(_UpdateCar value) updateCar,
    required TResult Function(_SearchModel value) searshModel,
    required TResult Function(_searchMakes value) searshMakes,
    required TResult Function(_SearshTypes value) searshTypes,
    required TResult Function(_SelectMake value) selectMake,
    required TResult Function(_SelectModel value) selectModel,
    required TResult Function(_SelectType value) selectType,
    required TResult Function(_PickImage value) pickImage,
    required TResult Function(_IntializeEditMode value) intializeEditMode,
    required TResult Function(_GetCars value) getCars,
  }) {
    return intializeEditMode(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AddCar value)? addCar,
    TResult? Function(_DeleteCar value)? deleteCar,
    TResult? Function(_UpdateCar value)? updateCar,
    TResult? Function(_SearchModel value)? searshModel,
    TResult? Function(_searchMakes value)? searshMakes,
    TResult? Function(_SearshTypes value)? searshTypes,
    TResult? Function(_SelectMake value)? selectMake,
    TResult? Function(_SelectModel value)? selectModel,
    TResult? Function(_SelectType value)? selectType,
    TResult? Function(_PickImage value)? pickImage,
    TResult? Function(_IntializeEditMode value)? intializeEditMode,
    TResult? Function(_GetCars value)? getCars,
  }) {
    return intializeEditMode?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddCar value)? addCar,
    TResult Function(_DeleteCar value)? deleteCar,
    TResult Function(_UpdateCar value)? updateCar,
    TResult Function(_SearchModel value)? searshModel,
    TResult Function(_searchMakes value)? searshMakes,
    TResult Function(_SearshTypes value)? searshTypes,
    TResult Function(_SelectMake value)? selectMake,
    TResult Function(_SelectModel value)? selectModel,
    TResult Function(_SelectType value)? selectType,
    TResult Function(_PickImage value)? pickImage,
    TResult Function(_IntializeEditMode value)? intializeEditMode,
    TResult Function(_GetCars value)? getCars,
    required TResult orElse(),
  }) {
    if (intializeEditMode != null) {
      return intializeEditMode(this);
    }
    return orElse();
  }
}

abstract class _IntializeEditMode implements CarEvent {
  const factory _IntializeEditMode() = _$IntializeEditModeImpl;
}

/// @nodoc
abstract class _$$GetCarsImplCopyWith<$Res> {
  factory _$$GetCarsImplCopyWith(
          _$GetCarsImpl value, $Res Function(_$GetCarsImpl) then) =
      __$$GetCarsImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetCarsImplCopyWithImpl<$Res>
    extends _$CarEventCopyWithImpl<$Res, _$GetCarsImpl>
    implements _$$GetCarsImplCopyWith<$Res> {
  __$$GetCarsImplCopyWithImpl(
      _$GetCarsImpl _value, $Res Function(_$GetCarsImpl) _then)
      : super(_value, _then);

  /// Create a copy of CarEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$GetCarsImpl implements _GetCars {
  const _$GetCarsImpl();

  @override
  String toString() {
    return 'CarEvent.getCars()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetCarsImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() addCar,
    required TResult Function(String uuid) deleteCar,
    required TResult Function() updateCar,
    required TResult Function() searshModel,
    required TResult Function() searshMakes,
    required TResult Function() searshTypes,
    required TResult Function(String make) selectMake,
    required TResult Function(String model) selectModel,
    required TResult Function(String type) selectType,
    required TResult Function(File img) pickImage,
    required TResult Function() intializeEditMode,
    required TResult Function() getCars,
  }) {
    return getCars();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? addCar,
    TResult? Function(String uuid)? deleteCar,
    TResult? Function()? updateCar,
    TResult? Function()? searshModel,
    TResult? Function()? searshMakes,
    TResult? Function()? searshTypes,
    TResult? Function(String make)? selectMake,
    TResult? Function(String model)? selectModel,
    TResult? Function(String type)? selectType,
    TResult? Function(File img)? pickImage,
    TResult? Function()? intializeEditMode,
    TResult? Function()? getCars,
  }) {
    return getCars?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? addCar,
    TResult Function(String uuid)? deleteCar,
    TResult Function()? updateCar,
    TResult Function()? searshModel,
    TResult Function()? searshMakes,
    TResult Function()? searshTypes,
    TResult Function(String make)? selectMake,
    TResult Function(String model)? selectModel,
    TResult Function(String type)? selectType,
    TResult Function(File img)? pickImage,
    TResult Function()? intializeEditMode,
    TResult Function()? getCars,
    required TResult orElse(),
  }) {
    if (getCars != null) {
      return getCars();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddCar value) addCar,
    required TResult Function(_DeleteCar value) deleteCar,
    required TResult Function(_UpdateCar value) updateCar,
    required TResult Function(_SearchModel value) searshModel,
    required TResult Function(_searchMakes value) searshMakes,
    required TResult Function(_SearshTypes value) searshTypes,
    required TResult Function(_SelectMake value) selectMake,
    required TResult Function(_SelectModel value) selectModel,
    required TResult Function(_SelectType value) selectType,
    required TResult Function(_PickImage value) pickImage,
    required TResult Function(_IntializeEditMode value) intializeEditMode,
    required TResult Function(_GetCars value) getCars,
  }) {
    return getCars(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AddCar value)? addCar,
    TResult? Function(_DeleteCar value)? deleteCar,
    TResult? Function(_UpdateCar value)? updateCar,
    TResult? Function(_SearchModel value)? searshModel,
    TResult? Function(_searchMakes value)? searshMakes,
    TResult? Function(_SearshTypes value)? searshTypes,
    TResult? Function(_SelectMake value)? selectMake,
    TResult? Function(_SelectModel value)? selectModel,
    TResult? Function(_SelectType value)? selectType,
    TResult? Function(_PickImage value)? pickImage,
    TResult? Function(_IntializeEditMode value)? intializeEditMode,
    TResult? Function(_GetCars value)? getCars,
  }) {
    return getCars?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddCar value)? addCar,
    TResult Function(_DeleteCar value)? deleteCar,
    TResult Function(_UpdateCar value)? updateCar,
    TResult Function(_SearchModel value)? searshModel,
    TResult Function(_searchMakes value)? searshMakes,
    TResult Function(_SearshTypes value)? searshTypes,
    TResult Function(_SelectMake value)? selectMake,
    TResult Function(_SelectModel value)? selectModel,
    TResult Function(_SelectType value)? selectType,
    TResult Function(_PickImage value)? pickImage,
    TResult Function(_IntializeEditMode value)? intializeEditMode,
    TResult Function(_GetCars value)? getCars,
    required TResult orElse(),
  }) {
    if (getCars != null) {
      return getCars(this);
    }
    return orElse();
  }
}

abstract class _GetCars implements CarEvent {
  const factory _GetCars() = _$GetCarsImpl;
}

/// @nodoc
mixin _$CarState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function() successAdded,
    required TResult Function() successDelete,
    required TResult Function() successUpdated,
    required TResult Function() updateUi,
    required TResult Function() successUI,
    required TResult Function(String err) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? success,
    TResult? Function()? successAdded,
    TResult? Function()? successDelete,
    TResult? Function()? successUpdated,
    TResult? Function()? updateUi,
    TResult? Function()? successUI,
    TResult? Function(String err)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function()? successAdded,
    TResult Function()? successDelete,
    TResult Function()? successUpdated,
    TResult Function()? updateUi,
    TResult Function()? successUI,
    TResult Function(String err)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_SuccessAdded value) successAdded,
    required TResult Function(_SuccessDelete value) successDelete,
    required TResult Function(_SuccessUpdated value) successUpdated,
    required TResult Function(_UpdateUi value) updateUi,
    required TResult Function(_SuccessUI value) successUI,
    required TResult Function(_Failure value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_SuccessAdded value)? successAdded,
    TResult? Function(_SuccessDelete value)? successDelete,
    TResult? Function(_SuccessUpdated value)? successUpdated,
    TResult? Function(_UpdateUi value)? updateUi,
    TResult? Function(_SuccessUI value)? successUI,
    TResult? Function(_Failure value)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_SuccessAdded value)? successAdded,
    TResult Function(_SuccessDelete value)? successDelete,
    TResult Function(_SuccessUpdated value)? successUpdated,
    TResult Function(_UpdateUi value)? updateUi,
    TResult Function(_SuccessUI value)? successUI,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CarStateCopyWith<$Res> {
  factory $CarStateCopyWith(CarState value, $Res Function(CarState) then) =
      _$CarStateCopyWithImpl<$Res, CarState>;
}

/// @nodoc
class _$CarStateCopyWithImpl<$Res, $Val extends CarState>
    implements $CarStateCopyWith<$Res> {
  _$CarStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CarState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$CarStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of CarState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'CarState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function() successAdded,
    required TResult Function() successDelete,
    required TResult Function() successUpdated,
    required TResult Function() updateUi,
    required TResult Function() successUI,
    required TResult Function(String err) failure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? success,
    TResult? Function()? successAdded,
    TResult? Function()? successDelete,
    TResult? Function()? successUpdated,
    TResult? Function()? updateUi,
    TResult? Function()? successUI,
    TResult? Function(String err)? failure,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function()? successAdded,
    TResult Function()? successDelete,
    TResult Function()? successUpdated,
    TResult Function()? updateUi,
    TResult Function()? successUI,
    TResult Function(String err)? failure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_SuccessAdded value) successAdded,
    required TResult Function(_SuccessDelete value) successDelete,
    required TResult Function(_SuccessUpdated value) successUpdated,
    required TResult Function(_UpdateUi value) updateUi,
    required TResult Function(_SuccessUI value) successUI,
    required TResult Function(_Failure value) failure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_SuccessAdded value)? successAdded,
    TResult? Function(_SuccessDelete value)? successDelete,
    TResult? Function(_SuccessUpdated value)? successUpdated,
    TResult? Function(_UpdateUi value)? updateUi,
    TResult? Function(_SuccessUI value)? successUI,
    TResult? Function(_Failure value)? failure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_SuccessAdded value)? successAdded,
    TResult Function(_SuccessDelete value)? successDelete,
    TResult Function(_SuccessUpdated value)? successUpdated,
    TResult Function(_UpdateUi value)? updateUi,
    TResult Function(_SuccessUI value)? successUI,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements CarState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$LoadingImplCopyWith<$Res> {
  factory _$$LoadingImplCopyWith(
          _$LoadingImpl value, $Res Function(_$LoadingImpl) then) =
      __$$LoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingImplCopyWithImpl<$Res>
    extends _$CarStateCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
      _$LoadingImpl _value, $Res Function(_$LoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of CarState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadingImpl implements _Loading {
  const _$LoadingImpl();

  @override
  String toString() {
    return 'CarState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function() successAdded,
    required TResult Function() successDelete,
    required TResult Function() successUpdated,
    required TResult Function() updateUi,
    required TResult Function() successUI,
    required TResult Function(String err) failure,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? success,
    TResult? Function()? successAdded,
    TResult? Function()? successDelete,
    TResult? Function()? successUpdated,
    TResult? Function()? updateUi,
    TResult? Function()? successUI,
    TResult? Function(String err)? failure,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function()? successAdded,
    TResult Function()? successDelete,
    TResult Function()? successUpdated,
    TResult Function()? updateUi,
    TResult Function()? successUI,
    TResult Function(String err)? failure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_SuccessAdded value) successAdded,
    required TResult Function(_SuccessDelete value) successDelete,
    required TResult Function(_SuccessUpdated value) successUpdated,
    required TResult Function(_UpdateUi value) updateUi,
    required TResult Function(_SuccessUI value) successUI,
    required TResult Function(_Failure value) failure,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_SuccessAdded value)? successAdded,
    TResult? Function(_SuccessDelete value)? successDelete,
    TResult? Function(_SuccessUpdated value)? successUpdated,
    TResult? Function(_UpdateUi value)? updateUi,
    TResult? Function(_SuccessUI value)? successUI,
    TResult? Function(_Failure value)? failure,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_SuccessAdded value)? successAdded,
    TResult Function(_SuccessDelete value)? successDelete,
    TResult Function(_SuccessUpdated value)? successUpdated,
    TResult Function(_UpdateUi value)? updateUi,
    TResult Function(_SuccessUI value)? successUI,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements CarState {
  const factory _Loading() = _$LoadingImpl;
}

/// @nodoc
abstract class _$$SuccessImplCopyWith<$Res> {
  factory _$$SuccessImplCopyWith(
          _$SuccessImpl value, $Res Function(_$SuccessImpl) then) =
      __$$SuccessImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SuccessImplCopyWithImpl<$Res>
    extends _$CarStateCopyWithImpl<$Res, _$SuccessImpl>
    implements _$$SuccessImplCopyWith<$Res> {
  __$$SuccessImplCopyWithImpl(
      _$SuccessImpl _value, $Res Function(_$SuccessImpl) _then)
      : super(_value, _then);

  /// Create a copy of CarState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$SuccessImpl implements _Success {
  const _$SuccessImpl();

  @override
  String toString() {
    return 'CarState.success()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SuccessImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function() successAdded,
    required TResult Function() successDelete,
    required TResult Function() successUpdated,
    required TResult Function() updateUi,
    required TResult Function() successUI,
    required TResult Function(String err) failure,
  }) {
    return success();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? success,
    TResult? Function()? successAdded,
    TResult? Function()? successDelete,
    TResult? Function()? successUpdated,
    TResult? Function()? updateUi,
    TResult? Function()? successUI,
    TResult? Function(String err)? failure,
  }) {
    return success?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function()? successAdded,
    TResult Function()? successDelete,
    TResult Function()? successUpdated,
    TResult Function()? updateUi,
    TResult Function()? successUI,
    TResult Function(String err)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_SuccessAdded value) successAdded,
    required TResult Function(_SuccessDelete value) successDelete,
    required TResult Function(_SuccessUpdated value) successUpdated,
    required TResult Function(_UpdateUi value) updateUi,
    required TResult Function(_SuccessUI value) successUI,
    required TResult Function(_Failure value) failure,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_SuccessAdded value)? successAdded,
    TResult? Function(_SuccessDelete value)? successDelete,
    TResult? Function(_SuccessUpdated value)? successUpdated,
    TResult? Function(_UpdateUi value)? updateUi,
    TResult? Function(_SuccessUI value)? successUI,
    TResult? Function(_Failure value)? failure,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_SuccessAdded value)? successAdded,
    TResult Function(_SuccessDelete value)? successDelete,
    TResult Function(_SuccessUpdated value)? successUpdated,
    TResult Function(_UpdateUi value)? updateUi,
    TResult Function(_SuccessUI value)? successUI,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _Success implements CarState {
  const factory _Success() = _$SuccessImpl;
}

/// @nodoc
abstract class _$$SuccessAddedImplCopyWith<$Res> {
  factory _$$SuccessAddedImplCopyWith(
          _$SuccessAddedImpl value, $Res Function(_$SuccessAddedImpl) then) =
      __$$SuccessAddedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SuccessAddedImplCopyWithImpl<$Res>
    extends _$CarStateCopyWithImpl<$Res, _$SuccessAddedImpl>
    implements _$$SuccessAddedImplCopyWith<$Res> {
  __$$SuccessAddedImplCopyWithImpl(
      _$SuccessAddedImpl _value, $Res Function(_$SuccessAddedImpl) _then)
      : super(_value, _then);

  /// Create a copy of CarState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$SuccessAddedImpl implements _SuccessAdded {
  const _$SuccessAddedImpl();

  @override
  String toString() {
    return 'CarState.successAdded()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SuccessAddedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function() successAdded,
    required TResult Function() successDelete,
    required TResult Function() successUpdated,
    required TResult Function() updateUi,
    required TResult Function() successUI,
    required TResult Function(String err) failure,
  }) {
    return successAdded();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? success,
    TResult? Function()? successAdded,
    TResult? Function()? successDelete,
    TResult? Function()? successUpdated,
    TResult? Function()? updateUi,
    TResult? Function()? successUI,
    TResult? Function(String err)? failure,
  }) {
    return successAdded?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function()? successAdded,
    TResult Function()? successDelete,
    TResult Function()? successUpdated,
    TResult Function()? updateUi,
    TResult Function()? successUI,
    TResult Function(String err)? failure,
    required TResult orElse(),
  }) {
    if (successAdded != null) {
      return successAdded();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_SuccessAdded value) successAdded,
    required TResult Function(_SuccessDelete value) successDelete,
    required TResult Function(_SuccessUpdated value) successUpdated,
    required TResult Function(_UpdateUi value) updateUi,
    required TResult Function(_SuccessUI value) successUI,
    required TResult Function(_Failure value) failure,
  }) {
    return successAdded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_SuccessAdded value)? successAdded,
    TResult? Function(_SuccessDelete value)? successDelete,
    TResult? Function(_SuccessUpdated value)? successUpdated,
    TResult? Function(_UpdateUi value)? updateUi,
    TResult? Function(_SuccessUI value)? successUI,
    TResult? Function(_Failure value)? failure,
  }) {
    return successAdded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_SuccessAdded value)? successAdded,
    TResult Function(_SuccessDelete value)? successDelete,
    TResult Function(_SuccessUpdated value)? successUpdated,
    TResult Function(_UpdateUi value)? updateUi,
    TResult Function(_SuccessUI value)? successUI,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (successAdded != null) {
      return successAdded(this);
    }
    return orElse();
  }
}

abstract class _SuccessAdded implements CarState {
  const factory _SuccessAdded() = _$SuccessAddedImpl;
}

/// @nodoc
abstract class _$$SuccessDeleteImplCopyWith<$Res> {
  factory _$$SuccessDeleteImplCopyWith(
          _$SuccessDeleteImpl value, $Res Function(_$SuccessDeleteImpl) then) =
      __$$SuccessDeleteImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SuccessDeleteImplCopyWithImpl<$Res>
    extends _$CarStateCopyWithImpl<$Res, _$SuccessDeleteImpl>
    implements _$$SuccessDeleteImplCopyWith<$Res> {
  __$$SuccessDeleteImplCopyWithImpl(
      _$SuccessDeleteImpl _value, $Res Function(_$SuccessDeleteImpl) _then)
      : super(_value, _then);

  /// Create a copy of CarState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$SuccessDeleteImpl implements _SuccessDelete {
  const _$SuccessDeleteImpl();

  @override
  String toString() {
    return 'CarState.successDelete()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SuccessDeleteImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function() successAdded,
    required TResult Function() successDelete,
    required TResult Function() successUpdated,
    required TResult Function() updateUi,
    required TResult Function() successUI,
    required TResult Function(String err) failure,
  }) {
    return successDelete();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? success,
    TResult? Function()? successAdded,
    TResult? Function()? successDelete,
    TResult? Function()? successUpdated,
    TResult? Function()? updateUi,
    TResult? Function()? successUI,
    TResult? Function(String err)? failure,
  }) {
    return successDelete?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function()? successAdded,
    TResult Function()? successDelete,
    TResult Function()? successUpdated,
    TResult Function()? updateUi,
    TResult Function()? successUI,
    TResult Function(String err)? failure,
    required TResult orElse(),
  }) {
    if (successDelete != null) {
      return successDelete();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_SuccessAdded value) successAdded,
    required TResult Function(_SuccessDelete value) successDelete,
    required TResult Function(_SuccessUpdated value) successUpdated,
    required TResult Function(_UpdateUi value) updateUi,
    required TResult Function(_SuccessUI value) successUI,
    required TResult Function(_Failure value) failure,
  }) {
    return successDelete(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_SuccessAdded value)? successAdded,
    TResult? Function(_SuccessDelete value)? successDelete,
    TResult? Function(_SuccessUpdated value)? successUpdated,
    TResult? Function(_UpdateUi value)? updateUi,
    TResult? Function(_SuccessUI value)? successUI,
    TResult? Function(_Failure value)? failure,
  }) {
    return successDelete?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_SuccessAdded value)? successAdded,
    TResult Function(_SuccessDelete value)? successDelete,
    TResult Function(_SuccessUpdated value)? successUpdated,
    TResult Function(_UpdateUi value)? updateUi,
    TResult Function(_SuccessUI value)? successUI,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (successDelete != null) {
      return successDelete(this);
    }
    return orElse();
  }
}

abstract class _SuccessDelete implements CarState {
  const factory _SuccessDelete() = _$SuccessDeleteImpl;
}

/// @nodoc
abstract class _$$SuccessUpdatedImplCopyWith<$Res> {
  factory _$$SuccessUpdatedImplCopyWith(_$SuccessUpdatedImpl value,
          $Res Function(_$SuccessUpdatedImpl) then) =
      __$$SuccessUpdatedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SuccessUpdatedImplCopyWithImpl<$Res>
    extends _$CarStateCopyWithImpl<$Res, _$SuccessUpdatedImpl>
    implements _$$SuccessUpdatedImplCopyWith<$Res> {
  __$$SuccessUpdatedImplCopyWithImpl(
      _$SuccessUpdatedImpl _value, $Res Function(_$SuccessUpdatedImpl) _then)
      : super(_value, _then);

  /// Create a copy of CarState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$SuccessUpdatedImpl implements _SuccessUpdated {
  const _$SuccessUpdatedImpl();

  @override
  String toString() {
    return 'CarState.successUpdated()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SuccessUpdatedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function() successAdded,
    required TResult Function() successDelete,
    required TResult Function() successUpdated,
    required TResult Function() updateUi,
    required TResult Function() successUI,
    required TResult Function(String err) failure,
  }) {
    return successUpdated();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? success,
    TResult? Function()? successAdded,
    TResult? Function()? successDelete,
    TResult? Function()? successUpdated,
    TResult? Function()? updateUi,
    TResult? Function()? successUI,
    TResult? Function(String err)? failure,
  }) {
    return successUpdated?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function()? successAdded,
    TResult Function()? successDelete,
    TResult Function()? successUpdated,
    TResult Function()? updateUi,
    TResult Function()? successUI,
    TResult Function(String err)? failure,
    required TResult orElse(),
  }) {
    if (successUpdated != null) {
      return successUpdated();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_SuccessAdded value) successAdded,
    required TResult Function(_SuccessDelete value) successDelete,
    required TResult Function(_SuccessUpdated value) successUpdated,
    required TResult Function(_UpdateUi value) updateUi,
    required TResult Function(_SuccessUI value) successUI,
    required TResult Function(_Failure value) failure,
  }) {
    return successUpdated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_SuccessAdded value)? successAdded,
    TResult? Function(_SuccessDelete value)? successDelete,
    TResult? Function(_SuccessUpdated value)? successUpdated,
    TResult? Function(_UpdateUi value)? updateUi,
    TResult? Function(_SuccessUI value)? successUI,
    TResult? Function(_Failure value)? failure,
  }) {
    return successUpdated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_SuccessAdded value)? successAdded,
    TResult Function(_SuccessDelete value)? successDelete,
    TResult Function(_SuccessUpdated value)? successUpdated,
    TResult Function(_UpdateUi value)? updateUi,
    TResult Function(_SuccessUI value)? successUI,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (successUpdated != null) {
      return successUpdated(this);
    }
    return orElse();
  }
}

abstract class _SuccessUpdated implements CarState {
  const factory _SuccessUpdated() = _$SuccessUpdatedImpl;
}

/// @nodoc
abstract class _$$UpdateUiImplCopyWith<$Res> {
  factory _$$UpdateUiImplCopyWith(
          _$UpdateUiImpl value, $Res Function(_$UpdateUiImpl) then) =
      __$$UpdateUiImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UpdateUiImplCopyWithImpl<$Res>
    extends _$CarStateCopyWithImpl<$Res, _$UpdateUiImpl>
    implements _$$UpdateUiImplCopyWith<$Res> {
  __$$UpdateUiImplCopyWithImpl(
      _$UpdateUiImpl _value, $Res Function(_$UpdateUiImpl) _then)
      : super(_value, _then);

  /// Create a copy of CarState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$UpdateUiImpl implements _UpdateUi {
  const _$UpdateUiImpl();

  @override
  String toString() {
    return 'CarState.updateUi()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$UpdateUiImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function() successAdded,
    required TResult Function() successDelete,
    required TResult Function() successUpdated,
    required TResult Function() updateUi,
    required TResult Function() successUI,
    required TResult Function(String err) failure,
  }) {
    return updateUi();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? success,
    TResult? Function()? successAdded,
    TResult? Function()? successDelete,
    TResult? Function()? successUpdated,
    TResult? Function()? updateUi,
    TResult? Function()? successUI,
    TResult? Function(String err)? failure,
  }) {
    return updateUi?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function()? successAdded,
    TResult Function()? successDelete,
    TResult Function()? successUpdated,
    TResult Function()? updateUi,
    TResult Function()? successUI,
    TResult Function(String err)? failure,
    required TResult orElse(),
  }) {
    if (updateUi != null) {
      return updateUi();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_SuccessAdded value) successAdded,
    required TResult Function(_SuccessDelete value) successDelete,
    required TResult Function(_SuccessUpdated value) successUpdated,
    required TResult Function(_UpdateUi value) updateUi,
    required TResult Function(_SuccessUI value) successUI,
    required TResult Function(_Failure value) failure,
  }) {
    return updateUi(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_SuccessAdded value)? successAdded,
    TResult? Function(_SuccessDelete value)? successDelete,
    TResult? Function(_SuccessUpdated value)? successUpdated,
    TResult? Function(_UpdateUi value)? updateUi,
    TResult? Function(_SuccessUI value)? successUI,
    TResult? Function(_Failure value)? failure,
  }) {
    return updateUi?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_SuccessAdded value)? successAdded,
    TResult Function(_SuccessDelete value)? successDelete,
    TResult Function(_SuccessUpdated value)? successUpdated,
    TResult Function(_UpdateUi value)? updateUi,
    TResult Function(_SuccessUI value)? successUI,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (updateUi != null) {
      return updateUi(this);
    }
    return orElse();
  }
}

abstract class _UpdateUi implements CarState {
  const factory _UpdateUi() = _$UpdateUiImpl;
}

/// @nodoc
abstract class _$$SuccessUIImplCopyWith<$Res> {
  factory _$$SuccessUIImplCopyWith(
          _$SuccessUIImpl value, $Res Function(_$SuccessUIImpl) then) =
      __$$SuccessUIImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SuccessUIImplCopyWithImpl<$Res>
    extends _$CarStateCopyWithImpl<$Res, _$SuccessUIImpl>
    implements _$$SuccessUIImplCopyWith<$Res> {
  __$$SuccessUIImplCopyWithImpl(
      _$SuccessUIImpl _value, $Res Function(_$SuccessUIImpl) _then)
      : super(_value, _then);

  /// Create a copy of CarState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$SuccessUIImpl implements _SuccessUI {
  const _$SuccessUIImpl();

  @override
  String toString() {
    return 'CarState.successUI()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SuccessUIImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function() successAdded,
    required TResult Function() successDelete,
    required TResult Function() successUpdated,
    required TResult Function() updateUi,
    required TResult Function() successUI,
    required TResult Function(String err) failure,
  }) {
    return successUI();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? success,
    TResult? Function()? successAdded,
    TResult? Function()? successDelete,
    TResult? Function()? successUpdated,
    TResult? Function()? updateUi,
    TResult? Function()? successUI,
    TResult? Function(String err)? failure,
  }) {
    return successUI?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function()? successAdded,
    TResult Function()? successDelete,
    TResult Function()? successUpdated,
    TResult Function()? updateUi,
    TResult Function()? successUI,
    TResult Function(String err)? failure,
    required TResult orElse(),
  }) {
    if (successUI != null) {
      return successUI();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_SuccessAdded value) successAdded,
    required TResult Function(_SuccessDelete value) successDelete,
    required TResult Function(_SuccessUpdated value) successUpdated,
    required TResult Function(_UpdateUi value) updateUi,
    required TResult Function(_SuccessUI value) successUI,
    required TResult Function(_Failure value) failure,
  }) {
    return successUI(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_SuccessAdded value)? successAdded,
    TResult? Function(_SuccessDelete value)? successDelete,
    TResult? Function(_SuccessUpdated value)? successUpdated,
    TResult? Function(_UpdateUi value)? updateUi,
    TResult? Function(_SuccessUI value)? successUI,
    TResult? Function(_Failure value)? failure,
  }) {
    return successUI?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_SuccessAdded value)? successAdded,
    TResult Function(_SuccessDelete value)? successDelete,
    TResult Function(_SuccessUpdated value)? successUpdated,
    TResult Function(_UpdateUi value)? updateUi,
    TResult Function(_SuccessUI value)? successUI,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (successUI != null) {
      return successUI(this);
    }
    return orElse();
  }
}

abstract class _SuccessUI implements CarState {
  const factory _SuccessUI() = _$SuccessUIImpl;
}

/// @nodoc
abstract class _$$FailureImplCopyWith<$Res> {
  factory _$$FailureImplCopyWith(
          _$FailureImpl value, $Res Function(_$FailureImpl) then) =
      __$$FailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String err});
}

/// @nodoc
class __$$FailureImplCopyWithImpl<$Res>
    extends _$CarStateCopyWithImpl<$Res, _$FailureImpl>
    implements _$$FailureImplCopyWith<$Res> {
  __$$FailureImplCopyWithImpl(
      _$FailureImpl _value, $Res Function(_$FailureImpl) _then)
      : super(_value, _then);

  /// Create a copy of CarState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? err = null,
  }) {
    return _then(_$FailureImpl(
      null == err
          ? _value.err
          : err // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$FailureImpl implements _Failure {
  const _$FailureImpl(this.err);

  @override
  final String err;

  @override
  String toString() {
    return 'CarState.failure(err: $err)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FailureImpl &&
            (identical(other.err, err) || other.err == err));
  }

  @override
  int get hashCode => Object.hash(runtimeType, err);

  /// Create a copy of CarState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FailureImplCopyWith<_$FailureImpl> get copyWith =>
      __$$FailureImplCopyWithImpl<_$FailureImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function() successAdded,
    required TResult Function() successDelete,
    required TResult Function() successUpdated,
    required TResult Function() updateUi,
    required TResult Function() successUI,
    required TResult Function(String err) failure,
  }) {
    return failure(err);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? success,
    TResult? Function()? successAdded,
    TResult? Function()? successDelete,
    TResult? Function()? successUpdated,
    TResult? Function()? updateUi,
    TResult? Function()? successUI,
    TResult? Function(String err)? failure,
  }) {
    return failure?.call(err);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function()? successAdded,
    TResult Function()? successDelete,
    TResult Function()? successUpdated,
    TResult Function()? updateUi,
    TResult Function()? successUI,
    TResult Function(String err)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(err);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_SuccessAdded value) successAdded,
    required TResult Function(_SuccessDelete value) successDelete,
    required TResult Function(_SuccessUpdated value) successUpdated,
    required TResult Function(_UpdateUi value) updateUi,
    required TResult Function(_SuccessUI value) successUI,
    required TResult Function(_Failure value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_SuccessAdded value)? successAdded,
    TResult? Function(_SuccessDelete value)? successDelete,
    TResult? Function(_SuccessUpdated value)? successUpdated,
    TResult? Function(_UpdateUi value)? updateUi,
    TResult? Function(_SuccessUI value)? successUI,
    TResult? Function(_Failure value)? failure,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_SuccessAdded value)? successAdded,
    TResult Function(_SuccessDelete value)? successDelete,
    TResult Function(_SuccessUpdated value)? successUpdated,
    TResult Function(_UpdateUi value)? updateUi,
    TResult Function(_SuccessUI value)? successUI,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class _Failure implements CarState {
  const factory _Failure(final String err) = _$FailureImpl;

  String get err;

  /// Create a copy of CarState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FailureImplCopyWith<_$FailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
