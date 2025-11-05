// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'notify_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$NotifyEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String type) getAllNotifications,
    required TResult Function(String notifyId) markNotifyRead,
    required TResult Function() markAllNotify,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String type)? getAllNotifications,
    TResult? Function(String notifyId)? markNotifyRead,
    TResult? Function()? markAllNotify,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String type)? getAllNotifications,
    TResult Function(String notifyId)? markNotifyRead,
    TResult Function()? markAllNotify,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetAllNotifications value) getAllNotifications,
    required TResult Function(_MarkNotifyRead value) markNotifyRead,
    required TResult Function(_MarkAllNotify value) markAllNotify,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetAllNotifications value)? getAllNotifications,
    TResult? Function(_MarkNotifyRead value)? markNotifyRead,
    TResult? Function(_MarkAllNotify value)? markAllNotify,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetAllNotifications value)? getAllNotifications,
    TResult Function(_MarkNotifyRead value)? markNotifyRead,
    TResult Function(_MarkAllNotify value)? markAllNotify,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NotifyEventCopyWith<$Res> {
  factory $NotifyEventCopyWith(
          NotifyEvent value, $Res Function(NotifyEvent) then) =
      _$NotifyEventCopyWithImpl<$Res, NotifyEvent>;
}

/// @nodoc
class _$NotifyEventCopyWithImpl<$Res, $Val extends NotifyEvent>
    implements $NotifyEventCopyWith<$Res> {
  _$NotifyEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetAllNotificationsImplCopyWith<$Res> {
  factory _$$GetAllNotificationsImplCopyWith(_$GetAllNotificationsImpl value,
          $Res Function(_$GetAllNotificationsImpl) then) =
      __$$GetAllNotificationsImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String type});
}

/// @nodoc
class __$$GetAllNotificationsImplCopyWithImpl<$Res>
    extends _$NotifyEventCopyWithImpl<$Res, _$GetAllNotificationsImpl>
    implements _$$GetAllNotificationsImplCopyWith<$Res> {
  __$$GetAllNotificationsImplCopyWithImpl(_$GetAllNotificationsImpl _value,
      $Res Function(_$GetAllNotificationsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
  }) {
    return _then(_$GetAllNotificationsImpl(
      null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetAllNotificationsImpl implements _GetAllNotifications {
  const _$GetAllNotificationsImpl(this.type);

  @override
  final String type;

  @override
  String toString() {
    return 'NotifyEvent.getAllNotifications(type: $type)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetAllNotificationsImpl &&
            (identical(other.type, type) || other.type == type));
  }

  @override
  int get hashCode => Object.hash(runtimeType, type);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetAllNotificationsImplCopyWith<_$GetAllNotificationsImpl> get copyWith =>
      __$$GetAllNotificationsImplCopyWithImpl<_$GetAllNotificationsImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String type) getAllNotifications,
    required TResult Function(String notifyId) markNotifyRead,
    required TResult Function() markAllNotify,
  }) {
    return getAllNotifications(type);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String type)? getAllNotifications,
    TResult? Function(String notifyId)? markNotifyRead,
    TResult? Function()? markAllNotify,
  }) {
    return getAllNotifications?.call(type);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String type)? getAllNotifications,
    TResult Function(String notifyId)? markNotifyRead,
    TResult Function()? markAllNotify,
    required TResult orElse(),
  }) {
    if (getAllNotifications != null) {
      return getAllNotifications(type);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetAllNotifications value) getAllNotifications,
    required TResult Function(_MarkNotifyRead value) markNotifyRead,
    required TResult Function(_MarkAllNotify value) markAllNotify,
  }) {
    return getAllNotifications(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetAllNotifications value)? getAllNotifications,
    TResult? Function(_MarkNotifyRead value)? markNotifyRead,
    TResult? Function(_MarkAllNotify value)? markAllNotify,
  }) {
    return getAllNotifications?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetAllNotifications value)? getAllNotifications,
    TResult Function(_MarkNotifyRead value)? markNotifyRead,
    TResult Function(_MarkAllNotify value)? markAllNotify,
    required TResult orElse(),
  }) {
    if (getAllNotifications != null) {
      return getAllNotifications(this);
    }
    return orElse();
  }
}

abstract class _GetAllNotifications implements NotifyEvent {
  const factory _GetAllNotifications(final String type) =
      _$GetAllNotificationsImpl;

  String get type;
  @JsonKey(ignore: true)
  _$$GetAllNotificationsImplCopyWith<_$GetAllNotificationsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$MarkNotifyReadImplCopyWith<$Res> {
  factory _$$MarkNotifyReadImplCopyWith(_$MarkNotifyReadImpl value,
          $Res Function(_$MarkNotifyReadImpl) then) =
      __$$MarkNotifyReadImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String notifyId});
}

/// @nodoc
class __$$MarkNotifyReadImplCopyWithImpl<$Res>
    extends _$NotifyEventCopyWithImpl<$Res, _$MarkNotifyReadImpl>
    implements _$$MarkNotifyReadImplCopyWith<$Res> {
  __$$MarkNotifyReadImplCopyWithImpl(
      _$MarkNotifyReadImpl _value, $Res Function(_$MarkNotifyReadImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? notifyId = null,
  }) {
    return _then(_$MarkNotifyReadImpl(
      null == notifyId
          ? _value.notifyId
          : notifyId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$MarkNotifyReadImpl implements _MarkNotifyRead {
  const _$MarkNotifyReadImpl(this.notifyId);

  @override
  final String notifyId;

  @override
  String toString() {
    return 'NotifyEvent.markNotifyRead(notifyId: $notifyId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MarkNotifyReadImpl &&
            (identical(other.notifyId, notifyId) ||
                other.notifyId == notifyId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, notifyId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MarkNotifyReadImplCopyWith<_$MarkNotifyReadImpl> get copyWith =>
      __$$MarkNotifyReadImplCopyWithImpl<_$MarkNotifyReadImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String type) getAllNotifications,
    required TResult Function(String notifyId) markNotifyRead,
    required TResult Function() markAllNotify,
  }) {
    return markNotifyRead(notifyId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String type)? getAllNotifications,
    TResult? Function(String notifyId)? markNotifyRead,
    TResult? Function()? markAllNotify,
  }) {
    return markNotifyRead?.call(notifyId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String type)? getAllNotifications,
    TResult Function(String notifyId)? markNotifyRead,
    TResult Function()? markAllNotify,
    required TResult orElse(),
  }) {
    if (markNotifyRead != null) {
      return markNotifyRead(notifyId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetAllNotifications value) getAllNotifications,
    required TResult Function(_MarkNotifyRead value) markNotifyRead,
    required TResult Function(_MarkAllNotify value) markAllNotify,
  }) {
    return markNotifyRead(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetAllNotifications value)? getAllNotifications,
    TResult? Function(_MarkNotifyRead value)? markNotifyRead,
    TResult? Function(_MarkAllNotify value)? markAllNotify,
  }) {
    return markNotifyRead?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetAllNotifications value)? getAllNotifications,
    TResult Function(_MarkNotifyRead value)? markNotifyRead,
    TResult Function(_MarkAllNotify value)? markAllNotify,
    required TResult orElse(),
  }) {
    if (markNotifyRead != null) {
      return markNotifyRead(this);
    }
    return orElse();
  }
}

abstract class _MarkNotifyRead implements NotifyEvent {
  const factory _MarkNotifyRead(final String notifyId) = _$MarkNotifyReadImpl;

  String get notifyId;
  @JsonKey(ignore: true)
  _$$MarkNotifyReadImplCopyWith<_$MarkNotifyReadImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$MarkAllNotifyImplCopyWith<$Res> {
  factory _$$MarkAllNotifyImplCopyWith(
          _$MarkAllNotifyImpl value, $Res Function(_$MarkAllNotifyImpl) then) =
      __$$MarkAllNotifyImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$MarkAllNotifyImplCopyWithImpl<$Res>
    extends _$NotifyEventCopyWithImpl<$Res, _$MarkAllNotifyImpl>
    implements _$$MarkAllNotifyImplCopyWith<$Res> {
  __$$MarkAllNotifyImplCopyWithImpl(
      _$MarkAllNotifyImpl _value, $Res Function(_$MarkAllNotifyImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$MarkAllNotifyImpl implements _MarkAllNotify {
  const _$MarkAllNotifyImpl();

  @override
  String toString() {
    return 'NotifyEvent.markAllNotify()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$MarkAllNotifyImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String type) getAllNotifications,
    required TResult Function(String notifyId) markNotifyRead,
    required TResult Function() markAllNotify,
  }) {
    return markAllNotify();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String type)? getAllNotifications,
    TResult? Function(String notifyId)? markNotifyRead,
    TResult? Function()? markAllNotify,
  }) {
    return markAllNotify?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String type)? getAllNotifications,
    TResult Function(String notifyId)? markNotifyRead,
    TResult Function()? markAllNotify,
    required TResult orElse(),
  }) {
    if (markAllNotify != null) {
      return markAllNotify();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetAllNotifications value) getAllNotifications,
    required TResult Function(_MarkNotifyRead value) markNotifyRead,
    required TResult Function(_MarkAllNotify value) markAllNotify,
  }) {
    return markAllNotify(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetAllNotifications value)? getAllNotifications,
    TResult? Function(_MarkNotifyRead value)? markNotifyRead,
    TResult? Function(_MarkAllNotify value)? markAllNotify,
  }) {
    return markAllNotify?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetAllNotifications value)? getAllNotifications,
    TResult Function(_MarkNotifyRead value)? markNotifyRead,
    TResult Function(_MarkAllNotify value)? markAllNotify,
    required TResult orElse(),
  }) {
    if (markAllNotify != null) {
      return markAllNotify(this);
    }
    return orElse();
  }
}

abstract class _MarkAllNotify implements NotifyEvent {
  const factory _MarkAllNotify() = _$MarkAllNotifyImpl;
}

/// @nodoc
mixin _$NotifyState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function(String err) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? success,
    TResult? Function(String err)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function(String err)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Failure value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Failure value)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NotifyStateCopyWith<$Res> {
  factory $NotifyStateCopyWith(
          NotifyState value, $Res Function(NotifyState) then) =
      _$NotifyStateCopyWithImpl<$Res, NotifyState>;
}

/// @nodoc
class _$NotifyStateCopyWithImpl<$Res, $Val extends NotifyState>
    implements $NotifyStateCopyWith<$Res> {
  _$NotifyStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$NotifyStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'NotifyState.initial()';
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
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements NotifyState {
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
    extends _$NotifyStateCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
      _$LoadingImpl _value, $Res Function(_$LoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadingImpl implements _Loading {
  const _$LoadingImpl();

  @override
  String toString() {
    return 'NotifyState.loading()';
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
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements NotifyState {
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
    extends _$NotifyStateCopyWithImpl<$Res, _$SuccessImpl>
    implements _$$SuccessImplCopyWith<$Res> {
  __$$SuccessImplCopyWithImpl(
      _$SuccessImpl _value, $Res Function(_$SuccessImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SuccessImpl implements _Success {
  const _$SuccessImpl();

  @override
  String toString() {
    return 'NotifyState.success()';
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
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _Success implements NotifyState {
  const factory _Success() = _$SuccessImpl;
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
    extends _$NotifyStateCopyWithImpl<$Res, _$FailureImpl>
    implements _$$FailureImplCopyWith<$Res> {
  __$$FailureImplCopyWithImpl(
      _$FailureImpl _value, $Res Function(_$FailureImpl) _then)
      : super(_value, _then);

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
    return 'NotifyState.failure(err: $err)';
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

  @JsonKey(ignore: true)
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
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class _Failure implements NotifyState {
  const factory _Failure(final String err) = _$FailureImpl;

  String get err;
  @JsonKey(ignore: true)
  _$$FailureImplCopyWith<_$FailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
