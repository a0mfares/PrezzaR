// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'fav_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$FavEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id) addFavVendor,
    required TResult Function(String id) deleteFavVendor,
    required TResult Function() getFavVendors,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String id)? addFavVendor,
    TResult? Function(String id)? deleteFavVendor,
    TResult? Function()? getFavVendors,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id)? addFavVendor,
    TResult Function(String id)? deleteFavVendor,
    TResult Function()? getFavVendors,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddFavVendor value) addFavVendor,
    required TResult Function(_DeleteFavVendor value) deleteFavVendor,
    required TResult Function(_GetFavVendors value) getFavVendors,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AddFavVendor value)? addFavVendor,
    TResult? Function(_DeleteFavVendor value)? deleteFavVendor,
    TResult? Function(_GetFavVendors value)? getFavVendors,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddFavVendor value)? addFavVendor,
    TResult Function(_DeleteFavVendor value)? deleteFavVendor,
    TResult Function(_GetFavVendors value)? getFavVendors,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FavEventCopyWith<$Res> {
  factory $FavEventCopyWith(FavEvent value, $Res Function(FavEvent) then) =
      _$FavEventCopyWithImpl<$Res, FavEvent>;
}

/// @nodoc
class _$FavEventCopyWithImpl<$Res, $Val extends FavEvent>
    implements $FavEventCopyWith<$Res> {
  _$FavEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FavEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$AddFavVendorImplCopyWith<$Res> {
  factory _$$AddFavVendorImplCopyWith(
          _$AddFavVendorImpl value, $Res Function(_$AddFavVendorImpl) then) =
      __$$AddFavVendorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String id});
}

/// @nodoc
class __$$AddFavVendorImplCopyWithImpl<$Res>
    extends _$FavEventCopyWithImpl<$Res, _$AddFavVendorImpl>
    implements _$$AddFavVendorImplCopyWith<$Res> {
  __$$AddFavVendorImplCopyWithImpl(
      _$AddFavVendorImpl _value, $Res Function(_$AddFavVendorImpl) _then)
      : super(_value, _then);

  /// Create a copy of FavEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$AddFavVendorImpl(
      null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AddFavVendorImpl implements _AddFavVendor {
  const _$AddFavVendorImpl(this.id);

  @override
  final String id;

  @override
  String toString() {
    return 'FavEvent.addFavVendor(id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddFavVendorImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  /// Create a copy of FavEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AddFavVendorImplCopyWith<_$AddFavVendorImpl> get copyWith =>
      __$$AddFavVendorImplCopyWithImpl<_$AddFavVendorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id) addFavVendor,
    required TResult Function(String id) deleteFavVendor,
    required TResult Function() getFavVendors,
  }) {
    return addFavVendor(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String id)? addFavVendor,
    TResult? Function(String id)? deleteFavVendor,
    TResult? Function()? getFavVendors,
  }) {
    return addFavVendor?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id)? addFavVendor,
    TResult Function(String id)? deleteFavVendor,
    TResult Function()? getFavVendors,
    required TResult orElse(),
  }) {
    if (addFavVendor != null) {
      return addFavVendor(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddFavVendor value) addFavVendor,
    required TResult Function(_DeleteFavVendor value) deleteFavVendor,
    required TResult Function(_GetFavVendors value) getFavVendors,
  }) {
    return addFavVendor(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AddFavVendor value)? addFavVendor,
    TResult? Function(_DeleteFavVendor value)? deleteFavVendor,
    TResult? Function(_GetFavVendors value)? getFavVendors,
  }) {
    return addFavVendor?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddFavVendor value)? addFavVendor,
    TResult Function(_DeleteFavVendor value)? deleteFavVendor,
    TResult Function(_GetFavVendors value)? getFavVendors,
    required TResult orElse(),
  }) {
    if (addFavVendor != null) {
      return addFavVendor(this);
    }
    return orElse();
  }
}

abstract class _AddFavVendor implements FavEvent {
  const factory _AddFavVendor(final String id) = _$AddFavVendorImpl;

  String get id;

  /// Create a copy of FavEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AddFavVendorImplCopyWith<_$AddFavVendorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeleteFavVendorImplCopyWith<$Res> {
  factory _$$DeleteFavVendorImplCopyWith(_$DeleteFavVendorImpl value,
          $Res Function(_$DeleteFavVendorImpl) then) =
      __$$DeleteFavVendorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String id});
}

/// @nodoc
class __$$DeleteFavVendorImplCopyWithImpl<$Res>
    extends _$FavEventCopyWithImpl<$Res, _$DeleteFavVendorImpl>
    implements _$$DeleteFavVendorImplCopyWith<$Res> {
  __$$DeleteFavVendorImplCopyWithImpl(
      _$DeleteFavVendorImpl _value, $Res Function(_$DeleteFavVendorImpl) _then)
      : super(_value, _then);

  /// Create a copy of FavEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$DeleteFavVendorImpl(
      null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$DeleteFavVendorImpl implements _DeleteFavVendor {
  const _$DeleteFavVendorImpl(this.id);

  @override
  final String id;

  @override
  String toString() {
    return 'FavEvent.deleteFavVendor(id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteFavVendorImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  /// Create a copy of FavEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteFavVendorImplCopyWith<_$DeleteFavVendorImpl> get copyWith =>
      __$$DeleteFavVendorImplCopyWithImpl<_$DeleteFavVendorImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id) addFavVendor,
    required TResult Function(String id) deleteFavVendor,
    required TResult Function() getFavVendors,
  }) {
    return deleteFavVendor(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String id)? addFavVendor,
    TResult? Function(String id)? deleteFavVendor,
    TResult? Function()? getFavVendors,
  }) {
    return deleteFavVendor?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id)? addFavVendor,
    TResult Function(String id)? deleteFavVendor,
    TResult Function()? getFavVendors,
    required TResult orElse(),
  }) {
    if (deleteFavVendor != null) {
      return deleteFavVendor(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddFavVendor value) addFavVendor,
    required TResult Function(_DeleteFavVendor value) deleteFavVendor,
    required TResult Function(_GetFavVendors value) getFavVendors,
  }) {
    return deleteFavVendor(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AddFavVendor value)? addFavVendor,
    TResult? Function(_DeleteFavVendor value)? deleteFavVendor,
    TResult? Function(_GetFavVendors value)? getFavVendors,
  }) {
    return deleteFavVendor?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddFavVendor value)? addFavVendor,
    TResult Function(_DeleteFavVendor value)? deleteFavVendor,
    TResult Function(_GetFavVendors value)? getFavVendors,
    required TResult orElse(),
  }) {
    if (deleteFavVendor != null) {
      return deleteFavVendor(this);
    }
    return orElse();
  }
}

abstract class _DeleteFavVendor implements FavEvent {
  const factory _DeleteFavVendor(final String id) = _$DeleteFavVendorImpl;

  String get id;

  /// Create a copy of FavEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DeleteFavVendorImplCopyWith<_$DeleteFavVendorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetFavVendorsImplCopyWith<$Res> {
  factory _$$GetFavVendorsImplCopyWith(
          _$GetFavVendorsImpl value, $Res Function(_$GetFavVendorsImpl) then) =
      __$$GetFavVendorsImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetFavVendorsImplCopyWithImpl<$Res>
    extends _$FavEventCopyWithImpl<$Res, _$GetFavVendorsImpl>
    implements _$$GetFavVendorsImplCopyWith<$Res> {
  __$$GetFavVendorsImplCopyWithImpl(
      _$GetFavVendorsImpl _value, $Res Function(_$GetFavVendorsImpl) _then)
      : super(_value, _then);

  /// Create a copy of FavEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$GetFavVendorsImpl implements _GetFavVendors {
  const _$GetFavVendorsImpl();

  @override
  String toString() {
    return 'FavEvent.getFavVendors()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetFavVendorsImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id) addFavVendor,
    required TResult Function(String id) deleteFavVendor,
    required TResult Function() getFavVendors,
  }) {
    return getFavVendors();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String id)? addFavVendor,
    TResult? Function(String id)? deleteFavVendor,
    TResult? Function()? getFavVendors,
  }) {
    return getFavVendors?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id)? addFavVendor,
    TResult Function(String id)? deleteFavVendor,
    TResult Function()? getFavVendors,
    required TResult orElse(),
  }) {
    if (getFavVendors != null) {
      return getFavVendors();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddFavVendor value) addFavVendor,
    required TResult Function(_DeleteFavVendor value) deleteFavVendor,
    required TResult Function(_GetFavVendors value) getFavVendors,
  }) {
    return getFavVendors(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AddFavVendor value)? addFavVendor,
    TResult? Function(_DeleteFavVendor value)? deleteFavVendor,
    TResult? Function(_GetFavVendors value)? getFavVendors,
  }) {
    return getFavVendors?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddFavVendor value)? addFavVendor,
    TResult Function(_DeleteFavVendor value)? deleteFavVendor,
    TResult Function(_GetFavVendors value)? getFavVendors,
    required TResult orElse(),
  }) {
    if (getFavVendors != null) {
      return getFavVendors(this);
    }
    return orElse();
  }
}

abstract class _GetFavVendors implements FavEvent {
  const factory _GetFavVendors() = _$GetFavVendorsImpl;
}

/// @nodoc
mixin _$FavState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function(String vendorId) vendorLoading,
    required TResult Function(String vendorId) successAdded,
    required TResult Function(String vendorId) successDeleted,
    required TResult Function(String err) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? success,
    TResult? Function(String vendorId)? vendorLoading,
    TResult? Function(String vendorId)? successAdded,
    TResult? Function(String vendorId)? successDeleted,
    TResult? Function(String err)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function(String vendorId)? vendorLoading,
    TResult Function(String vendorId)? successAdded,
    TResult Function(String vendorId)? successDeleted,
    TResult Function(String err)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_VendorLoading value) vendorLoading,
    required TResult Function(_SuccessAdded value) successAdded,
    required TResult Function(_SuccessDeleted value) successDeleted,
    required TResult Function(_Failure value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_VendorLoading value)? vendorLoading,
    TResult? Function(_SuccessAdded value)? successAdded,
    TResult? Function(_SuccessDeleted value)? successDeleted,
    TResult? Function(_Failure value)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_VendorLoading value)? vendorLoading,
    TResult Function(_SuccessAdded value)? successAdded,
    TResult Function(_SuccessDeleted value)? successDeleted,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FavStateCopyWith<$Res> {
  factory $FavStateCopyWith(FavState value, $Res Function(FavState) then) =
      _$FavStateCopyWithImpl<$Res, FavState>;
}

/// @nodoc
class _$FavStateCopyWithImpl<$Res, $Val extends FavState>
    implements $FavStateCopyWith<$Res> {
  _$FavStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FavState
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
    extends _$FavStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of FavState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'FavState.initial()';
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
    required TResult Function(String vendorId) vendorLoading,
    required TResult Function(String vendorId) successAdded,
    required TResult Function(String vendorId) successDeleted,
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
    TResult? Function(String vendorId)? vendorLoading,
    TResult? Function(String vendorId)? successAdded,
    TResult? Function(String vendorId)? successDeleted,
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
    TResult Function(String vendorId)? vendorLoading,
    TResult Function(String vendorId)? successAdded,
    TResult Function(String vendorId)? successDeleted,
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
    required TResult Function(_VendorLoading value) vendorLoading,
    required TResult Function(_SuccessAdded value) successAdded,
    required TResult Function(_SuccessDeleted value) successDeleted,
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
    TResult? Function(_VendorLoading value)? vendorLoading,
    TResult? Function(_SuccessAdded value)? successAdded,
    TResult? Function(_SuccessDeleted value)? successDeleted,
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
    TResult Function(_VendorLoading value)? vendorLoading,
    TResult Function(_SuccessAdded value)? successAdded,
    TResult Function(_SuccessDeleted value)? successDeleted,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements FavState {
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
    extends _$FavStateCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
      _$LoadingImpl _value, $Res Function(_$LoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of FavState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadingImpl implements _Loading {
  const _$LoadingImpl();

  @override
  String toString() {
    return 'FavState.loading()';
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
    required TResult Function(String vendorId) vendorLoading,
    required TResult Function(String vendorId) successAdded,
    required TResult Function(String vendorId) successDeleted,
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
    TResult? Function(String vendorId)? vendorLoading,
    TResult? Function(String vendorId)? successAdded,
    TResult? Function(String vendorId)? successDeleted,
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
    TResult Function(String vendorId)? vendorLoading,
    TResult Function(String vendorId)? successAdded,
    TResult Function(String vendorId)? successDeleted,
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
    required TResult Function(_VendorLoading value) vendorLoading,
    required TResult Function(_SuccessAdded value) successAdded,
    required TResult Function(_SuccessDeleted value) successDeleted,
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
    TResult? Function(_VendorLoading value)? vendorLoading,
    TResult? Function(_SuccessAdded value)? successAdded,
    TResult? Function(_SuccessDeleted value)? successDeleted,
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
    TResult Function(_VendorLoading value)? vendorLoading,
    TResult Function(_SuccessAdded value)? successAdded,
    TResult Function(_SuccessDeleted value)? successDeleted,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements FavState {
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
    extends _$FavStateCopyWithImpl<$Res, _$SuccessImpl>
    implements _$$SuccessImplCopyWith<$Res> {
  __$$SuccessImplCopyWithImpl(
      _$SuccessImpl _value, $Res Function(_$SuccessImpl) _then)
      : super(_value, _then);

  /// Create a copy of FavState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$SuccessImpl implements _Success {
  const _$SuccessImpl();

  @override
  String toString() {
    return 'FavState.success()';
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
    required TResult Function(String vendorId) vendorLoading,
    required TResult Function(String vendorId) successAdded,
    required TResult Function(String vendorId) successDeleted,
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
    TResult? Function(String vendorId)? vendorLoading,
    TResult? Function(String vendorId)? successAdded,
    TResult? Function(String vendorId)? successDeleted,
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
    TResult Function(String vendorId)? vendorLoading,
    TResult Function(String vendorId)? successAdded,
    TResult Function(String vendorId)? successDeleted,
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
    required TResult Function(_VendorLoading value) vendorLoading,
    required TResult Function(_SuccessAdded value) successAdded,
    required TResult Function(_SuccessDeleted value) successDeleted,
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
    TResult? Function(_VendorLoading value)? vendorLoading,
    TResult? Function(_SuccessAdded value)? successAdded,
    TResult? Function(_SuccessDeleted value)? successDeleted,
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
    TResult Function(_VendorLoading value)? vendorLoading,
    TResult Function(_SuccessAdded value)? successAdded,
    TResult Function(_SuccessDeleted value)? successDeleted,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _Success implements FavState {
  const factory _Success() = _$SuccessImpl;
}

/// @nodoc
abstract class _$$VendorLoadingImplCopyWith<$Res> {
  factory _$$VendorLoadingImplCopyWith(
          _$VendorLoadingImpl value, $Res Function(_$VendorLoadingImpl) then) =
      __$$VendorLoadingImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String vendorId});
}

/// @nodoc
class __$$VendorLoadingImplCopyWithImpl<$Res>
    extends _$FavStateCopyWithImpl<$Res, _$VendorLoadingImpl>
    implements _$$VendorLoadingImplCopyWith<$Res> {
  __$$VendorLoadingImplCopyWithImpl(
      _$VendorLoadingImpl _value, $Res Function(_$VendorLoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of FavState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? vendorId = null,
  }) {
    return _then(_$VendorLoadingImpl(
      null == vendorId
          ? _value.vendorId
          : vendorId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$VendorLoadingImpl implements _VendorLoading {
  const _$VendorLoadingImpl(this.vendorId);

  @override
  final String vendorId;

  @override
  String toString() {
    return 'FavState.vendorLoading(vendorId: $vendorId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VendorLoadingImpl &&
            (identical(other.vendorId, vendorId) ||
                other.vendorId == vendorId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, vendorId);

  /// Create a copy of FavState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$VendorLoadingImplCopyWith<_$VendorLoadingImpl> get copyWith =>
      __$$VendorLoadingImplCopyWithImpl<_$VendorLoadingImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function(String vendorId) vendorLoading,
    required TResult Function(String vendorId) successAdded,
    required TResult Function(String vendorId) successDeleted,
    required TResult Function(String err) failure,
  }) {
    return vendorLoading(vendorId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? success,
    TResult? Function(String vendorId)? vendorLoading,
    TResult? Function(String vendorId)? successAdded,
    TResult? Function(String vendorId)? successDeleted,
    TResult? Function(String err)? failure,
  }) {
    return vendorLoading?.call(vendorId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function(String vendorId)? vendorLoading,
    TResult Function(String vendorId)? successAdded,
    TResult Function(String vendorId)? successDeleted,
    TResult Function(String err)? failure,
    required TResult orElse(),
  }) {
    if (vendorLoading != null) {
      return vendorLoading(vendorId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_VendorLoading value) vendorLoading,
    required TResult Function(_SuccessAdded value) successAdded,
    required TResult Function(_SuccessDeleted value) successDeleted,
    required TResult Function(_Failure value) failure,
  }) {
    return vendorLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_VendorLoading value)? vendorLoading,
    TResult? Function(_SuccessAdded value)? successAdded,
    TResult? Function(_SuccessDeleted value)? successDeleted,
    TResult? Function(_Failure value)? failure,
  }) {
    return vendorLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_VendorLoading value)? vendorLoading,
    TResult Function(_SuccessAdded value)? successAdded,
    TResult Function(_SuccessDeleted value)? successDeleted,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (vendorLoading != null) {
      return vendorLoading(this);
    }
    return orElse();
  }
}

abstract class _VendorLoading implements FavState {
  const factory _VendorLoading(final String vendorId) = _$VendorLoadingImpl;

  String get vendorId;

  /// Create a copy of FavState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$VendorLoadingImplCopyWith<_$VendorLoadingImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SuccessAddedImplCopyWith<$Res> {
  factory _$$SuccessAddedImplCopyWith(
          _$SuccessAddedImpl value, $Res Function(_$SuccessAddedImpl) then) =
      __$$SuccessAddedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String vendorId});
}

/// @nodoc
class __$$SuccessAddedImplCopyWithImpl<$Res>
    extends _$FavStateCopyWithImpl<$Res, _$SuccessAddedImpl>
    implements _$$SuccessAddedImplCopyWith<$Res> {
  __$$SuccessAddedImplCopyWithImpl(
      _$SuccessAddedImpl _value, $Res Function(_$SuccessAddedImpl) _then)
      : super(_value, _then);

  /// Create a copy of FavState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? vendorId = null,
  }) {
    return _then(_$SuccessAddedImpl(
      null == vendorId
          ? _value.vendorId
          : vendorId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SuccessAddedImpl implements _SuccessAdded {
  const _$SuccessAddedImpl(this.vendorId);

  @override
  final String vendorId;

  @override
  String toString() {
    return 'FavState.successAdded(vendorId: $vendorId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SuccessAddedImpl &&
            (identical(other.vendorId, vendorId) ||
                other.vendorId == vendorId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, vendorId);

  /// Create a copy of FavState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SuccessAddedImplCopyWith<_$SuccessAddedImpl> get copyWith =>
      __$$SuccessAddedImplCopyWithImpl<_$SuccessAddedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function(String vendorId) vendorLoading,
    required TResult Function(String vendorId) successAdded,
    required TResult Function(String vendorId) successDeleted,
    required TResult Function(String err) failure,
  }) {
    return successAdded(vendorId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? success,
    TResult? Function(String vendorId)? vendorLoading,
    TResult? Function(String vendorId)? successAdded,
    TResult? Function(String vendorId)? successDeleted,
    TResult? Function(String err)? failure,
  }) {
    return successAdded?.call(vendorId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function(String vendorId)? vendorLoading,
    TResult Function(String vendorId)? successAdded,
    TResult Function(String vendorId)? successDeleted,
    TResult Function(String err)? failure,
    required TResult orElse(),
  }) {
    if (successAdded != null) {
      return successAdded(vendorId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_VendorLoading value) vendorLoading,
    required TResult Function(_SuccessAdded value) successAdded,
    required TResult Function(_SuccessDeleted value) successDeleted,
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
    TResult? Function(_VendorLoading value)? vendorLoading,
    TResult? Function(_SuccessAdded value)? successAdded,
    TResult? Function(_SuccessDeleted value)? successDeleted,
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
    TResult Function(_VendorLoading value)? vendorLoading,
    TResult Function(_SuccessAdded value)? successAdded,
    TResult Function(_SuccessDeleted value)? successDeleted,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (successAdded != null) {
      return successAdded(this);
    }
    return orElse();
  }
}

abstract class _SuccessAdded implements FavState {
  const factory _SuccessAdded(final String vendorId) = _$SuccessAddedImpl;

  String get vendorId;

  /// Create a copy of FavState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SuccessAddedImplCopyWith<_$SuccessAddedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SuccessDeletedImplCopyWith<$Res> {
  factory _$$SuccessDeletedImplCopyWith(_$SuccessDeletedImpl value,
          $Res Function(_$SuccessDeletedImpl) then) =
      __$$SuccessDeletedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String vendorId});
}

/// @nodoc
class __$$SuccessDeletedImplCopyWithImpl<$Res>
    extends _$FavStateCopyWithImpl<$Res, _$SuccessDeletedImpl>
    implements _$$SuccessDeletedImplCopyWith<$Res> {
  __$$SuccessDeletedImplCopyWithImpl(
      _$SuccessDeletedImpl _value, $Res Function(_$SuccessDeletedImpl) _then)
      : super(_value, _then);

  /// Create a copy of FavState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? vendorId = null,
  }) {
    return _then(_$SuccessDeletedImpl(
      null == vendorId
          ? _value.vendorId
          : vendorId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SuccessDeletedImpl implements _SuccessDeleted {
  const _$SuccessDeletedImpl(this.vendorId);

  @override
  final String vendorId;

  @override
  String toString() {
    return 'FavState.successDeleted(vendorId: $vendorId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SuccessDeletedImpl &&
            (identical(other.vendorId, vendorId) ||
                other.vendorId == vendorId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, vendorId);

  /// Create a copy of FavState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SuccessDeletedImplCopyWith<_$SuccessDeletedImpl> get copyWith =>
      __$$SuccessDeletedImplCopyWithImpl<_$SuccessDeletedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function(String vendorId) vendorLoading,
    required TResult Function(String vendorId) successAdded,
    required TResult Function(String vendorId) successDeleted,
    required TResult Function(String err) failure,
  }) {
    return successDeleted(vendorId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? success,
    TResult? Function(String vendorId)? vendorLoading,
    TResult? Function(String vendorId)? successAdded,
    TResult? Function(String vendorId)? successDeleted,
    TResult? Function(String err)? failure,
  }) {
    return successDeleted?.call(vendorId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function(String vendorId)? vendorLoading,
    TResult Function(String vendorId)? successAdded,
    TResult Function(String vendorId)? successDeleted,
    TResult Function(String err)? failure,
    required TResult orElse(),
  }) {
    if (successDeleted != null) {
      return successDeleted(vendorId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_VendorLoading value) vendorLoading,
    required TResult Function(_SuccessAdded value) successAdded,
    required TResult Function(_SuccessDeleted value) successDeleted,
    required TResult Function(_Failure value) failure,
  }) {
    return successDeleted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_VendorLoading value)? vendorLoading,
    TResult? Function(_SuccessAdded value)? successAdded,
    TResult? Function(_SuccessDeleted value)? successDeleted,
    TResult? Function(_Failure value)? failure,
  }) {
    return successDeleted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_VendorLoading value)? vendorLoading,
    TResult Function(_SuccessAdded value)? successAdded,
    TResult Function(_SuccessDeleted value)? successDeleted,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (successDeleted != null) {
      return successDeleted(this);
    }
    return orElse();
  }
}

abstract class _SuccessDeleted implements FavState {
  const factory _SuccessDeleted(final String vendorId) = _$SuccessDeletedImpl;

  String get vendorId;

  /// Create a copy of FavState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SuccessDeletedImplCopyWith<_$SuccessDeletedImpl> get copyWith =>
      throw _privateConstructorUsedError;
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
    extends _$FavStateCopyWithImpl<$Res, _$FailureImpl>
    implements _$$FailureImplCopyWith<$Res> {
  __$$FailureImplCopyWithImpl(
      _$FailureImpl _value, $Res Function(_$FailureImpl) _then)
      : super(_value, _then);

  /// Create a copy of FavState
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
    return 'FavState.failure(err: $err)';
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

  /// Create a copy of FavState
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
    required TResult Function(String vendorId) vendorLoading,
    required TResult Function(String vendorId) successAdded,
    required TResult Function(String vendorId) successDeleted,
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
    TResult? Function(String vendorId)? vendorLoading,
    TResult? Function(String vendorId)? successAdded,
    TResult? Function(String vendorId)? successDeleted,
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
    TResult Function(String vendorId)? vendorLoading,
    TResult Function(String vendorId)? successAdded,
    TResult Function(String vendorId)? successDeleted,
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
    required TResult Function(_VendorLoading value) vendorLoading,
    required TResult Function(_SuccessAdded value) successAdded,
    required TResult Function(_SuccessDeleted value) successDeleted,
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
    TResult? Function(_VendorLoading value)? vendorLoading,
    TResult? Function(_SuccessAdded value)? successAdded,
    TResult? Function(_SuccessDeleted value)? successDeleted,
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
    TResult Function(_VendorLoading value)? vendorLoading,
    TResult Function(_SuccessAdded value)? successAdded,
    TResult Function(_SuccessDeleted value)? successDeleted,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class _Failure implements FavState {
  const factory _Failure(final String err) = _$FailureImpl;

  String get err;

  /// Create a copy of FavState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FailureImplCopyWith<_$FailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
