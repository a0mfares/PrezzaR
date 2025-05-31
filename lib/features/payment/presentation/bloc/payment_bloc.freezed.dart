// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'payment_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$PaymentEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() auth,
    required TResult Function() addVendorCard,
    required TResult Function(String id) deleteVendorCard,
    required TResult Function() updateVendorCard,
    required TResult Function() getVendorCard,
    required TResult Function() addCustomerCard,
    required TResult Function() getCustomerCard,
    required TResult Function(String id) deleteCustomerCard,
    required TResult Function() initializeEditMode,
    required TResult Function() processToPay,
    required TResult Function() getAccessToken,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? auth,
    TResult? Function()? addVendorCard,
    TResult? Function(String id)? deleteVendorCard,
    TResult? Function()? updateVendorCard,
    TResult? Function()? getVendorCard,
    TResult? Function()? addCustomerCard,
    TResult? Function()? getCustomerCard,
    TResult? Function(String id)? deleteCustomerCard,
    TResult? Function()? initializeEditMode,
    TResult? Function()? processToPay,
    TResult? Function()? getAccessToken,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? auth,
    TResult Function()? addVendorCard,
    TResult Function(String id)? deleteVendorCard,
    TResult Function()? updateVendorCard,
    TResult Function()? getVendorCard,
    TResult Function()? addCustomerCard,
    TResult Function()? getCustomerCard,
    TResult Function(String id)? deleteCustomerCard,
    TResult Function()? initializeEditMode,
    TResult Function()? processToPay,
    TResult Function()? getAccessToken,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Auth value) auth,
    required TResult Function(_AddVendorCard value) addVendorCard,
    required TResult Function(_DeleteVendorCard value) deleteVendorCard,
    required TResult Function(_UpdateVendorCard value) updateVendorCard,
    required TResult Function(_GetVendorCard value) getVendorCard,
    required TResult Function(_AddCustomerCard value) addCustomerCard,
    required TResult Function(_GetCustomerCard value) getCustomerCard,
    required TResult Function(_DeleteCustomerCard value) deleteCustomerCard,
    required TResult Function(_InitializeEditMode value) initializeEditMode,
    required TResult Function(_ProcessToPay value) processToPay,
    required TResult Function(_GetAccessToken value) getAccessToken,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Auth value)? auth,
    TResult? Function(_AddVendorCard value)? addVendorCard,
    TResult? Function(_DeleteVendorCard value)? deleteVendorCard,
    TResult? Function(_UpdateVendorCard value)? updateVendorCard,
    TResult? Function(_GetVendorCard value)? getVendorCard,
    TResult? Function(_AddCustomerCard value)? addCustomerCard,
    TResult? Function(_GetCustomerCard value)? getCustomerCard,
    TResult? Function(_DeleteCustomerCard value)? deleteCustomerCard,
    TResult? Function(_InitializeEditMode value)? initializeEditMode,
    TResult? Function(_ProcessToPay value)? processToPay,
    TResult? Function(_GetAccessToken value)? getAccessToken,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Auth value)? auth,
    TResult Function(_AddVendorCard value)? addVendorCard,
    TResult Function(_DeleteVendorCard value)? deleteVendorCard,
    TResult Function(_UpdateVendorCard value)? updateVendorCard,
    TResult Function(_GetVendorCard value)? getVendorCard,
    TResult Function(_AddCustomerCard value)? addCustomerCard,
    TResult Function(_GetCustomerCard value)? getCustomerCard,
    TResult Function(_DeleteCustomerCard value)? deleteCustomerCard,
    TResult Function(_InitializeEditMode value)? initializeEditMode,
    TResult Function(_ProcessToPay value)? processToPay,
    TResult Function(_GetAccessToken value)? getAccessToken,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaymentEventCopyWith<$Res> {
  factory $PaymentEventCopyWith(
          PaymentEvent value, $Res Function(PaymentEvent) then) =
      _$PaymentEventCopyWithImpl<$Res, PaymentEvent>;
}

/// @nodoc
class _$PaymentEventCopyWithImpl<$Res, $Val extends PaymentEvent>
    implements $PaymentEventCopyWith<$Res> {
  _$PaymentEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PaymentEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$AuthImplCopyWith<$Res> {
  factory _$$AuthImplCopyWith(
          _$AuthImpl value, $Res Function(_$AuthImpl) then) =
      __$$AuthImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AuthImplCopyWithImpl<$Res>
    extends _$PaymentEventCopyWithImpl<$Res, _$AuthImpl>
    implements _$$AuthImplCopyWith<$Res> {
  __$$AuthImplCopyWithImpl(_$AuthImpl _value, $Res Function(_$AuthImpl) _then)
      : super(_value, _then);

  /// Create a copy of PaymentEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$AuthImpl implements _Auth {
  const _$AuthImpl();

  @override
  String toString() {
    return 'PaymentEvent.auth()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AuthImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() auth,
    required TResult Function() addVendorCard,
    required TResult Function(String id) deleteVendorCard,
    required TResult Function() updateVendorCard,
    required TResult Function() getVendorCard,
    required TResult Function() addCustomerCard,
    required TResult Function() getCustomerCard,
    required TResult Function(String id) deleteCustomerCard,
    required TResult Function() initializeEditMode,
    required TResult Function() processToPay,
    required TResult Function() getAccessToken,
  }) {
    return auth();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? auth,
    TResult? Function()? addVendorCard,
    TResult? Function(String id)? deleteVendorCard,
    TResult? Function()? updateVendorCard,
    TResult? Function()? getVendorCard,
    TResult? Function()? addCustomerCard,
    TResult? Function()? getCustomerCard,
    TResult? Function(String id)? deleteCustomerCard,
    TResult? Function()? initializeEditMode,
    TResult? Function()? processToPay,
    TResult? Function()? getAccessToken,
  }) {
    return auth?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? auth,
    TResult Function()? addVendorCard,
    TResult Function(String id)? deleteVendorCard,
    TResult Function()? updateVendorCard,
    TResult Function()? getVendorCard,
    TResult Function()? addCustomerCard,
    TResult Function()? getCustomerCard,
    TResult Function(String id)? deleteCustomerCard,
    TResult Function()? initializeEditMode,
    TResult Function()? processToPay,
    TResult Function()? getAccessToken,
    required TResult orElse(),
  }) {
    if (auth != null) {
      return auth();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Auth value) auth,
    required TResult Function(_AddVendorCard value) addVendorCard,
    required TResult Function(_DeleteVendorCard value) deleteVendorCard,
    required TResult Function(_UpdateVendorCard value) updateVendorCard,
    required TResult Function(_GetVendorCard value) getVendorCard,
    required TResult Function(_AddCustomerCard value) addCustomerCard,
    required TResult Function(_GetCustomerCard value) getCustomerCard,
    required TResult Function(_DeleteCustomerCard value) deleteCustomerCard,
    required TResult Function(_InitializeEditMode value) initializeEditMode,
    required TResult Function(_ProcessToPay value) processToPay,
    required TResult Function(_GetAccessToken value) getAccessToken,
  }) {
    return auth(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Auth value)? auth,
    TResult? Function(_AddVendorCard value)? addVendorCard,
    TResult? Function(_DeleteVendorCard value)? deleteVendorCard,
    TResult? Function(_UpdateVendorCard value)? updateVendorCard,
    TResult? Function(_GetVendorCard value)? getVendorCard,
    TResult? Function(_AddCustomerCard value)? addCustomerCard,
    TResult? Function(_GetCustomerCard value)? getCustomerCard,
    TResult? Function(_DeleteCustomerCard value)? deleteCustomerCard,
    TResult? Function(_InitializeEditMode value)? initializeEditMode,
    TResult? Function(_ProcessToPay value)? processToPay,
    TResult? Function(_GetAccessToken value)? getAccessToken,
  }) {
    return auth?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Auth value)? auth,
    TResult Function(_AddVendorCard value)? addVendorCard,
    TResult Function(_DeleteVendorCard value)? deleteVendorCard,
    TResult Function(_UpdateVendorCard value)? updateVendorCard,
    TResult Function(_GetVendorCard value)? getVendorCard,
    TResult Function(_AddCustomerCard value)? addCustomerCard,
    TResult Function(_GetCustomerCard value)? getCustomerCard,
    TResult Function(_DeleteCustomerCard value)? deleteCustomerCard,
    TResult Function(_InitializeEditMode value)? initializeEditMode,
    TResult Function(_ProcessToPay value)? processToPay,
    TResult Function(_GetAccessToken value)? getAccessToken,
    required TResult orElse(),
  }) {
    if (auth != null) {
      return auth(this);
    }
    return orElse();
  }
}

abstract class _Auth implements PaymentEvent {
  const factory _Auth() = _$AuthImpl;
}

/// @nodoc
abstract class _$$AddVendorCardImplCopyWith<$Res> {
  factory _$$AddVendorCardImplCopyWith(
          _$AddVendorCardImpl value, $Res Function(_$AddVendorCardImpl) then) =
      __$$AddVendorCardImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AddVendorCardImplCopyWithImpl<$Res>
    extends _$PaymentEventCopyWithImpl<$Res, _$AddVendorCardImpl>
    implements _$$AddVendorCardImplCopyWith<$Res> {
  __$$AddVendorCardImplCopyWithImpl(
      _$AddVendorCardImpl _value, $Res Function(_$AddVendorCardImpl) _then)
      : super(_value, _then);

  /// Create a copy of PaymentEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$AddVendorCardImpl implements _AddVendorCard {
  const _$AddVendorCardImpl();

  @override
  String toString() {
    return 'PaymentEvent.addVendorCard()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AddVendorCardImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() auth,
    required TResult Function() addVendorCard,
    required TResult Function(String id) deleteVendorCard,
    required TResult Function() updateVendorCard,
    required TResult Function() getVendorCard,
    required TResult Function() addCustomerCard,
    required TResult Function() getCustomerCard,
    required TResult Function(String id) deleteCustomerCard,
    required TResult Function() initializeEditMode,
    required TResult Function() processToPay,
    required TResult Function() getAccessToken,
  }) {
    return addVendorCard();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? auth,
    TResult? Function()? addVendorCard,
    TResult? Function(String id)? deleteVendorCard,
    TResult? Function()? updateVendorCard,
    TResult? Function()? getVendorCard,
    TResult? Function()? addCustomerCard,
    TResult? Function()? getCustomerCard,
    TResult? Function(String id)? deleteCustomerCard,
    TResult? Function()? initializeEditMode,
    TResult? Function()? processToPay,
    TResult? Function()? getAccessToken,
  }) {
    return addVendorCard?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? auth,
    TResult Function()? addVendorCard,
    TResult Function(String id)? deleteVendorCard,
    TResult Function()? updateVendorCard,
    TResult Function()? getVendorCard,
    TResult Function()? addCustomerCard,
    TResult Function()? getCustomerCard,
    TResult Function(String id)? deleteCustomerCard,
    TResult Function()? initializeEditMode,
    TResult Function()? processToPay,
    TResult Function()? getAccessToken,
    required TResult orElse(),
  }) {
    if (addVendorCard != null) {
      return addVendorCard();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Auth value) auth,
    required TResult Function(_AddVendorCard value) addVendorCard,
    required TResult Function(_DeleteVendorCard value) deleteVendorCard,
    required TResult Function(_UpdateVendorCard value) updateVendorCard,
    required TResult Function(_GetVendorCard value) getVendorCard,
    required TResult Function(_AddCustomerCard value) addCustomerCard,
    required TResult Function(_GetCustomerCard value) getCustomerCard,
    required TResult Function(_DeleteCustomerCard value) deleteCustomerCard,
    required TResult Function(_InitializeEditMode value) initializeEditMode,
    required TResult Function(_ProcessToPay value) processToPay,
    required TResult Function(_GetAccessToken value) getAccessToken,
  }) {
    return addVendorCard(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Auth value)? auth,
    TResult? Function(_AddVendorCard value)? addVendorCard,
    TResult? Function(_DeleteVendorCard value)? deleteVendorCard,
    TResult? Function(_UpdateVendorCard value)? updateVendorCard,
    TResult? Function(_GetVendorCard value)? getVendorCard,
    TResult? Function(_AddCustomerCard value)? addCustomerCard,
    TResult? Function(_GetCustomerCard value)? getCustomerCard,
    TResult? Function(_DeleteCustomerCard value)? deleteCustomerCard,
    TResult? Function(_InitializeEditMode value)? initializeEditMode,
    TResult? Function(_ProcessToPay value)? processToPay,
    TResult? Function(_GetAccessToken value)? getAccessToken,
  }) {
    return addVendorCard?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Auth value)? auth,
    TResult Function(_AddVendorCard value)? addVendorCard,
    TResult Function(_DeleteVendorCard value)? deleteVendorCard,
    TResult Function(_UpdateVendorCard value)? updateVendorCard,
    TResult Function(_GetVendorCard value)? getVendorCard,
    TResult Function(_AddCustomerCard value)? addCustomerCard,
    TResult Function(_GetCustomerCard value)? getCustomerCard,
    TResult Function(_DeleteCustomerCard value)? deleteCustomerCard,
    TResult Function(_InitializeEditMode value)? initializeEditMode,
    TResult Function(_ProcessToPay value)? processToPay,
    TResult Function(_GetAccessToken value)? getAccessToken,
    required TResult orElse(),
  }) {
    if (addVendorCard != null) {
      return addVendorCard(this);
    }
    return orElse();
  }
}

abstract class _AddVendorCard implements PaymentEvent {
  const factory _AddVendorCard() = _$AddVendorCardImpl;
}

/// @nodoc
abstract class _$$DeleteVendorCardImplCopyWith<$Res> {
  factory _$$DeleteVendorCardImplCopyWith(_$DeleteVendorCardImpl value,
          $Res Function(_$DeleteVendorCardImpl) then) =
      __$$DeleteVendorCardImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String id});
}

/// @nodoc
class __$$DeleteVendorCardImplCopyWithImpl<$Res>
    extends _$PaymentEventCopyWithImpl<$Res, _$DeleteVendorCardImpl>
    implements _$$DeleteVendorCardImplCopyWith<$Res> {
  __$$DeleteVendorCardImplCopyWithImpl(_$DeleteVendorCardImpl _value,
      $Res Function(_$DeleteVendorCardImpl) _then)
      : super(_value, _then);

  /// Create a copy of PaymentEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$DeleteVendorCardImpl(
      null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$DeleteVendorCardImpl implements _DeleteVendorCard {
  const _$DeleteVendorCardImpl(this.id);

  @override
  final String id;

  @override
  String toString() {
    return 'PaymentEvent.deleteVendorCard(id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteVendorCardImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  /// Create a copy of PaymentEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteVendorCardImplCopyWith<_$DeleteVendorCardImpl> get copyWith =>
      __$$DeleteVendorCardImplCopyWithImpl<_$DeleteVendorCardImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() auth,
    required TResult Function() addVendorCard,
    required TResult Function(String id) deleteVendorCard,
    required TResult Function() updateVendorCard,
    required TResult Function() getVendorCard,
    required TResult Function() addCustomerCard,
    required TResult Function() getCustomerCard,
    required TResult Function(String id) deleteCustomerCard,
    required TResult Function() initializeEditMode,
    required TResult Function() processToPay,
    required TResult Function() getAccessToken,
  }) {
    return deleteVendorCard(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? auth,
    TResult? Function()? addVendorCard,
    TResult? Function(String id)? deleteVendorCard,
    TResult? Function()? updateVendorCard,
    TResult? Function()? getVendorCard,
    TResult? Function()? addCustomerCard,
    TResult? Function()? getCustomerCard,
    TResult? Function(String id)? deleteCustomerCard,
    TResult? Function()? initializeEditMode,
    TResult? Function()? processToPay,
    TResult? Function()? getAccessToken,
  }) {
    return deleteVendorCard?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? auth,
    TResult Function()? addVendorCard,
    TResult Function(String id)? deleteVendorCard,
    TResult Function()? updateVendorCard,
    TResult Function()? getVendorCard,
    TResult Function()? addCustomerCard,
    TResult Function()? getCustomerCard,
    TResult Function(String id)? deleteCustomerCard,
    TResult Function()? initializeEditMode,
    TResult Function()? processToPay,
    TResult Function()? getAccessToken,
    required TResult orElse(),
  }) {
    if (deleteVendorCard != null) {
      return deleteVendorCard(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Auth value) auth,
    required TResult Function(_AddVendorCard value) addVendorCard,
    required TResult Function(_DeleteVendorCard value) deleteVendorCard,
    required TResult Function(_UpdateVendorCard value) updateVendorCard,
    required TResult Function(_GetVendorCard value) getVendorCard,
    required TResult Function(_AddCustomerCard value) addCustomerCard,
    required TResult Function(_GetCustomerCard value) getCustomerCard,
    required TResult Function(_DeleteCustomerCard value) deleteCustomerCard,
    required TResult Function(_InitializeEditMode value) initializeEditMode,
    required TResult Function(_ProcessToPay value) processToPay,
    required TResult Function(_GetAccessToken value) getAccessToken,
  }) {
    return deleteVendorCard(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Auth value)? auth,
    TResult? Function(_AddVendorCard value)? addVendorCard,
    TResult? Function(_DeleteVendorCard value)? deleteVendorCard,
    TResult? Function(_UpdateVendorCard value)? updateVendorCard,
    TResult? Function(_GetVendorCard value)? getVendorCard,
    TResult? Function(_AddCustomerCard value)? addCustomerCard,
    TResult? Function(_GetCustomerCard value)? getCustomerCard,
    TResult? Function(_DeleteCustomerCard value)? deleteCustomerCard,
    TResult? Function(_InitializeEditMode value)? initializeEditMode,
    TResult? Function(_ProcessToPay value)? processToPay,
    TResult? Function(_GetAccessToken value)? getAccessToken,
  }) {
    return deleteVendorCard?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Auth value)? auth,
    TResult Function(_AddVendorCard value)? addVendorCard,
    TResult Function(_DeleteVendorCard value)? deleteVendorCard,
    TResult Function(_UpdateVendorCard value)? updateVendorCard,
    TResult Function(_GetVendorCard value)? getVendorCard,
    TResult Function(_AddCustomerCard value)? addCustomerCard,
    TResult Function(_GetCustomerCard value)? getCustomerCard,
    TResult Function(_DeleteCustomerCard value)? deleteCustomerCard,
    TResult Function(_InitializeEditMode value)? initializeEditMode,
    TResult Function(_ProcessToPay value)? processToPay,
    TResult Function(_GetAccessToken value)? getAccessToken,
    required TResult orElse(),
  }) {
    if (deleteVendorCard != null) {
      return deleteVendorCard(this);
    }
    return orElse();
  }
}

abstract class _DeleteVendorCard implements PaymentEvent {
  const factory _DeleteVendorCard(final String id) = _$DeleteVendorCardImpl;

  String get id;

  /// Create a copy of PaymentEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DeleteVendorCardImplCopyWith<_$DeleteVendorCardImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateVendorCardImplCopyWith<$Res> {
  factory _$$UpdateVendorCardImplCopyWith(_$UpdateVendorCardImpl value,
          $Res Function(_$UpdateVendorCardImpl) then) =
      __$$UpdateVendorCardImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UpdateVendorCardImplCopyWithImpl<$Res>
    extends _$PaymentEventCopyWithImpl<$Res, _$UpdateVendorCardImpl>
    implements _$$UpdateVendorCardImplCopyWith<$Res> {
  __$$UpdateVendorCardImplCopyWithImpl(_$UpdateVendorCardImpl _value,
      $Res Function(_$UpdateVendorCardImpl) _then)
      : super(_value, _then);

  /// Create a copy of PaymentEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$UpdateVendorCardImpl implements _UpdateVendorCard {
  const _$UpdateVendorCardImpl();

  @override
  String toString() {
    return 'PaymentEvent.updateVendorCard()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$UpdateVendorCardImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() auth,
    required TResult Function() addVendorCard,
    required TResult Function(String id) deleteVendorCard,
    required TResult Function() updateVendorCard,
    required TResult Function() getVendorCard,
    required TResult Function() addCustomerCard,
    required TResult Function() getCustomerCard,
    required TResult Function(String id) deleteCustomerCard,
    required TResult Function() initializeEditMode,
    required TResult Function() processToPay,
    required TResult Function() getAccessToken,
  }) {
    return updateVendorCard();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? auth,
    TResult? Function()? addVendorCard,
    TResult? Function(String id)? deleteVendorCard,
    TResult? Function()? updateVendorCard,
    TResult? Function()? getVendorCard,
    TResult? Function()? addCustomerCard,
    TResult? Function()? getCustomerCard,
    TResult? Function(String id)? deleteCustomerCard,
    TResult? Function()? initializeEditMode,
    TResult? Function()? processToPay,
    TResult? Function()? getAccessToken,
  }) {
    return updateVendorCard?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? auth,
    TResult Function()? addVendorCard,
    TResult Function(String id)? deleteVendorCard,
    TResult Function()? updateVendorCard,
    TResult Function()? getVendorCard,
    TResult Function()? addCustomerCard,
    TResult Function()? getCustomerCard,
    TResult Function(String id)? deleteCustomerCard,
    TResult Function()? initializeEditMode,
    TResult Function()? processToPay,
    TResult Function()? getAccessToken,
    required TResult orElse(),
  }) {
    if (updateVendorCard != null) {
      return updateVendorCard();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Auth value) auth,
    required TResult Function(_AddVendorCard value) addVendorCard,
    required TResult Function(_DeleteVendorCard value) deleteVendorCard,
    required TResult Function(_UpdateVendorCard value) updateVendorCard,
    required TResult Function(_GetVendorCard value) getVendorCard,
    required TResult Function(_AddCustomerCard value) addCustomerCard,
    required TResult Function(_GetCustomerCard value) getCustomerCard,
    required TResult Function(_DeleteCustomerCard value) deleteCustomerCard,
    required TResult Function(_InitializeEditMode value) initializeEditMode,
    required TResult Function(_ProcessToPay value) processToPay,
    required TResult Function(_GetAccessToken value) getAccessToken,
  }) {
    return updateVendorCard(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Auth value)? auth,
    TResult? Function(_AddVendorCard value)? addVendorCard,
    TResult? Function(_DeleteVendorCard value)? deleteVendorCard,
    TResult? Function(_UpdateVendorCard value)? updateVendorCard,
    TResult? Function(_GetVendorCard value)? getVendorCard,
    TResult? Function(_AddCustomerCard value)? addCustomerCard,
    TResult? Function(_GetCustomerCard value)? getCustomerCard,
    TResult? Function(_DeleteCustomerCard value)? deleteCustomerCard,
    TResult? Function(_InitializeEditMode value)? initializeEditMode,
    TResult? Function(_ProcessToPay value)? processToPay,
    TResult? Function(_GetAccessToken value)? getAccessToken,
  }) {
    return updateVendorCard?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Auth value)? auth,
    TResult Function(_AddVendorCard value)? addVendorCard,
    TResult Function(_DeleteVendorCard value)? deleteVendorCard,
    TResult Function(_UpdateVendorCard value)? updateVendorCard,
    TResult Function(_GetVendorCard value)? getVendorCard,
    TResult Function(_AddCustomerCard value)? addCustomerCard,
    TResult Function(_GetCustomerCard value)? getCustomerCard,
    TResult Function(_DeleteCustomerCard value)? deleteCustomerCard,
    TResult Function(_InitializeEditMode value)? initializeEditMode,
    TResult Function(_ProcessToPay value)? processToPay,
    TResult Function(_GetAccessToken value)? getAccessToken,
    required TResult orElse(),
  }) {
    if (updateVendorCard != null) {
      return updateVendorCard(this);
    }
    return orElse();
  }
}

abstract class _UpdateVendorCard implements PaymentEvent {
  const factory _UpdateVendorCard() = _$UpdateVendorCardImpl;
}

/// @nodoc
abstract class _$$GetVendorCardImplCopyWith<$Res> {
  factory _$$GetVendorCardImplCopyWith(
          _$GetVendorCardImpl value, $Res Function(_$GetVendorCardImpl) then) =
      __$$GetVendorCardImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetVendorCardImplCopyWithImpl<$Res>
    extends _$PaymentEventCopyWithImpl<$Res, _$GetVendorCardImpl>
    implements _$$GetVendorCardImplCopyWith<$Res> {
  __$$GetVendorCardImplCopyWithImpl(
      _$GetVendorCardImpl _value, $Res Function(_$GetVendorCardImpl) _then)
      : super(_value, _then);

  /// Create a copy of PaymentEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$GetVendorCardImpl implements _GetVendorCard {
  const _$GetVendorCardImpl();

  @override
  String toString() {
    return 'PaymentEvent.getVendorCard()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetVendorCardImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() auth,
    required TResult Function() addVendorCard,
    required TResult Function(String id) deleteVendorCard,
    required TResult Function() updateVendorCard,
    required TResult Function() getVendorCard,
    required TResult Function() addCustomerCard,
    required TResult Function() getCustomerCard,
    required TResult Function(String id) deleteCustomerCard,
    required TResult Function() initializeEditMode,
    required TResult Function() processToPay,
    required TResult Function() getAccessToken,
  }) {
    return getVendorCard();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? auth,
    TResult? Function()? addVendorCard,
    TResult? Function(String id)? deleteVendorCard,
    TResult? Function()? updateVendorCard,
    TResult? Function()? getVendorCard,
    TResult? Function()? addCustomerCard,
    TResult? Function()? getCustomerCard,
    TResult? Function(String id)? deleteCustomerCard,
    TResult? Function()? initializeEditMode,
    TResult? Function()? processToPay,
    TResult? Function()? getAccessToken,
  }) {
    return getVendorCard?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? auth,
    TResult Function()? addVendorCard,
    TResult Function(String id)? deleteVendorCard,
    TResult Function()? updateVendorCard,
    TResult Function()? getVendorCard,
    TResult Function()? addCustomerCard,
    TResult Function()? getCustomerCard,
    TResult Function(String id)? deleteCustomerCard,
    TResult Function()? initializeEditMode,
    TResult Function()? processToPay,
    TResult Function()? getAccessToken,
    required TResult orElse(),
  }) {
    if (getVendorCard != null) {
      return getVendorCard();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Auth value) auth,
    required TResult Function(_AddVendorCard value) addVendorCard,
    required TResult Function(_DeleteVendorCard value) deleteVendorCard,
    required TResult Function(_UpdateVendorCard value) updateVendorCard,
    required TResult Function(_GetVendorCard value) getVendorCard,
    required TResult Function(_AddCustomerCard value) addCustomerCard,
    required TResult Function(_GetCustomerCard value) getCustomerCard,
    required TResult Function(_DeleteCustomerCard value) deleteCustomerCard,
    required TResult Function(_InitializeEditMode value) initializeEditMode,
    required TResult Function(_ProcessToPay value) processToPay,
    required TResult Function(_GetAccessToken value) getAccessToken,
  }) {
    return getVendorCard(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Auth value)? auth,
    TResult? Function(_AddVendorCard value)? addVendorCard,
    TResult? Function(_DeleteVendorCard value)? deleteVendorCard,
    TResult? Function(_UpdateVendorCard value)? updateVendorCard,
    TResult? Function(_GetVendorCard value)? getVendorCard,
    TResult? Function(_AddCustomerCard value)? addCustomerCard,
    TResult? Function(_GetCustomerCard value)? getCustomerCard,
    TResult? Function(_DeleteCustomerCard value)? deleteCustomerCard,
    TResult? Function(_InitializeEditMode value)? initializeEditMode,
    TResult? Function(_ProcessToPay value)? processToPay,
    TResult? Function(_GetAccessToken value)? getAccessToken,
  }) {
    return getVendorCard?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Auth value)? auth,
    TResult Function(_AddVendorCard value)? addVendorCard,
    TResult Function(_DeleteVendorCard value)? deleteVendorCard,
    TResult Function(_UpdateVendorCard value)? updateVendorCard,
    TResult Function(_GetVendorCard value)? getVendorCard,
    TResult Function(_AddCustomerCard value)? addCustomerCard,
    TResult Function(_GetCustomerCard value)? getCustomerCard,
    TResult Function(_DeleteCustomerCard value)? deleteCustomerCard,
    TResult Function(_InitializeEditMode value)? initializeEditMode,
    TResult Function(_ProcessToPay value)? processToPay,
    TResult Function(_GetAccessToken value)? getAccessToken,
    required TResult orElse(),
  }) {
    if (getVendorCard != null) {
      return getVendorCard(this);
    }
    return orElse();
  }
}

abstract class _GetVendorCard implements PaymentEvent {
  const factory _GetVendorCard() = _$GetVendorCardImpl;
}

/// @nodoc
abstract class _$$AddCustomerCardImplCopyWith<$Res> {
  factory _$$AddCustomerCardImplCopyWith(_$AddCustomerCardImpl value,
          $Res Function(_$AddCustomerCardImpl) then) =
      __$$AddCustomerCardImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AddCustomerCardImplCopyWithImpl<$Res>
    extends _$PaymentEventCopyWithImpl<$Res, _$AddCustomerCardImpl>
    implements _$$AddCustomerCardImplCopyWith<$Res> {
  __$$AddCustomerCardImplCopyWithImpl(
      _$AddCustomerCardImpl _value, $Res Function(_$AddCustomerCardImpl) _then)
      : super(_value, _then);

  /// Create a copy of PaymentEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$AddCustomerCardImpl implements _AddCustomerCard {
  const _$AddCustomerCardImpl();

  @override
  String toString() {
    return 'PaymentEvent.addCustomerCard()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AddCustomerCardImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() auth,
    required TResult Function() addVendorCard,
    required TResult Function(String id) deleteVendorCard,
    required TResult Function() updateVendorCard,
    required TResult Function() getVendorCard,
    required TResult Function() addCustomerCard,
    required TResult Function() getCustomerCard,
    required TResult Function(String id) deleteCustomerCard,
    required TResult Function() initializeEditMode,
    required TResult Function() processToPay,
    required TResult Function() getAccessToken,
  }) {
    return addCustomerCard();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? auth,
    TResult? Function()? addVendorCard,
    TResult? Function(String id)? deleteVendorCard,
    TResult? Function()? updateVendorCard,
    TResult? Function()? getVendorCard,
    TResult? Function()? addCustomerCard,
    TResult? Function()? getCustomerCard,
    TResult? Function(String id)? deleteCustomerCard,
    TResult? Function()? initializeEditMode,
    TResult? Function()? processToPay,
    TResult? Function()? getAccessToken,
  }) {
    return addCustomerCard?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? auth,
    TResult Function()? addVendorCard,
    TResult Function(String id)? deleteVendorCard,
    TResult Function()? updateVendorCard,
    TResult Function()? getVendorCard,
    TResult Function()? addCustomerCard,
    TResult Function()? getCustomerCard,
    TResult Function(String id)? deleteCustomerCard,
    TResult Function()? initializeEditMode,
    TResult Function()? processToPay,
    TResult Function()? getAccessToken,
    required TResult orElse(),
  }) {
    if (addCustomerCard != null) {
      return addCustomerCard();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Auth value) auth,
    required TResult Function(_AddVendorCard value) addVendorCard,
    required TResult Function(_DeleteVendorCard value) deleteVendorCard,
    required TResult Function(_UpdateVendorCard value) updateVendorCard,
    required TResult Function(_GetVendorCard value) getVendorCard,
    required TResult Function(_AddCustomerCard value) addCustomerCard,
    required TResult Function(_GetCustomerCard value) getCustomerCard,
    required TResult Function(_DeleteCustomerCard value) deleteCustomerCard,
    required TResult Function(_InitializeEditMode value) initializeEditMode,
    required TResult Function(_ProcessToPay value) processToPay,
    required TResult Function(_GetAccessToken value) getAccessToken,
  }) {
    return addCustomerCard(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Auth value)? auth,
    TResult? Function(_AddVendorCard value)? addVendorCard,
    TResult? Function(_DeleteVendorCard value)? deleteVendorCard,
    TResult? Function(_UpdateVendorCard value)? updateVendorCard,
    TResult? Function(_GetVendorCard value)? getVendorCard,
    TResult? Function(_AddCustomerCard value)? addCustomerCard,
    TResult? Function(_GetCustomerCard value)? getCustomerCard,
    TResult? Function(_DeleteCustomerCard value)? deleteCustomerCard,
    TResult? Function(_InitializeEditMode value)? initializeEditMode,
    TResult? Function(_ProcessToPay value)? processToPay,
    TResult? Function(_GetAccessToken value)? getAccessToken,
  }) {
    return addCustomerCard?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Auth value)? auth,
    TResult Function(_AddVendorCard value)? addVendorCard,
    TResult Function(_DeleteVendorCard value)? deleteVendorCard,
    TResult Function(_UpdateVendorCard value)? updateVendorCard,
    TResult Function(_GetVendorCard value)? getVendorCard,
    TResult Function(_AddCustomerCard value)? addCustomerCard,
    TResult Function(_GetCustomerCard value)? getCustomerCard,
    TResult Function(_DeleteCustomerCard value)? deleteCustomerCard,
    TResult Function(_InitializeEditMode value)? initializeEditMode,
    TResult Function(_ProcessToPay value)? processToPay,
    TResult Function(_GetAccessToken value)? getAccessToken,
    required TResult orElse(),
  }) {
    if (addCustomerCard != null) {
      return addCustomerCard(this);
    }
    return orElse();
  }
}

abstract class _AddCustomerCard implements PaymentEvent {
  const factory _AddCustomerCard() = _$AddCustomerCardImpl;
}

/// @nodoc
abstract class _$$GetCustomerCardImplCopyWith<$Res> {
  factory _$$GetCustomerCardImplCopyWith(_$GetCustomerCardImpl value,
          $Res Function(_$GetCustomerCardImpl) then) =
      __$$GetCustomerCardImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetCustomerCardImplCopyWithImpl<$Res>
    extends _$PaymentEventCopyWithImpl<$Res, _$GetCustomerCardImpl>
    implements _$$GetCustomerCardImplCopyWith<$Res> {
  __$$GetCustomerCardImplCopyWithImpl(
      _$GetCustomerCardImpl _value, $Res Function(_$GetCustomerCardImpl) _then)
      : super(_value, _then);

  /// Create a copy of PaymentEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$GetCustomerCardImpl implements _GetCustomerCard {
  const _$GetCustomerCardImpl();

  @override
  String toString() {
    return 'PaymentEvent.getCustomerCard()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetCustomerCardImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() auth,
    required TResult Function() addVendorCard,
    required TResult Function(String id) deleteVendorCard,
    required TResult Function() updateVendorCard,
    required TResult Function() getVendorCard,
    required TResult Function() addCustomerCard,
    required TResult Function() getCustomerCard,
    required TResult Function(String id) deleteCustomerCard,
    required TResult Function() initializeEditMode,
    required TResult Function() processToPay,
    required TResult Function() getAccessToken,
  }) {
    return getCustomerCard();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? auth,
    TResult? Function()? addVendorCard,
    TResult? Function(String id)? deleteVendorCard,
    TResult? Function()? updateVendorCard,
    TResult? Function()? getVendorCard,
    TResult? Function()? addCustomerCard,
    TResult? Function()? getCustomerCard,
    TResult? Function(String id)? deleteCustomerCard,
    TResult? Function()? initializeEditMode,
    TResult? Function()? processToPay,
    TResult? Function()? getAccessToken,
  }) {
    return getCustomerCard?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? auth,
    TResult Function()? addVendorCard,
    TResult Function(String id)? deleteVendorCard,
    TResult Function()? updateVendorCard,
    TResult Function()? getVendorCard,
    TResult Function()? addCustomerCard,
    TResult Function()? getCustomerCard,
    TResult Function(String id)? deleteCustomerCard,
    TResult Function()? initializeEditMode,
    TResult Function()? processToPay,
    TResult Function()? getAccessToken,
    required TResult orElse(),
  }) {
    if (getCustomerCard != null) {
      return getCustomerCard();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Auth value) auth,
    required TResult Function(_AddVendorCard value) addVendorCard,
    required TResult Function(_DeleteVendorCard value) deleteVendorCard,
    required TResult Function(_UpdateVendorCard value) updateVendorCard,
    required TResult Function(_GetVendorCard value) getVendorCard,
    required TResult Function(_AddCustomerCard value) addCustomerCard,
    required TResult Function(_GetCustomerCard value) getCustomerCard,
    required TResult Function(_DeleteCustomerCard value) deleteCustomerCard,
    required TResult Function(_InitializeEditMode value) initializeEditMode,
    required TResult Function(_ProcessToPay value) processToPay,
    required TResult Function(_GetAccessToken value) getAccessToken,
  }) {
    return getCustomerCard(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Auth value)? auth,
    TResult? Function(_AddVendorCard value)? addVendorCard,
    TResult? Function(_DeleteVendorCard value)? deleteVendorCard,
    TResult? Function(_UpdateVendorCard value)? updateVendorCard,
    TResult? Function(_GetVendorCard value)? getVendorCard,
    TResult? Function(_AddCustomerCard value)? addCustomerCard,
    TResult? Function(_GetCustomerCard value)? getCustomerCard,
    TResult? Function(_DeleteCustomerCard value)? deleteCustomerCard,
    TResult? Function(_InitializeEditMode value)? initializeEditMode,
    TResult? Function(_ProcessToPay value)? processToPay,
    TResult? Function(_GetAccessToken value)? getAccessToken,
  }) {
    return getCustomerCard?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Auth value)? auth,
    TResult Function(_AddVendorCard value)? addVendorCard,
    TResult Function(_DeleteVendorCard value)? deleteVendorCard,
    TResult Function(_UpdateVendorCard value)? updateVendorCard,
    TResult Function(_GetVendorCard value)? getVendorCard,
    TResult Function(_AddCustomerCard value)? addCustomerCard,
    TResult Function(_GetCustomerCard value)? getCustomerCard,
    TResult Function(_DeleteCustomerCard value)? deleteCustomerCard,
    TResult Function(_InitializeEditMode value)? initializeEditMode,
    TResult Function(_ProcessToPay value)? processToPay,
    TResult Function(_GetAccessToken value)? getAccessToken,
    required TResult orElse(),
  }) {
    if (getCustomerCard != null) {
      return getCustomerCard(this);
    }
    return orElse();
  }
}

abstract class _GetCustomerCard implements PaymentEvent {
  const factory _GetCustomerCard() = _$GetCustomerCardImpl;
}

/// @nodoc
abstract class _$$DeleteCustomerCardImplCopyWith<$Res> {
  factory _$$DeleteCustomerCardImplCopyWith(_$DeleteCustomerCardImpl value,
          $Res Function(_$DeleteCustomerCardImpl) then) =
      __$$DeleteCustomerCardImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String id});
}

/// @nodoc
class __$$DeleteCustomerCardImplCopyWithImpl<$Res>
    extends _$PaymentEventCopyWithImpl<$Res, _$DeleteCustomerCardImpl>
    implements _$$DeleteCustomerCardImplCopyWith<$Res> {
  __$$DeleteCustomerCardImplCopyWithImpl(_$DeleteCustomerCardImpl _value,
      $Res Function(_$DeleteCustomerCardImpl) _then)
      : super(_value, _then);

  /// Create a copy of PaymentEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$DeleteCustomerCardImpl(
      null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$DeleteCustomerCardImpl implements _DeleteCustomerCard {
  const _$DeleteCustomerCardImpl(this.id);

  @override
  final String id;

  @override
  String toString() {
    return 'PaymentEvent.deleteCustomerCard(id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteCustomerCardImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  /// Create a copy of PaymentEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteCustomerCardImplCopyWith<_$DeleteCustomerCardImpl> get copyWith =>
      __$$DeleteCustomerCardImplCopyWithImpl<_$DeleteCustomerCardImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() auth,
    required TResult Function() addVendorCard,
    required TResult Function(String id) deleteVendorCard,
    required TResult Function() updateVendorCard,
    required TResult Function() getVendorCard,
    required TResult Function() addCustomerCard,
    required TResult Function() getCustomerCard,
    required TResult Function(String id) deleteCustomerCard,
    required TResult Function() initializeEditMode,
    required TResult Function() processToPay,
    required TResult Function() getAccessToken,
  }) {
    return deleteCustomerCard(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? auth,
    TResult? Function()? addVendorCard,
    TResult? Function(String id)? deleteVendorCard,
    TResult? Function()? updateVendorCard,
    TResult? Function()? getVendorCard,
    TResult? Function()? addCustomerCard,
    TResult? Function()? getCustomerCard,
    TResult? Function(String id)? deleteCustomerCard,
    TResult? Function()? initializeEditMode,
    TResult? Function()? processToPay,
    TResult? Function()? getAccessToken,
  }) {
    return deleteCustomerCard?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? auth,
    TResult Function()? addVendorCard,
    TResult Function(String id)? deleteVendorCard,
    TResult Function()? updateVendorCard,
    TResult Function()? getVendorCard,
    TResult Function()? addCustomerCard,
    TResult Function()? getCustomerCard,
    TResult Function(String id)? deleteCustomerCard,
    TResult Function()? initializeEditMode,
    TResult Function()? processToPay,
    TResult Function()? getAccessToken,
    required TResult orElse(),
  }) {
    if (deleteCustomerCard != null) {
      return deleteCustomerCard(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Auth value) auth,
    required TResult Function(_AddVendorCard value) addVendorCard,
    required TResult Function(_DeleteVendorCard value) deleteVendorCard,
    required TResult Function(_UpdateVendorCard value) updateVendorCard,
    required TResult Function(_GetVendorCard value) getVendorCard,
    required TResult Function(_AddCustomerCard value) addCustomerCard,
    required TResult Function(_GetCustomerCard value) getCustomerCard,
    required TResult Function(_DeleteCustomerCard value) deleteCustomerCard,
    required TResult Function(_InitializeEditMode value) initializeEditMode,
    required TResult Function(_ProcessToPay value) processToPay,
    required TResult Function(_GetAccessToken value) getAccessToken,
  }) {
    return deleteCustomerCard(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Auth value)? auth,
    TResult? Function(_AddVendorCard value)? addVendorCard,
    TResult? Function(_DeleteVendorCard value)? deleteVendorCard,
    TResult? Function(_UpdateVendorCard value)? updateVendorCard,
    TResult? Function(_GetVendorCard value)? getVendorCard,
    TResult? Function(_AddCustomerCard value)? addCustomerCard,
    TResult? Function(_GetCustomerCard value)? getCustomerCard,
    TResult? Function(_DeleteCustomerCard value)? deleteCustomerCard,
    TResult? Function(_InitializeEditMode value)? initializeEditMode,
    TResult? Function(_ProcessToPay value)? processToPay,
    TResult? Function(_GetAccessToken value)? getAccessToken,
  }) {
    return deleteCustomerCard?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Auth value)? auth,
    TResult Function(_AddVendorCard value)? addVendorCard,
    TResult Function(_DeleteVendorCard value)? deleteVendorCard,
    TResult Function(_UpdateVendorCard value)? updateVendorCard,
    TResult Function(_GetVendorCard value)? getVendorCard,
    TResult Function(_AddCustomerCard value)? addCustomerCard,
    TResult Function(_GetCustomerCard value)? getCustomerCard,
    TResult Function(_DeleteCustomerCard value)? deleteCustomerCard,
    TResult Function(_InitializeEditMode value)? initializeEditMode,
    TResult Function(_ProcessToPay value)? processToPay,
    TResult Function(_GetAccessToken value)? getAccessToken,
    required TResult orElse(),
  }) {
    if (deleteCustomerCard != null) {
      return deleteCustomerCard(this);
    }
    return orElse();
  }
}

abstract class _DeleteCustomerCard implements PaymentEvent {
  const factory _DeleteCustomerCard(final String id) = _$DeleteCustomerCardImpl;

  String get id;

  /// Create a copy of PaymentEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DeleteCustomerCardImplCopyWith<_$DeleteCustomerCardImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$InitializeEditModeImplCopyWith<$Res> {
  factory _$$InitializeEditModeImplCopyWith(_$InitializeEditModeImpl value,
          $Res Function(_$InitializeEditModeImpl) then) =
      __$$InitializeEditModeImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitializeEditModeImplCopyWithImpl<$Res>
    extends _$PaymentEventCopyWithImpl<$Res, _$InitializeEditModeImpl>
    implements _$$InitializeEditModeImplCopyWith<$Res> {
  __$$InitializeEditModeImplCopyWithImpl(_$InitializeEditModeImpl _value,
      $Res Function(_$InitializeEditModeImpl) _then)
      : super(_value, _then);

  /// Create a copy of PaymentEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitializeEditModeImpl implements _InitializeEditMode {
  const _$InitializeEditModeImpl();

  @override
  String toString() {
    return 'PaymentEvent.initializeEditMode()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitializeEditModeImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() auth,
    required TResult Function() addVendorCard,
    required TResult Function(String id) deleteVendorCard,
    required TResult Function() updateVendorCard,
    required TResult Function() getVendorCard,
    required TResult Function() addCustomerCard,
    required TResult Function() getCustomerCard,
    required TResult Function(String id) deleteCustomerCard,
    required TResult Function() initializeEditMode,
    required TResult Function() processToPay,
    required TResult Function() getAccessToken,
  }) {
    return initializeEditMode();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? auth,
    TResult? Function()? addVendorCard,
    TResult? Function(String id)? deleteVendorCard,
    TResult? Function()? updateVendorCard,
    TResult? Function()? getVendorCard,
    TResult? Function()? addCustomerCard,
    TResult? Function()? getCustomerCard,
    TResult? Function(String id)? deleteCustomerCard,
    TResult? Function()? initializeEditMode,
    TResult? Function()? processToPay,
    TResult? Function()? getAccessToken,
  }) {
    return initializeEditMode?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? auth,
    TResult Function()? addVendorCard,
    TResult Function(String id)? deleteVendorCard,
    TResult Function()? updateVendorCard,
    TResult Function()? getVendorCard,
    TResult Function()? addCustomerCard,
    TResult Function()? getCustomerCard,
    TResult Function(String id)? deleteCustomerCard,
    TResult Function()? initializeEditMode,
    TResult Function()? processToPay,
    TResult Function()? getAccessToken,
    required TResult orElse(),
  }) {
    if (initializeEditMode != null) {
      return initializeEditMode();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Auth value) auth,
    required TResult Function(_AddVendorCard value) addVendorCard,
    required TResult Function(_DeleteVendorCard value) deleteVendorCard,
    required TResult Function(_UpdateVendorCard value) updateVendorCard,
    required TResult Function(_GetVendorCard value) getVendorCard,
    required TResult Function(_AddCustomerCard value) addCustomerCard,
    required TResult Function(_GetCustomerCard value) getCustomerCard,
    required TResult Function(_DeleteCustomerCard value) deleteCustomerCard,
    required TResult Function(_InitializeEditMode value) initializeEditMode,
    required TResult Function(_ProcessToPay value) processToPay,
    required TResult Function(_GetAccessToken value) getAccessToken,
  }) {
    return initializeEditMode(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Auth value)? auth,
    TResult? Function(_AddVendorCard value)? addVendorCard,
    TResult? Function(_DeleteVendorCard value)? deleteVendorCard,
    TResult? Function(_UpdateVendorCard value)? updateVendorCard,
    TResult? Function(_GetVendorCard value)? getVendorCard,
    TResult? Function(_AddCustomerCard value)? addCustomerCard,
    TResult? Function(_GetCustomerCard value)? getCustomerCard,
    TResult? Function(_DeleteCustomerCard value)? deleteCustomerCard,
    TResult? Function(_InitializeEditMode value)? initializeEditMode,
    TResult? Function(_ProcessToPay value)? processToPay,
    TResult? Function(_GetAccessToken value)? getAccessToken,
  }) {
    return initializeEditMode?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Auth value)? auth,
    TResult Function(_AddVendorCard value)? addVendorCard,
    TResult Function(_DeleteVendorCard value)? deleteVendorCard,
    TResult Function(_UpdateVendorCard value)? updateVendorCard,
    TResult Function(_GetVendorCard value)? getVendorCard,
    TResult Function(_AddCustomerCard value)? addCustomerCard,
    TResult Function(_GetCustomerCard value)? getCustomerCard,
    TResult Function(_DeleteCustomerCard value)? deleteCustomerCard,
    TResult Function(_InitializeEditMode value)? initializeEditMode,
    TResult Function(_ProcessToPay value)? processToPay,
    TResult Function(_GetAccessToken value)? getAccessToken,
    required TResult orElse(),
  }) {
    if (initializeEditMode != null) {
      return initializeEditMode(this);
    }
    return orElse();
  }
}

abstract class _InitializeEditMode implements PaymentEvent {
  const factory _InitializeEditMode() = _$InitializeEditModeImpl;
}

/// @nodoc
abstract class _$$ProcessToPayImplCopyWith<$Res> {
  factory _$$ProcessToPayImplCopyWith(
          _$ProcessToPayImpl value, $Res Function(_$ProcessToPayImpl) then) =
      __$$ProcessToPayImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ProcessToPayImplCopyWithImpl<$Res>
    extends _$PaymentEventCopyWithImpl<$Res, _$ProcessToPayImpl>
    implements _$$ProcessToPayImplCopyWith<$Res> {
  __$$ProcessToPayImplCopyWithImpl(
      _$ProcessToPayImpl _value, $Res Function(_$ProcessToPayImpl) _then)
      : super(_value, _then);

  /// Create a copy of PaymentEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ProcessToPayImpl implements _ProcessToPay {
  const _$ProcessToPayImpl();

  @override
  String toString() {
    return 'PaymentEvent.processToPay()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ProcessToPayImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() auth,
    required TResult Function() addVendorCard,
    required TResult Function(String id) deleteVendorCard,
    required TResult Function() updateVendorCard,
    required TResult Function() getVendorCard,
    required TResult Function() addCustomerCard,
    required TResult Function() getCustomerCard,
    required TResult Function(String id) deleteCustomerCard,
    required TResult Function() initializeEditMode,
    required TResult Function() processToPay,
    required TResult Function() getAccessToken,
  }) {
    return processToPay();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? auth,
    TResult? Function()? addVendorCard,
    TResult? Function(String id)? deleteVendorCard,
    TResult? Function()? updateVendorCard,
    TResult? Function()? getVendorCard,
    TResult? Function()? addCustomerCard,
    TResult? Function()? getCustomerCard,
    TResult? Function(String id)? deleteCustomerCard,
    TResult? Function()? initializeEditMode,
    TResult? Function()? processToPay,
    TResult? Function()? getAccessToken,
  }) {
    return processToPay?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? auth,
    TResult Function()? addVendorCard,
    TResult Function(String id)? deleteVendorCard,
    TResult Function()? updateVendorCard,
    TResult Function()? getVendorCard,
    TResult Function()? addCustomerCard,
    TResult Function()? getCustomerCard,
    TResult Function(String id)? deleteCustomerCard,
    TResult Function()? initializeEditMode,
    TResult Function()? processToPay,
    TResult Function()? getAccessToken,
    required TResult orElse(),
  }) {
    if (processToPay != null) {
      return processToPay();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Auth value) auth,
    required TResult Function(_AddVendorCard value) addVendorCard,
    required TResult Function(_DeleteVendorCard value) deleteVendorCard,
    required TResult Function(_UpdateVendorCard value) updateVendorCard,
    required TResult Function(_GetVendorCard value) getVendorCard,
    required TResult Function(_AddCustomerCard value) addCustomerCard,
    required TResult Function(_GetCustomerCard value) getCustomerCard,
    required TResult Function(_DeleteCustomerCard value) deleteCustomerCard,
    required TResult Function(_InitializeEditMode value) initializeEditMode,
    required TResult Function(_ProcessToPay value) processToPay,
    required TResult Function(_GetAccessToken value) getAccessToken,
  }) {
    return processToPay(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Auth value)? auth,
    TResult? Function(_AddVendorCard value)? addVendorCard,
    TResult? Function(_DeleteVendorCard value)? deleteVendorCard,
    TResult? Function(_UpdateVendorCard value)? updateVendorCard,
    TResult? Function(_GetVendorCard value)? getVendorCard,
    TResult? Function(_AddCustomerCard value)? addCustomerCard,
    TResult? Function(_GetCustomerCard value)? getCustomerCard,
    TResult? Function(_DeleteCustomerCard value)? deleteCustomerCard,
    TResult? Function(_InitializeEditMode value)? initializeEditMode,
    TResult? Function(_ProcessToPay value)? processToPay,
    TResult? Function(_GetAccessToken value)? getAccessToken,
  }) {
    return processToPay?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Auth value)? auth,
    TResult Function(_AddVendorCard value)? addVendorCard,
    TResult Function(_DeleteVendorCard value)? deleteVendorCard,
    TResult Function(_UpdateVendorCard value)? updateVendorCard,
    TResult Function(_GetVendorCard value)? getVendorCard,
    TResult Function(_AddCustomerCard value)? addCustomerCard,
    TResult Function(_GetCustomerCard value)? getCustomerCard,
    TResult Function(_DeleteCustomerCard value)? deleteCustomerCard,
    TResult Function(_InitializeEditMode value)? initializeEditMode,
    TResult Function(_ProcessToPay value)? processToPay,
    TResult Function(_GetAccessToken value)? getAccessToken,
    required TResult orElse(),
  }) {
    if (processToPay != null) {
      return processToPay(this);
    }
    return orElse();
  }
}

abstract class _ProcessToPay implements PaymentEvent {
  const factory _ProcessToPay() = _$ProcessToPayImpl;
}

/// @nodoc
abstract class _$$GetAccessTokenImplCopyWith<$Res> {
  factory _$$GetAccessTokenImplCopyWith(_$GetAccessTokenImpl value,
          $Res Function(_$GetAccessTokenImpl) then) =
      __$$GetAccessTokenImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetAccessTokenImplCopyWithImpl<$Res>
    extends _$PaymentEventCopyWithImpl<$Res, _$GetAccessTokenImpl>
    implements _$$GetAccessTokenImplCopyWith<$Res> {
  __$$GetAccessTokenImplCopyWithImpl(
      _$GetAccessTokenImpl _value, $Res Function(_$GetAccessTokenImpl) _then)
      : super(_value, _then);

  /// Create a copy of PaymentEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$GetAccessTokenImpl implements _GetAccessToken {
  const _$GetAccessTokenImpl();

  @override
  String toString() {
    return 'PaymentEvent.getAccessToken()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetAccessTokenImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() auth,
    required TResult Function() addVendorCard,
    required TResult Function(String id) deleteVendorCard,
    required TResult Function() updateVendorCard,
    required TResult Function() getVendorCard,
    required TResult Function() addCustomerCard,
    required TResult Function() getCustomerCard,
    required TResult Function(String id) deleteCustomerCard,
    required TResult Function() initializeEditMode,
    required TResult Function() processToPay,
    required TResult Function() getAccessToken,
  }) {
    return getAccessToken();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? auth,
    TResult? Function()? addVendorCard,
    TResult? Function(String id)? deleteVendorCard,
    TResult? Function()? updateVendorCard,
    TResult? Function()? getVendorCard,
    TResult? Function()? addCustomerCard,
    TResult? Function()? getCustomerCard,
    TResult? Function(String id)? deleteCustomerCard,
    TResult? Function()? initializeEditMode,
    TResult? Function()? processToPay,
    TResult? Function()? getAccessToken,
  }) {
    return getAccessToken?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? auth,
    TResult Function()? addVendorCard,
    TResult Function(String id)? deleteVendorCard,
    TResult Function()? updateVendorCard,
    TResult Function()? getVendorCard,
    TResult Function()? addCustomerCard,
    TResult Function()? getCustomerCard,
    TResult Function(String id)? deleteCustomerCard,
    TResult Function()? initializeEditMode,
    TResult Function()? processToPay,
    TResult Function()? getAccessToken,
    required TResult orElse(),
  }) {
    if (getAccessToken != null) {
      return getAccessToken();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Auth value) auth,
    required TResult Function(_AddVendorCard value) addVendorCard,
    required TResult Function(_DeleteVendorCard value) deleteVendorCard,
    required TResult Function(_UpdateVendorCard value) updateVendorCard,
    required TResult Function(_GetVendorCard value) getVendorCard,
    required TResult Function(_AddCustomerCard value) addCustomerCard,
    required TResult Function(_GetCustomerCard value) getCustomerCard,
    required TResult Function(_DeleteCustomerCard value) deleteCustomerCard,
    required TResult Function(_InitializeEditMode value) initializeEditMode,
    required TResult Function(_ProcessToPay value) processToPay,
    required TResult Function(_GetAccessToken value) getAccessToken,
  }) {
    return getAccessToken(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Auth value)? auth,
    TResult? Function(_AddVendorCard value)? addVendorCard,
    TResult? Function(_DeleteVendorCard value)? deleteVendorCard,
    TResult? Function(_UpdateVendorCard value)? updateVendorCard,
    TResult? Function(_GetVendorCard value)? getVendorCard,
    TResult? Function(_AddCustomerCard value)? addCustomerCard,
    TResult? Function(_GetCustomerCard value)? getCustomerCard,
    TResult? Function(_DeleteCustomerCard value)? deleteCustomerCard,
    TResult? Function(_InitializeEditMode value)? initializeEditMode,
    TResult? Function(_ProcessToPay value)? processToPay,
    TResult? Function(_GetAccessToken value)? getAccessToken,
  }) {
    return getAccessToken?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Auth value)? auth,
    TResult Function(_AddVendorCard value)? addVendorCard,
    TResult Function(_DeleteVendorCard value)? deleteVendorCard,
    TResult Function(_UpdateVendorCard value)? updateVendorCard,
    TResult Function(_GetVendorCard value)? getVendorCard,
    TResult Function(_AddCustomerCard value)? addCustomerCard,
    TResult Function(_GetCustomerCard value)? getCustomerCard,
    TResult Function(_DeleteCustomerCard value)? deleteCustomerCard,
    TResult Function(_InitializeEditMode value)? initializeEditMode,
    TResult Function(_ProcessToPay value)? processToPay,
    TResult Function(_GetAccessToken value)? getAccessToken,
    required TResult orElse(),
  }) {
    if (getAccessToken != null) {
      return getAccessToken(this);
    }
    return orElse();
  }
}

abstract class _GetAccessToken implements PaymentEvent {
  const factory _GetAccessToken() = _$GetAccessTokenImpl;
}

/// @nodoc
mixin _$PaymentState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function() successAdded,
    required TResult Function() successUpdate,
    required TResult Function() successDeleted,
    required TResult Function(String err) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? success,
    TResult? Function()? successAdded,
    TResult? Function()? successUpdate,
    TResult? Function()? successDeleted,
    TResult? Function(String err)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function()? successAdded,
    TResult Function()? successUpdate,
    TResult Function()? successDeleted,
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
    required TResult Function(_SuccessUpdate value) successUpdate,
    required TResult Function(_SuccessDeleted value) successDeleted,
    required TResult Function(_Failure value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_SuccessAdded value)? successAdded,
    TResult? Function(_SuccessUpdate value)? successUpdate,
    TResult? Function(_SuccessDeleted value)? successDeleted,
    TResult? Function(_Failure value)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_SuccessAdded value)? successAdded,
    TResult Function(_SuccessUpdate value)? successUpdate,
    TResult Function(_SuccessDeleted value)? successDeleted,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaymentStateCopyWith<$Res> {
  factory $PaymentStateCopyWith(
          PaymentState value, $Res Function(PaymentState) then) =
      _$PaymentStateCopyWithImpl<$Res, PaymentState>;
}

/// @nodoc
class _$PaymentStateCopyWithImpl<$Res, $Val extends PaymentState>
    implements $PaymentStateCopyWith<$Res> {
  _$PaymentStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PaymentState
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
    extends _$PaymentStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of PaymentState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'PaymentState.initial()';
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
    required TResult Function() successUpdate,
    required TResult Function() successDeleted,
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
    TResult? Function()? successUpdate,
    TResult? Function()? successDeleted,
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
    TResult Function()? successUpdate,
    TResult Function()? successDeleted,
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
    required TResult Function(_SuccessUpdate value) successUpdate,
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
    TResult? Function(_SuccessAdded value)? successAdded,
    TResult? Function(_SuccessUpdate value)? successUpdate,
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
    TResult Function(_SuccessAdded value)? successAdded,
    TResult Function(_SuccessUpdate value)? successUpdate,
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

abstract class _Initial implements PaymentState {
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
    extends _$PaymentStateCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
      _$LoadingImpl _value, $Res Function(_$LoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of PaymentState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadingImpl implements _Loading {
  const _$LoadingImpl();

  @override
  String toString() {
    return 'PaymentState.loading()';
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
    required TResult Function() successUpdate,
    required TResult Function() successDeleted,
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
    TResult? Function()? successUpdate,
    TResult? Function()? successDeleted,
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
    TResult Function()? successUpdate,
    TResult Function()? successDeleted,
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
    required TResult Function(_SuccessUpdate value) successUpdate,
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
    TResult? Function(_SuccessAdded value)? successAdded,
    TResult? Function(_SuccessUpdate value)? successUpdate,
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
    TResult Function(_SuccessAdded value)? successAdded,
    TResult Function(_SuccessUpdate value)? successUpdate,
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

abstract class _Loading implements PaymentState {
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
    extends _$PaymentStateCopyWithImpl<$Res, _$SuccessImpl>
    implements _$$SuccessImplCopyWith<$Res> {
  __$$SuccessImplCopyWithImpl(
      _$SuccessImpl _value, $Res Function(_$SuccessImpl) _then)
      : super(_value, _then);

  /// Create a copy of PaymentState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$SuccessImpl implements _Success {
  const _$SuccessImpl();

  @override
  String toString() {
    return 'PaymentState.success()';
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
    required TResult Function() successUpdate,
    required TResult Function() successDeleted,
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
    TResult? Function()? successUpdate,
    TResult? Function()? successDeleted,
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
    TResult Function()? successUpdate,
    TResult Function()? successDeleted,
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
    required TResult Function(_SuccessUpdate value) successUpdate,
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
    TResult? Function(_SuccessAdded value)? successAdded,
    TResult? Function(_SuccessUpdate value)? successUpdate,
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
    TResult Function(_SuccessAdded value)? successAdded,
    TResult Function(_SuccessUpdate value)? successUpdate,
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

abstract class _Success implements PaymentState {
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
    extends _$PaymentStateCopyWithImpl<$Res, _$SuccessAddedImpl>
    implements _$$SuccessAddedImplCopyWith<$Res> {
  __$$SuccessAddedImplCopyWithImpl(
      _$SuccessAddedImpl _value, $Res Function(_$SuccessAddedImpl) _then)
      : super(_value, _then);

  /// Create a copy of PaymentState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$SuccessAddedImpl implements _SuccessAdded {
  const _$SuccessAddedImpl();

  @override
  String toString() {
    return 'PaymentState.successAdded()';
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
    required TResult Function() successUpdate,
    required TResult Function() successDeleted,
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
    TResult? Function()? successUpdate,
    TResult? Function()? successDeleted,
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
    TResult Function()? successUpdate,
    TResult Function()? successDeleted,
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
    required TResult Function(_SuccessUpdate value) successUpdate,
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
    TResult? Function(_SuccessAdded value)? successAdded,
    TResult? Function(_SuccessUpdate value)? successUpdate,
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
    TResult Function(_SuccessAdded value)? successAdded,
    TResult Function(_SuccessUpdate value)? successUpdate,
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

abstract class _SuccessAdded implements PaymentState {
  const factory _SuccessAdded() = _$SuccessAddedImpl;
}

/// @nodoc
abstract class _$$SuccessUpdateImplCopyWith<$Res> {
  factory _$$SuccessUpdateImplCopyWith(
          _$SuccessUpdateImpl value, $Res Function(_$SuccessUpdateImpl) then) =
      __$$SuccessUpdateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SuccessUpdateImplCopyWithImpl<$Res>
    extends _$PaymentStateCopyWithImpl<$Res, _$SuccessUpdateImpl>
    implements _$$SuccessUpdateImplCopyWith<$Res> {
  __$$SuccessUpdateImplCopyWithImpl(
      _$SuccessUpdateImpl _value, $Res Function(_$SuccessUpdateImpl) _then)
      : super(_value, _then);

  /// Create a copy of PaymentState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$SuccessUpdateImpl implements _SuccessUpdate {
  const _$SuccessUpdateImpl();

  @override
  String toString() {
    return 'PaymentState.successUpdate()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SuccessUpdateImpl);
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
    required TResult Function() successUpdate,
    required TResult Function() successDeleted,
    required TResult Function(String err) failure,
  }) {
    return successUpdate();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? success,
    TResult? Function()? successAdded,
    TResult? Function()? successUpdate,
    TResult? Function()? successDeleted,
    TResult? Function(String err)? failure,
  }) {
    return successUpdate?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function()? successAdded,
    TResult Function()? successUpdate,
    TResult Function()? successDeleted,
    TResult Function(String err)? failure,
    required TResult orElse(),
  }) {
    if (successUpdate != null) {
      return successUpdate();
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
    required TResult Function(_SuccessUpdate value) successUpdate,
    required TResult Function(_SuccessDeleted value) successDeleted,
    required TResult Function(_Failure value) failure,
  }) {
    return successUpdate(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_SuccessAdded value)? successAdded,
    TResult? Function(_SuccessUpdate value)? successUpdate,
    TResult? Function(_SuccessDeleted value)? successDeleted,
    TResult? Function(_Failure value)? failure,
  }) {
    return successUpdate?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_SuccessAdded value)? successAdded,
    TResult Function(_SuccessUpdate value)? successUpdate,
    TResult Function(_SuccessDeleted value)? successDeleted,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (successUpdate != null) {
      return successUpdate(this);
    }
    return orElse();
  }
}

abstract class _SuccessUpdate implements PaymentState {
  const factory _SuccessUpdate() = _$SuccessUpdateImpl;
}

/// @nodoc
abstract class _$$SuccessDeletedImplCopyWith<$Res> {
  factory _$$SuccessDeletedImplCopyWith(_$SuccessDeletedImpl value,
          $Res Function(_$SuccessDeletedImpl) then) =
      __$$SuccessDeletedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SuccessDeletedImplCopyWithImpl<$Res>
    extends _$PaymentStateCopyWithImpl<$Res, _$SuccessDeletedImpl>
    implements _$$SuccessDeletedImplCopyWith<$Res> {
  __$$SuccessDeletedImplCopyWithImpl(
      _$SuccessDeletedImpl _value, $Res Function(_$SuccessDeletedImpl) _then)
      : super(_value, _then);

  /// Create a copy of PaymentState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$SuccessDeletedImpl implements _SuccessDeleted {
  const _$SuccessDeletedImpl();

  @override
  String toString() {
    return 'PaymentState.successDeleted()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SuccessDeletedImpl);
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
    required TResult Function() successUpdate,
    required TResult Function() successDeleted,
    required TResult Function(String err) failure,
  }) {
    return successDeleted();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? success,
    TResult? Function()? successAdded,
    TResult? Function()? successUpdate,
    TResult? Function()? successDeleted,
    TResult? Function(String err)? failure,
  }) {
    return successDeleted?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function()? successAdded,
    TResult Function()? successUpdate,
    TResult Function()? successDeleted,
    TResult Function(String err)? failure,
    required TResult orElse(),
  }) {
    if (successDeleted != null) {
      return successDeleted();
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
    required TResult Function(_SuccessUpdate value) successUpdate,
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
    TResult? Function(_SuccessAdded value)? successAdded,
    TResult? Function(_SuccessUpdate value)? successUpdate,
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
    TResult Function(_SuccessAdded value)? successAdded,
    TResult Function(_SuccessUpdate value)? successUpdate,
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

abstract class _SuccessDeleted implements PaymentState {
  const factory _SuccessDeleted() = _$SuccessDeletedImpl;
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
    extends _$PaymentStateCopyWithImpl<$Res, _$FailureImpl>
    implements _$$FailureImplCopyWith<$Res> {
  __$$FailureImplCopyWithImpl(
      _$FailureImpl _value, $Res Function(_$FailureImpl) _then)
      : super(_value, _then);

  /// Create a copy of PaymentState
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
    return 'PaymentState.failure(err: $err)';
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

  /// Create a copy of PaymentState
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
    required TResult Function() successUpdate,
    required TResult Function() successDeleted,
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
    TResult? Function()? successUpdate,
    TResult? Function()? successDeleted,
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
    TResult Function()? successUpdate,
    TResult Function()? successDeleted,
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
    required TResult Function(_SuccessUpdate value) successUpdate,
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
    TResult? Function(_SuccessAdded value)? successAdded,
    TResult? Function(_SuccessUpdate value)? successUpdate,
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
    TResult Function(_SuccessAdded value)? successAdded,
    TResult Function(_SuccessUpdate value)? successUpdate,
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

abstract class _Failure implements PaymentState {
  const factory _Failure(final String err) = _$FailureImpl;

  String get err;

  /// Create a copy of PaymentState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FailureImplCopyWith<_$FailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
