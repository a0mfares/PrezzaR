// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'category_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CategoryEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool? isBooking) getCategories,
    required TResult Function() getSponsors,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool? isBooking)? getCategories,
    TResult? Function()? getSponsors,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool? isBooking)? getCategories,
    TResult Function()? getSponsors,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetCategories value) getCategories,
    required TResult Function(_GetSponsors value) getSponsors,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetCategories value)? getCategories,
    TResult? Function(_GetSponsors value)? getSponsors,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetCategories value)? getCategories,
    TResult Function(_GetSponsors value)? getSponsors,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoryEventCopyWith<$Res> {
  factory $CategoryEventCopyWith(
          CategoryEvent value, $Res Function(CategoryEvent) then) =
      _$CategoryEventCopyWithImpl<$Res, CategoryEvent>;
}

/// @nodoc
class _$CategoryEventCopyWithImpl<$Res, $Val extends CategoryEvent>
    implements $CategoryEventCopyWith<$Res> {
  _$CategoryEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CategoryEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$GetCategoriesImplCopyWith<$Res> {
  factory _$$GetCategoriesImplCopyWith(
          _$GetCategoriesImpl value, $Res Function(_$GetCategoriesImpl) then) =
      __$$GetCategoriesImplCopyWithImpl<$Res>;
  @useResult
  $Res call({bool? isBooking});
}

/// @nodoc
class __$$GetCategoriesImplCopyWithImpl<$Res>
    extends _$CategoryEventCopyWithImpl<$Res, _$GetCategoriesImpl>
    implements _$$GetCategoriesImplCopyWith<$Res> {
  __$$GetCategoriesImplCopyWithImpl(
      _$GetCategoriesImpl _value, $Res Function(_$GetCategoriesImpl) _then)
      : super(_value, _then);

  /// Create a copy of CategoryEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isBooking = freezed,
  }) {
    return _then(_$GetCategoriesImpl(
      freezed == isBooking
          ? _value.isBooking
          : isBooking // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc

class _$GetCategoriesImpl implements _GetCategories {
  const _$GetCategoriesImpl([this.isBooking]);

  @override
  final bool? isBooking;

  @override
  String toString() {
    return 'CategoryEvent.getCategories(isBooking: $isBooking)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetCategoriesImpl &&
            (identical(other.isBooking, isBooking) ||
                other.isBooking == isBooking));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isBooking);

  /// Create a copy of CategoryEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetCategoriesImplCopyWith<_$GetCategoriesImpl> get copyWith =>
      __$$GetCategoriesImplCopyWithImpl<_$GetCategoriesImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool? isBooking) getCategories,
    required TResult Function() getSponsors,
  }) {
    return getCategories(isBooking);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool? isBooking)? getCategories,
    TResult? Function()? getSponsors,
  }) {
    return getCategories?.call(isBooking);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool? isBooking)? getCategories,
    TResult Function()? getSponsors,
    required TResult orElse(),
  }) {
    if (getCategories != null) {
      return getCategories(isBooking);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetCategories value) getCategories,
    required TResult Function(_GetSponsors value) getSponsors,
  }) {
    return getCategories(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetCategories value)? getCategories,
    TResult? Function(_GetSponsors value)? getSponsors,
  }) {
    return getCategories?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetCategories value)? getCategories,
    TResult Function(_GetSponsors value)? getSponsors,
    required TResult orElse(),
  }) {
    if (getCategories != null) {
      return getCategories(this);
    }
    return orElse();
  }
}

abstract class _GetCategories implements CategoryEvent {
  const factory _GetCategories([final bool? isBooking]) = _$GetCategoriesImpl;

  bool? get isBooking;

  /// Create a copy of CategoryEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetCategoriesImplCopyWith<_$GetCategoriesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetSponsorsImplCopyWith<$Res> {
  factory _$$GetSponsorsImplCopyWith(
          _$GetSponsorsImpl value, $Res Function(_$GetSponsorsImpl) then) =
      __$$GetSponsorsImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetSponsorsImplCopyWithImpl<$Res>
    extends _$CategoryEventCopyWithImpl<$Res, _$GetSponsorsImpl>
    implements _$$GetSponsorsImplCopyWith<$Res> {
  __$$GetSponsorsImplCopyWithImpl(
      _$GetSponsorsImpl _value, $Res Function(_$GetSponsorsImpl) _then)
      : super(_value, _then);

  /// Create a copy of CategoryEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$GetSponsorsImpl implements _GetSponsors {
  const _$GetSponsorsImpl();

  @override
  String toString() {
    return 'CategoryEvent.getSponsors()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetSponsorsImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool? isBooking) getCategories,
    required TResult Function() getSponsors,
  }) {
    return getSponsors();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool? isBooking)? getCategories,
    TResult? Function()? getSponsors,
  }) {
    return getSponsors?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool? isBooking)? getCategories,
    TResult Function()? getSponsors,
    required TResult orElse(),
  }) {
    if (getSponsors != null) {
      return getSponsors();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetCategories value) getCategories,
    required TResult Function(_GetSponsors value) getSponsors,
  }) {
    return getSponsors(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetCategories value)? getCategories,
    TResult? Function(_GetSponsors value)? getSponsors,
  }) {
    return getSponsors?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetCategories value)? getCategories,
    TResult Function(_GetSponsors value)? getSponsors,
    required TResult orElse(),
  }) {
    if (getSponsors != null) {
      return getSponsors(this);
    }
    return orElse();
  }
}

abstract class _GetSponsors implements CategoryEvent {
  const factory _GetSponsors() = _$GetSponsorsImpl;
}

/// @nodoc
mixin _$CategoryState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function() loadingCategory,
    required TResult Function() successCategory,
    required TResult Function(String err) failure,
    required TResult Function(String err) failureCategory,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? success,
    TResult? Function()? loadingCategory,
    TResult? Function()? successCategory,
    TResult? Function(String err)? failure,
    TResult? Function(String err)? failureCategory,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function()? loadingCategory,
    TResult Function()? successCategory,
    TResult Function(String err)? failure,
    TResult Function(String err)? failureCategory,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_LoadingCategory value) loadingCategory,
    required TResult Function(_SuccessCategory value) successCategory,
    required TResult Function(_Failure value) failure,
    required TResult Function(_failureCategory value) failureCategory,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_LoadingCategory value)? loadingCategory,
    TResult? Function(_SuccessCategory value)? successCategory,
    TResult? Function(_Failure value)? failure,
    TResult? Function(_failureCategory value)? failureCategory,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_LoadingCategory value)? loadingCategory,
    TResult Function(_SuccessCategory value)? successCategory,
    TResult Function(_Failure value)? failure,
    TResult Function(_failureCategory value)? failureCategory,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoryStateCopyWith<$Res> {
  factory $CategoryStateCopyWith(
          CategoryState value, $Res Function(CategoryState) then) =
      _$CategoryStateCopyWithImpl<$Res, CategoryState>;
}

/// @nodoc
class _$CategoryStateCopyWithImpl<$Res, $Val extends CategoryState>
    implements $CategoryStateCopyWith<$Res> {
  _$CategoryStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CategoryState
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
    extends _$CategoryStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of CategoryState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'CategoryState.initial()';
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
    required TResult Function() loadingCategory,
    required TResult Function() successCategory,
    required TResult Function(String err) failure,
    required TResult Function(String err) failureCategory,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? success,
    TResult? Function()? loadingCategory,
    TResult? Function()? successCategory,
    TResult? Function(String err)? failure,
    TResult? Function(String err)? failureCategory,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function()? loadingCategory,
    TResult Function()? successCategory,
    TResult Function(String err)? failure,
    TResult Function(String err)? failureCategory,
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
    required TResult Function(_LoadingCategory value) loadingCategory,
    required TResult Function(_SuccessCategory value) successCategory,
    required TResult Function(_Failure value) failure,
    required TResult Function(_failureCategory value) failureCategory,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_LoadingCategory value)? loadingCategory,
    TResult? Function(_SuccessCategory value)? successCategory,
    TResult? Function(_Failure value)? failure,
    TResult? Function(_failureCategory value)? failureCategory,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_LoadingCategory value)? loadingCategory,
    TResult Function(_SuccessCategory value)? successCategory,
    TResult Function(_Failure value)? failure,
    TResult Function(_failureCategory value)? failureCategory,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements CategoryState {
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
    extends _$CategoryStateCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
      _$LoadingImpl _value, $Res Function(_$LoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of CategoryState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadingImpl implements _Loading {
  const _$LoadingImpl();

  @override
  String toString() {
    return 'CategoryState.loading()';
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
    required TResult Function() loadingCategory,
    required TResult Function() successCategory,
    required TResult Function(String err) failure,
    required TResult Function(String err) failureCategory,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? success,
    TResult? Function()? loadingCategory,
    TResult? Function()? successCategory,
    TResult? Function(String err)? failure,
    TResult? Function(String err)? failureCategory,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function()? loadingCategory,
    TResult Function()? successCategory,
    TResult Function(String err)? failure,
    TResult Function(String err)? failureCategory,
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
    required TResult Function(_LoadingCategory value) loadingCategory,
    required TResult Function(_SuccessCategory value) successCategory,
    required TResult Function(_Failure value) failure,
    required TResult Function(_failureCategory value) failureCategory,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_LoadingCategory value)? loadingCategory,
    TResult? Function(_SuccessCategory value)? successCategory,
    TResult? Function(_Failure value)? failure,
    TResult? Function(_failureCategory value)? failureCategory,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_LoadingCategory value)? loadingCategory,
    TResult Function(_SuccessCategory value)? successCategory,
    TResult Function(_Failure value)? failure,
    TResult Function(_failureCategory value)? failureCategory,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements CategoryState {
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
    extends _$CategoryStateCopyWithImpl<$Res, _$SuccessImpl>
    implements _$$SuccessImplCopyWith<$Res> {
  __$$SuccessImplCopyWithImpl(
      _$SuccessImpl _value, $Res Function(_$SuccessImpl) _then)
      : super(_value, _then);

  /// Create a copy of CategoryState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$SuccessImpl implements _Success {
  const _$SuccessImpl();

  @override
  String toString() {
    return 'CategoryState.success()';
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
    required TResult Function() loadingCategory,
    required TResult Function() successCategory,
    required TResult Function(String err) failure,
    required TResult Function(String err) failureCategory,
  }) {
    return success();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? success,
    TResult? Function()? loadingCategory,
    TResult? Function()? successCategory,
    TResult? Function(String err)? failure,
    TResult? Function(String err)? failureCategory,
  }) {
    return success?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function()? loadingCategory,
    TResult Function()? successCategory,
    TResult Function(String err)? failure,
    TResult Function(String err)? failureCategory,
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
    required TResult Function(_LoadingCategory value) loadingCategory,
    required TResult Function(_SuccessCategory value) successCategory,
    required TResult Function(_Failure value) failure,
    required TResult Function(_failureCategory value) failureCategory,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_LoadingCategory value)? loadingCategory,
    TResult? Function(_SuccessCategory value)? successCategory,
    TResult? Function(_Failure value)? failure,
    TResult? Function(_failureCategory value)? failureCategory,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_LoadingCategory value)? loadingCategory,
    TResult Function(_SuccessCategory value)? successCategory,
    TResult Function(_Failure value)? failure,
    TResult Function(_failureCategory value)? failureCategory,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _Success implements CategoryState {
  const factory _Success() = _$SuccessImpl;
}

/// @nodoc
abstract class _$$LoadingCategoryImplCopyWith<$Res> {
  factory _$$LoadingCategoryImplCopyWith(_$LoadingCategoryImpl value,
          $Res Function(_$LoadingCategoryImpl) then) =
      __$$LoadingCategoryImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingCategoryImplCopyWithImpl<$Res>
    extends _$CategoryStateCopyWithImpl<$Res, _$LoadingCategoryImpl>
    implements _$$LoadingCategoryImplCopyWith<$Res> {
  __$$LoadingCategoryImplCopyWithImpl(
      _$LoadingCategoryImpl _value, $Res Function(_$LoadingCategoryImpl) _then)
      : super(_value, _then);

  /// Create a copy of CategoryState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadingCategoryImpl implements _LoadingCategory {
  const _$LoadingCategoryImpl();

  @override
  String toString() {
    return 'CategoryState.loadingCategory()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingCategoryImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function() loadingCategory,
    required TResult Function() successCategory,
    required TResult Function(String err) failure,
    required TResult Function(String err) failureCategory,
  }) {
    return loadingCategory();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? success,
    TResult? Function()? loadingCategory,
    TResult? Function()? successCategory,
    TResult? Function(String err)? failure,
    TResult? Function(String err)? failureCategory,
  }) {
    return loadingCategory?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function()? loadingCategory,
    TResult Function()? successCategory,
    TResult Function(String err)? failure,
    TResult Function(String err)? failureCategory,
    required TResult orElse(),
  }) {
    if (loadingCategory != null) {
      return loadingCategory();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_LoadingCategory value) loadingCategory,
    required TResult Function(_SuccessCategory value) successCategory,
    required TResult Function(_Failure value) failure,
    required TResult Function(_failureCategory value) failureCategory,
  }) {
    return loadingCategory(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_LoadingCategory value)? loadingCategory,
    TResult? Function(_SuccessCategory value)? successCategory,
    TResult? Function(_Failure value)? failure,
    TResult? Function(_failureCategory value)? failureCategory,
  }) {
    return loadingCategory?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_LoadingCategory value)? loadingCategory,
    TResult Function(_SuccessCategory value)? successCategory,
    TResult Function(_Failure value)? failure,
    TResult Function(_failureCategory value)? failureCategory,
    required TResult orElse(),
  }) {
    if (loadingCategory != null) {
      return loadingCategory(this);
    }
    return orElse();
  }
}

abstract class _LoadingCategory implements CategoryState {
  const factory _LoadingCategory() = _$LoadingCategoryImpl;
}

/// @nodoc
abstract class _$$SuccessCategoryImplCopyWith<$Res> {
  factory _$$SuccessCategoryImplCopyWith(_$SuccessCategoryImpl value,
          $Res Function(_$SuccessCategoryImpl) then) =
      __$$SuccessCategoryImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SuccessCategoryImplCopyWithImpl<$Res>
    extends _$CategoryStateCopyWithImpl<$Res, _$SuccessCategoryImpl>
    implements _$$SuccessCategoryImplCopyWith<$Res> {
  __$$SuccessCategoryImplCopyWithImpl(
      _$SuccessCategoryImpl _value, $Res Function(_$SuccessCategoryImpl) _then)
      : super(_value, _then);

  /// Create a copy of CategoryState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$SuccessCategoryImpl implements _SuccessCategory {
  const _$SuccessCategoryImpl();

  @override
  String toString() {
    return 'CategoryState.successCategory()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SuccessCategoryImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function() loadingCategory,
    required TResult Function() successCategory,
    required TResult Function(String err) failure,
    required TResult Function(String err) failureCategory,
  }) {
    return successCategory();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? success,
    TResult? Function()? loadingCategory,
    TResult? Function()? successCategory,
    TResult? Function(String err)? failure,
    TResult? Function(String err)? failureCategory,
  }) {
    return successCategory?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function()? loadingCategory,
    TResult Function()? successCategory,
    TResult Function(String err)? failure,
    TResult Function(String err)? failureCategory,
    required TResult orElse(),
  }) {
    if (successCategory != null) {
      return successCategory();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_LoadingCategory value) loadingCategory,
    required TResult Function(_SuccessCategory value) successCategory,
    required TResult Function(_Failure value) failure,
    required TResult Function(_failureCategory value) failureCategory,
  }) {
    return successCategory(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_LoadingCategory value)? loadingCategory,
    TResult? Function(_SuccessCategory value)? successCategory,
    TResult? Function(_Failure value)? failure,
    TResult? Function(_failureCategory value)? failureCategory,
  }) {
    return successCategory?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_LoadingCategory value)? loadingCategory,
    TResult Function(_SuccessCategory value)? successCategory,
    TResult Function(_Failure value)? failure,
    TResult Function(_failureCategory value)? failureCategory,
    required TResult orElse(),
  }) {
    if (successCategory != null) {
      return successCategory(this);
    }
    return orElse();
  }
}

abstract class _SuccessCategory implements CategoryState {
  const factory _SuccessCategory() = _$SuccessCategoryImpl;
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
    extends _$CategoryStateCopyWithImpl<$Res, _$FailureImpl>
    implements _$$FailureImplCopyWith<$Res> {
  __$$FailureImplCopyWithImpl(
      _$FailureImpl _value, $Res Function(_$FailureImpl) _then)
      : super(_value, _then);

  /// Create a copy of CategoryState
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
    return 'CategoryState.failure(err: $err)';
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

  /// Create a copy of CategoryState
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
    required TResult Function() loadingCategory,
    required TResult Function() successCategory,
    required TResult Function(String err) failure,
    required TResult Function(String err) failureCategory,
  }) {
    return failure(err);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? success,
    TResult? Function()? loadingCategory,
    TResult? Function()? successCategory,
    TResult? Function(String err)? failure,
    TResult? Function(String err)? failureCategory,
  }) {
    return failure?.call(err);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function()? loadingCategory,
    TResult Function()? successCategory,
    TResult Function(String err)? failure,
    TResult Function(String err)? failureCategory,
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
    required TResult Function(_LoadingCategory value) loadingCategory,
    required TResult Function(_SuccessCategory value) successCategory,
    required TResult Function(_Failure value) failure,
    required TResult Function(_failureCategory value) failureCategory,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_LoadingCategory value)? loadingCategory,
    TResult? Function(_SuccessCategory value)? successCategory,
    TResult? Function(_Failure value)? failure,
    TResult? Function(_failureCategory value)? failureCategory,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_LoadingCategory value)? loadingCategory,
    TResult Function(_SuccessCategory value)? successCategory,
    TResult Function(_Failure value)? failure,
    TResult Function(_failureCategory value)? failureCategory,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class _Failure implements CategoryState {
  const factory _Failure(final String err) = _$FailureImpl;

  String get err;

  /// Create a copy of CategoryState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FailureImplCopyWith<_$FailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$failureCategoryImplCopyWith<$Res> {
  factory _$$failureCategoryImplCopyWith(_$failureCategoryImpl value,
          $Res Function(_$failureCategoryImpl) then) =
      __$$failureCategoryImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String err});
}

/// @nodoc
class __$$failureCategoryImplCopyWithImpl<$Res>
    extends _$CategoryStateCopyWithImpl<$Res, _$failureCategoryImpl>
    implements _$$failureCategoryImplCopyWith<$Res> {
  __$$failureCategoryImplCopyWithImpl(
      _$failureCategoryImpl _value, $Res Function(_$failureCategoryImpl) _then)
      : super(_value, _then);

  /// Create a copy of CategoryState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? err = null,
  }) {
    return _then(_$failureCategoryImpl(
      null == err
          ? _value.err
          : err // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$failureCategoryImpl implements _failureCategory {
  const _$failureCategoryImpl(this.err);

  @override
  final String err;

  @override
  String toString() {
    return 'CategoryState.failureCategory(err: $err)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$failureCategoryImpl &&
            (identical(other.err, err) || other.err == err));
  }

  @override
  int get hashCode => Object.hash(runtimeType, err);

  /// Create a copy of CategoryState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$failureCategoryImplCopyWith<_$failureCategoryImpl> get copyWith =>
      __$$failureCategoryImplCopyWithImpl<_$failureCategoryImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function() loadingCategory,
    required TResult Function() successCategory,
    required TResult Function(String err) failure,
    required TResult Function(String err) failureCategory,
  }) {
    return failureCategory(err);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? success,
    TResult? Function()? loadingCategory,
    TResult? Function()? successCategory,
    TResult? Function(String err)? failure,
    TResult? Function(String err)? failureCategory,
  }) {
    return failureCategory?.call(err);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function()? loadingCategory,
    TResult Function()? successCategory,
    TResult Function(String err)? failure,
    TResult Function(String err)? failureCategory,
    required TResult orElse(),
  }) {
    if (failureCategory != null) {
      return failureCategory(err);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_LoadingCategory value) loadingCategory,
    required TResult Function(_SuccessCategory value) successCategory,
    required TResult Function(_Failure value) failure,
    required TResult Function(_failureCategory value) failureCategory,
  }) {
    return failureCategory(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_LoadingCategory value)? loadingCategory,
    TResult? Function(_SuccessCategory value)? successCategory,
    TResult? Function(_Failure value)? failure,
    TResult? Function(_failureCategory value)? failureCategory,
  }) {
    return failureCategory?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_LoadingCategory value)? loadingCategory,
    TResult Function(_SuccessCategory value)? successCategory,
    TResult Function(_Failure value)? failure,
    TResult Function(_failureCategory value)? failureCategory,
    required TResult orElse(),
  }) {
    if (failureCategory != null) {
      return failureCategory(this);
    }
    return orElse();
  }
}

abstract class _failureCategory implements CategoryState {
  const factory _failureCategory(final String err) = _$failureCategoryImpl;

  String get err;

  /// Create a copy of CategoryState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$failureCategoryImplCopyWith<_$failureCategoryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
