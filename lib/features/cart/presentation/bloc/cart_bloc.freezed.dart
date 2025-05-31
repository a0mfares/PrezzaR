// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cart_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CartEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getUserCart,
    required TResult Function() getCartDetails,
    required TResult Function() clearCart,
    required TResult Function() getCartLength,
    required TResult Function() getPreparingTime,
    required TResult Function(Map<String, dynamic> item) addItemToCart,
    required TResult Function(String uuid) removeItemFromCart,
    required TResult Function(String itemId, String operation) updateItemQun,
    required TResult Function() getOftenOrderdWith,
    required TResult Function() addOrUpdateCoupon,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getUserCart,
    TResult? Function()? getCartDetails,
    TResult? Function()? clearCart,
    TResult? Function()? getCartLength,
    TResult? Function()? getPreparingTime,
    TResult? Function(Map<String, dynamic> item)? addItemToCart,
    TResult? Function(String uuid)? removeItemFromCart,
    TResult? Function(String itemId, String operation)? updateItemQun,
    TResult? Function()? getOftenOrderdWith,
    TResult? Function()? addOrUpdateCoupon,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getUserCart,
    TResult Function()? getCartDetails,
    TResult Function()? clearCart,
    TResult Function()? getCartLength,
    TResult Function()? getPreparingTime,
    TResult Function(Map<String, dynamic> item)? addItemToCart,
    TResult Function(String uuid)? removeItemFromCart,
    TResult Function(String itemId, String operation)? updateItemQun,
    TResult Function()? getOftenOrderdWith,
    TResult Function()? addOrUpdateCoupon,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetUserCart value) getUserCart,
    required TResult Function(_GetCartDetails value) getCartDetails,
    required TResult Function(_ClearCart value) clearCart,
    required TResult Function(_GetCartLength value) getCartLength,
    required TResult Function(_GetPreparingTime value) getPreparingTime,
    required TResult Function(_AddItemToCart value) addItemToCart,
    required TResult Function(_RemoveItemFromCart value) removeItemFromCart,
    required TResult Function(_UpdateItemQun value) updateItemQun,
    required TResult Function(_GetOftenOrderdWith value) getOftenOrderdWith,
    required TResult Function(_AddOrUpdateCoupon value) addOrUpdateCoupon,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetUserCart value)? getUserCart,
    TResult? Function(_GetCartDetails value)? getCartDetails,
    TResult? Function(_ClearCart value)? clearCart,
    TResult? Function(_GetCartLength value)? getCartLength,
    TResult? Function(_GetPreparingTime value)? getPreparingTime,
    TResult? Function(_AddItemToCart value)? addItemToCart,
    TResult? Function(_RemoveItemFromCart value)? removeItemFromCart,
    TResult? Function(_UpdateItemQun value)? updateItemQun,
    TResult? Function(_GetOftenOrderdWith value)? getOftenOrderdWith,
    TResult? Function(_AddOrUpdateCoupon value)? addOrUpdateCoupon,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetUserCart value)? getUserCart,
    TResult Function(_GetCartDetails value)? getCartDetails,
    TResult Function(_ClearCart value)? clearCart,
    TResult Function(_GetCartLength value)? getCartLength,
    TResult Function(_GetPreparingTime value)? getPreparingTime,
    TResult Function(_AddItemToCart value)? addItemToCart,
    TResult Function(_RemoveItemFromCart value)? removeItemFromCart,
    TResult Function(_UpdateItemQun value)? updateItemQun,
    TResult Function(_GetOftenOrderdWith value)? getOftenOrderdWith,
    TResult Function(_AddOrUpdateCoupon value)? addOrUpdateCoupon,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CartEventCopyWith<$Res> {
  factory $CartEventCopyWith(CartEvent value, $Res Function(CartEvent) then) =
      _$CartEventCopyWithImpl<$Res, CartEvent>;
}

/// @nodoc
class _$CartEventCopyWithImpl<$Res, $Val extends CartEvent>
    implements $CartEventCopyWith<$Res> {
  _$CartEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CartEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$GetUserCartImplCopyWith<$Res> {
  factory _$$GetUserCartImplCopyWith(
          _$GetUserCartImpl value, $Res Function(_$GetUserCartImpl) then) =
      __$$GetUserCartImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetUserCartImplCopyWithImpl<$Res>
    extends _$CartEventCopyWithImpl<$Res, _$GetUserCartImpl>
    implements _$$GetUserCartImplCopyWith<$Res> {
  __$$GetUserCartImplCopyWithImpl(
      _$GetUserCartImpl _value, $Res Function(_$GetUserCartImpl) _then)
      : super(_value, _then);

  /// Create a copy of CartEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$GetUserCartImpl implements _GetUserCart {
  const _$GetUserCartImpl();

  @override
  String toString() {
    return 'CartEvent.getUserCart()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetUserCartImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getUserCart,
    required TResult Function() getCartDetails,
    required TResult Function() clearCart,
    required TResult Function() getCartLength,
    required TResult Function() getPreparingTime,
    required TResult Function(Map<String, dynamic> item) addItemToCart,
    required TResult Function(String uuid) removeItemFromCart,
    required TResult Function(String itemId, String operation) updateItemQun,
    required TResult Function() getOftenOrderdWith,
    required TResult Function() addOrUpdateCoupon,
  }) {
    return getUserCart();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getUserCart,
    TResult? Function()? getCartDetails,
    TResult? Function()? clearCart,
    TResult? Function()? getCartLength,
    TResult? Function()? getPreparingTime,
    TResult? Function(Map<String, dynamic> item)? addItemToCart,
    TResult? Function(String uuid)? removeItemFromCart,
    TResult? Function(String itemId, String operation)? updateItemQun,
    TResult? Function()? getOftenOrderdWith,
    TResult? Function()? addOrUpdateCoupon,
  }) {
    return getUserCart?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getUserCart,
    TResult Function()? getCartDetails,
    TResult Function()? clearCart,
    TResult Function()? getCartLength,
    TResult Function()? getPreparingTime,
    TResult Function(Map<String, dynamic> item)? addItemToCart,
    TResult Function(String uuid)? removeItemFromCart,
    TResult Function(String itemId, String operation)? updateItemQun,
    TResult Function()? getOftenOrderdWith,
    TResult Function()? addOrUpdateCoupon,
    required TResult orElse(),
  }) {
    if (getUserCart != null) {
      return getUserCart();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetUserCart value) getUserCart,
    required TResult Function(_GetCartDetails value) getCartDetails,
    required TResult Function(_ClearCart value) clearCart,
    required TResult Function(_GetCartLength value) getCartLength,
    required TResult Function(_GetPreparingTime value) getPreparingTime,
    required TResult Function(_AddItemToCart value) addItemToCart,
    required TResult Function(_RemoveItemFromCart value) removeItemFromCart,
    required TResult Function(_UpdateItemQun value) updateItemQun,
    required TResult Function(_GetOftenOrderdWith value) getOftenOrderdWith,
    required TResult Function(_AddOrUpdateCoupon value) addOrUpdateCoupon,
  }) {
    return getUserCart(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetUserCart value)? getUserCart,
    TResult? Function(_GetCartDetails value)? getCartDetails,
    TResult? Function(_ClearCart value)? clearCart,
    TResult? Function(_GetCartLength value)? getCartLength,
    TResult? Function(_GetPreparingTime value)? getPreparingTime,
    TResult? Function(_AddItemToCart value)? addItemToCart,
    TResult? Function(_RemoveItemFromCart value)? removeItemFromCart,
    TResult? Function(_UpdateItemQun value)? updateItemQun,
    TResult? Function(_GetOftenOrderdWith value)? getOftenOrderdWith,
    TResult? Function(_AddOrUpdateCoupon value)? addOrUpdateCoupon,
  }) {
    return getUserCart?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetUserCart value)? getUserCart,
    TResult Function(_GetCartDetails value)? getCartDetails,
    TResult Function(_ClearCart value)? clearCart,
    TResult Function(_GetCartLength value)? getCartLength,
    TResult Function(_GetPreparingTime value)? getPreparingTime,
    TResult Function(_AddItemToCart value)? addItemToCart,
    TResult Function(_RemoveItemFromCart value)? removeItemFromCart,
    TResult Function(_UpdateItemQun value)? updateItemQun,
    TResult Function(_GetOftenOrderdWith value)? getOftenOrderdWith,
    TResult Function(_AddOrUpdateCoupon value)? addOrUpdateCoupon,
    required TResult orElse(),
  }) {
    if (getUserCart != null) {
      return getUserCart(this);
    }
    return orElse();
  }
}

abstract class _GetUserCart implements CartEvent {
  const factory _GetUserCart() = _$GetUserCartImpl;
}

/// @nodoc
abstract class _$$GetCartDetailsImplCopyWith<$Res> {
  factory _$$GetCartDetailsImplCopyWith(_$GetCartDetailsImpl value,
          $Res Function(_$GetCartDetailsImpl) then) =
      __$$GetCartDetailsImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetCartDetailsImplCopyWithImpl<$Res>
    extends _$CartEventCopyWithImpl<$Res, _$GetCartDetailsImpl>
    implements _$$GetCartDetailsImplCopyWith<$Res> {
  __$$GetCartDetailsImplCopyWithImpl(
      _$GetCartDetailsImpl _value, $Res Function(_$GetCartDetailsImpl) _then)
      : super(_value, _then);

  /// Create a copy of CartEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$GetCartDetailsImpl implements _GetCartDetails {
  const _$GetCartDetailsImpl();

  @override
  String toString() {
    return 'CartEvent.getCartDetails()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetCartDetailsImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getUserCart,
    required TResult Function() getCartDetails,
    required TResult Function() clearCart,
    required TResult Function() getCartLength,
    required TResult Function() getPreparingTime,
    required TResult Function(Map<String, dynamic> item) addItemToCart,
    required TResult Function(String uuid) removeItemFromCart,
    required TResult Function(String itemId, String operation) updateItemQun,
    required TResult Function() getOftenOrderdWith,
    required TResult Function() addOrUpdateCoupon,
  }) {
    return getCartDetails();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getUserCart,
    TResult? Function()? getCartDetails,
    TResult? Function()? clearCart,
    TResult? Function()? getCartLength,
    TResult? Function()? getPreparingTime,
    TResult? Function(Map<String, dynamic> item)? addItemToCart,
    TResult? Function(String uuid)? removeItemFromCart,
    TResult? Function(String itemId, String operation)? updateItemQun,
    TResult? Function()? getOftenOrderdWith,
    TResult? Function()? addOrUpdateCoupon,
  }) {
    return getCartDetails?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getUserCart,
    TResult Function()? getCartDetails,
    TResult Function()? clearCart,
    TResult Function()? getCartLength,
    TResult Function()? getPreparingTime,
    TResult Function(Map<String, dynamic> item)? addItemToCart,
    TResult Function(String uuid)? removeItemFromCart,
    TResult Function(String itemId, String operation)? updateItemQun,
    TResult Function()? getOftenOrderdWith,
    TResult Function()? addOrUpdateCoupon,
    required TResult orElse(),
  }) {
    if (getCartDetails != null) {
      return getCartDetails();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetUserCart value) getUserCart,
    required TResult Function(_GetCartDetails value) getCartDetails,
    required TResult Function(_ClearCart value) clearCart,
    required TResult Function(_GetCartLength value) getCartLength,
    required TResult Function(_GetPreparingTime value) getPreparingTime,
    required TResult Function(_AddItemToCart value) addItemToCart,
    required TResult Function(_RemoveItemFromCart value) removeItemFromCart,
    required TResult Function(_UpdateItemQun value) updateItemQun,
    required TResult Function(_GetOftenOrderdWith value) getOftenOrderdWith,
    required TResult Function(_AddOrUpdateCoupon value) addOrUpdateCoupon,
  }) {
    return getCartDetails(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetUserCart value)? getUserCart,
    TResult? Function(_GetCartDetails value)? getCartDetails,
    TResult? Function(_ClearCart value)? clearCart,
    TResult? Function(_GetCartLength value)? getCartLength,
    TResult? Function(_GetPreparingTime value)? getPreparingTime,
    TResult? Function(_AddItemToCart value)? addItemToCart,
    TResult? Function(_RemoveItemFromCart value)? removeItemFromCart,
    TResult? Function(_UpdateItemQun value)? updateItemQun,
    TResult? Function(_GetOftenOrderdWith value)? getOftenOrderdWith,
    TResult? Function(_AddOrUpdateCoupon value)? addOrUpdateCoupon,
  }) {
    return getCartDetails?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetUserCart value)? getUserCart,
    TResult Function(_GetCartDetails value)? getCartDetails,
    TResult Function(_ClearCart value)? clearCart,
    TResult Function(_GetCartLength value)? getCartLength,
    TResult Function(_GetPreparingTime value)? getPreparingTime,
    TResult Function(_AddItemToCart value)? addItemToCart,
    TResult Function(_RemoveItemFromCart value)? removeItemFromCart,
    TResult Function(_UpdateItemQun value)? updateItemQun,
    TResult Function(_GetOftenOrderdWith value)? getOftenOrderdWith,
    TResult Function(_AddOrUpdateCoupon value)? addOrUpdateCoupon,
    required TResult orElse(),
  }) {
    if (getCartDetails != null) {
      return getCartDetails(this);
    }
    return orElse();
  }
}

abstract class _GetCartDetails implements CartEvent {
  const factory _GetCartDetails() = _$GetCartDetailsImpl;
}

/// @nodoc
abstract class _$$ClearCartImplCopyWith<$Res> {
  factory _$$ClearCartImplCopyWith(
          _$ClearCartImpl value, $Res Function(_$ClearCartImpl) then) =
      __$$ClearCartImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ClearCartImplCopyWithImpl<$Res>
    extends _$CartEventCopyWithImpl<$Res, _$ClearCartImpl>
    implements _$$ClearCartImplCopyWith<$Res> {
  __$$ClearCartImplCopyWithImpl(
      _$ClearCartImpl _value, $Res Function(_$ClearCartImpl) _then)
      : super(_value, _then);

  /// Create a copy of CartEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ClearCartImpl implements _ClearCart {
  const _$ClearCartImpl();

  @override
  String toString() {
    return 'CartEvent.clearCart()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ClearCartImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getUserCart,
    required TResult Function() getCartDetails,
    required TResult Function() clearCart,
    required TResult Function() getCartLength,
    required TResult Function() getPreparingTime,
    required TResult Function(Map<String, dynamic> item) addItemToCart,
    required TResult Function(String uuid) removeItemFromCart,
    required TResult Function(String itemId, String operation) updateItemQun,
    required TResult Function() getOftenOrderdWith,
    required TResult Function() addOrUpdateCoupon,
  }) {
    return clearCart();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getUserCart,
    TResult? Function()? getCartDetails,
    TResult? Function()? clearCart,
    TResult? Function()? getCartLength,
    TResult? Function()? getPreparingTime,
    TResult? Function(Map<String, dynamic> item)? addItemToCart,
    TResult? Function(String uuid)? removeItemFromCart,
    TResult? Function(String itemId, String operation)? updateItemQun,
    TResult? Function()? getOftenOrderdWith,
    TResult? Function()? addOrUpdateCoupon,
  }) {
    return clearCart?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getUserCart,
    TResult Function()? getCartDetails,
    TResult Function()? clearCart,
    TResult Function()? getCartLength,
    TResult Function()? getPreparingTime,
    TResult Function(Map<String, dynamic> item)? addItemToCart,
    TResult Function(String uuid)? removeItemFromCart,
    TResult Function(String itemId, String operation)? updateItemQun,
    TResult Function()? getOftenOrderdWith,
    TResult Function()? addOrUpdateCoupon,
    required TResult orElse(),
  }) {
    if (clearCart != null) {
      return clearCart();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetUserCart value) getUserCart,
    required TResult Function(_GetCartDetails value) getCartDetails,
    required TResult Function(_ClearCart value) clearCart,
    required TResult Function(_GetCartLength value) getCartLength,
    required TResult Function(_GetPreparingTime value) getPreparingTime,
    required TResult Function(_AddItemToCart value) addItemToCart,
    required TResult Function(_RemoveItemFromCart value) removeItemFromCart,
    required TResult Function(_UpdateItemQun value) updateItemQun,
    required TResult Function(_GetOftenOrderdWith value) getOftenOrderdWith,
    required TResult Function(_AddOrUpdateCoupon value) addOrUpdateCoupon,
  }) {
    return clearCart(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetUserCart value)? getUserCart,
    TResult? Function(_GetCartDetails value)? getCartDetails,
    TResult? Function(_ClearCart value)? clearCart,
    TResult? Function(_GetCartLength value)? getCartLength,
    TResult? Function(_GetPreparingTime value)? getPreparingTime,
    TResult? Function(_AddItemToCart value)? addItemToCart,
    TResult? Function(_RemoveItemFromCart value)? removeItemFromCart,
    TResult? Function(_UpdateItemQun value)? updateItemQun,
    TResult? Function(_GetOftenOrderdWith value)? getOftenOrderdWith,
    TResult? Function(_AddOrUpdateCoupon value)? addOrUpdateCoupon,
  }) {
    return clearCart?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetUserCart value)? getUserCart,
    TResult Function(_GetCartDetails value)? getCartDetails,
    TResult Function(_ClearCart value)? clearCart,
    TResult Function(_GetCartLength value)? getCartLength,
    TResult Function(_GetPreparingTime value)? getPreparingTime,
    TResult Function(_AddItemToCart value)? addItemToCart,
    TResult Function(_RemoveItemFromCart value)? removeItemFromCart,
    TResult Function(_UpdateItemQun value)? updateItemQun,
    TResult Function(_GetOftenOrderdWith value)? getOftenOrderdWith,
    TResult Function(_AddOrUpdateCoupon value)? addOrUpdateCoupon,
    required TResult orElse(),
  }) {
    if (clearCart != null) {
      return clearCart(this);
    }
    return orElse();
  }
}

abstract class _ClearCart implements CartEvent {
  const factory _ClearCart() = _$ClearCartImpl;
}

/// @nodoc
abstract class _$$GetCartLengthImplCopyWith<$Res> {
  factory _$$GetCartLengthImplCopyWith(
          _$GetCartLengthImpl value, $Res Function(_$GetCartLengthImpl) then) =
      __$$GetCartLengthImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetCartLengthImplCopyWithImpl<$Res>
    extends _$CartEventCopyWithImpl<$Res, _$GetCartLengthImpl>
    implements _$$GetCartLengthImplCopyWith<$Res> {
  __$$GetCartLengthImplCopyWithImpl(
      _$GetCartLengthImpl _value, $Res Function(_$GetCartLengthImpl) _then)
      : super(_value, _then);

  /// Create a copy of CartEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$GetCartLengthImpl implements _GetCartLength {
  const _$GetCartLengthImpl();

  @override
  String toString() {
    return 'CartEvent.getCartLength()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetCartLengthImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getUserCart,
    required TResult Function() getCartDetails,
    required TResult Function() clearCart,
    required TResult Function() getCartLength,
    required TResult Function() getPreparingTime,
    required TResult Function(Map<String, dynamic> item) addItemToCart,
    required TResult Function(String uuid) removeItemFromCart,
    required TResult Function(String itemId, String operation) updateItemQun,
    required TResult Function() getOftenOrderdWith,
    required TResult Function() addOrUpdateCoupon,
  }) {
    return getCartLength();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getUserCart,
    TResult? Function()? getCartDetails,
    TResult? Function()? clearCart,
    TResult? Function()? getCartLength,
    TResult? Function()? getPreparingTime,
    TResult? Function(Map<String, dynamic> item)? addItemToCart,
    TResult? Function(String uuid)? removeItemFromCart,
    TResult? Function(String itemId, String operation)? updateItemQun,
    TResult? Function()? getOftenOrderdWith,
    TResult? Function()? addOrUpdateCoupon,
  }) {
    return getCartLength?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getUserCart,
    TResult Function()? getCartDetails,
    TResult Function()? clearCart,
    TResult Function()? getCartLength,
    TResult Function()? getPreparingTime,
    TResult Function(Map<String, dynamic> item)? addItemToCart,
    TResult Function(String uuid)? removeItemFromCart,
    TResult Function(String itemId, String operation)? updateItemQun,
    TResult Function()? getOftenOrderdWith,
    TResult Function()? addOrUpdateCoupon,
    required TResult orElse(),
  }) {
    if (getCartLength != null) {
      return getCartLength();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetUserCart value) getUserCart,
    required TResult Function(_GetCartDetails value) getCartDetails,
    required TResult Function(_ClearCart value) clearCart,
    required TResult Function(_GetCartLength value) getCartLength,
    required TResult Function(_GetPreparingTime value) getPreparingTime,
    required TResult Function(_AddItemToCart value) addItemToCart,
    required TResult Function(_RemoveItemFromCart value) removeItemFromCart,
    required TResult Function(_UpdateItemQun value) updateItemQun,
    required TResult Function(_GetOftenOrderdWith value) getOftenOrderdWith,
    required TResult Function(_AddOrUpdateCoupon value) addOrUpdateCoupon,
  }) {
    return getCartLength(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetUserCart value)? getUserCart,
    TResult? Function(_GetCartDetails value)? getCartDetails,
    TResult? Function(_ClearCart value)? clearCart,
    TResult? Function(_GetCartLength value)? getCartLength,
    TResult? Function(_GetPreparingTime value)? getPreparingTime,
    TResult? Function(_AddItemToCart value)? addItemToCart,
    TResult? Function(_RemoveItemFromCart value)? removeItemFromCart,
    TResult? Function(_UpdateItemQun value)? updateItemQun,
    TResult? Function(_GetOftenOrderdWith value)? getOftenOrderdWith,
    TResult? Function(_AddOrUpdateCoupon value)? addOrUpdateCoupon,
  }) {
    return getCartLength?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetUserCart value)? getUserCart,
    TResult Function(_GetCartDetails value)? getCartDetails,
    TResult Function(_ClearCart value)? clearCart,
    TResult Function(_GetCartLength value)? getCartLength,
    TResult Function(_GetPreparingTime value)? getPreparingTime,
    TResult Function(_AddItemToCart value)? addItemToCart,
    TResult Function(_RemoveItemFromCart value)? removeItemFromCart,
    TResult Function(_UpdateItemQun value)? updateItemQun,
    TResult Function(_GetOftenOrderdWith value)? getOftenOrderdWith,
    TResult Function(_AddOrUpdateCoupon value)? addOrUpdateCoupon,
    required TResult orElse(),
  }) {
    if (getCartLength != null) {
      return getCartLength(this);
    }
    return orElse();
  }
}

abstract class _GetCartLength implements CartEvent {
  const factory _GetCartLength() = _$GetCartLengthImpl;
}

/// @nodoc
abstract class _$$GetPreparingTimeImplCopyWith<$Res> {
  factory _$$GetPreparingTimeImplCopyWith(_$GetPreparingTimeImpl value,
          $Res Function(_$GetPreparingTimeImpl) then) =
      __$$GetPreparingTimeImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetPreparingTimeImplCopyWithImpl<$Res>
    extends _$CartEventCopyWithImpl<$Res, _$GetPreparingTimeImpl>
    implements _$$GetPreparingTimeImplCopyWith<$Res> {
  __$$GetPreparingTimeImplCopyWithImpl(_$GetPreparingTimeImpl _value,
      $Res Function(_$GetPreparingTimeImpl) _then)
      : super(_value, _then);

  /// Create a copy of CartEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$GetPreparingTimeImpl implements _GetPreparingTime {
  const _$GetPreparingTimeImpl();

  @override
  String toString() {
    return 'CartEvent.getPreparingTime()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetPreparingTimeImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getUserCart,
    required TResult Function() getCartDetails,
    required TResult Function() clearCart,
    required TResult Function() getCartLength,
    required TResult Function() getPreparingTime,
    required TResult Function(Map<String, dynamic> item) addItemToCart,
    required TResult Function(String uuid) removeItemFromCart,
    required TResult Function(String itemId, String operation) updateItemQun,
    required TResult Function() getOftenOrderdWith,
    required TResult Function() addOrUpdateCoupon,
  }) {
    return getPreparingTime();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getUserCart,
    TResult? Function()? getCartDetails,
    TResult? Function()? clearCart,
    TResult? Function()? getCartLength,
    TResult? Function()? getPreparingTime,
    TResult? Function(Map<String, dynamic> item)? addItemToCart,
    TResult? Function(String uuid)? removeItemFromCart,
    TResult? Function(String itemId, String operation)? updateItemQun,
    TResult? Function()? getOftenOrderdWith,
    TResult? Function()? addOrUpdateCoupon,
  }) {
    return getPreparingTime?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getUserCart,
    TResult Function()? getCartDetails,
    TResult Function()? clearCart,
    TResult Function()? getCartLength,
    TResult Function()? getPreparingTime,
    TResult Function(Map<String, dynamic> item)? addItemToCart,
    TResult Function(String uuid)? removeItemFromCart,
    TResult Function(String itemId, String operation)? updateItemQun,
    TResult Function()? getOftenOrderdWith,
    TResult Function()? addOrUpdateCoupon,
    required TResult orElse(),
  }) {
    if (getPreparingTime != null) {
      return getPreparingTime();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetUserCart value) getUserCart,
    required TResult Function(_GetCartDetails value) getCartDetails,
    required TResult Function(_ClearCart value) clearCart,
    required TResult Function(_GetCartLength value) getCartLength,
    required TResult Function(_GetPreparingTime value) getPreparingTime,
    required TResult Function(_AddItemToCart value) addItemToCart,
    required TResult Function(_RemoveItemFromCart value) removeItemFromCart,
    required TResult Function(_UpdateItemQun value) updateItemQun,
    required TResult Function(_GetOftenOrderdWith value) getOftenOrderdWith,
    required TResult Function(_AddOrUpdateCoupon value) addOrUpdateCoupon,
  }) {
    return getPreparingTime(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetUserCart value)? getUserCart,
    TResult? Function(_GetCartDetails value)? getCartDetails,
    TResult? Function(_ClearCart value)? clearCart,
    TResult? Function(_GetCartLength value)? getCartLength,
    TResult? Function(_GetPreparingTime value)? getPreparingTime,
    TResult? Function(_AddItemToCart value)? addItemToCart,
    TResult? Function(_RemoveItemFromCart value)? removeItemFromCart,
    TResult? Function(_UpdateItemQun value)? updateItemQun,
    TResult? Function(_GetOftenOrderdWith value)? getOftenOrderdWith,
    TResult? Function(_AddOrUpdateCoupon value)? addOrUpdateCoupon,
  }) {
    return getPreparingTime?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetUserCart value)? getUserCart,
    TResult Function(_GetCartDetails value)? getCartDetails,
    TResult Function(_ClearCart value)? clearCart,
    TResult Function(_GetCartLength value)? getCartLength,
    TResult Function(_GetPreparingTime value)? getPreparingTime,
    TResult Function(_AddItemToCart value)? addItemToCart,
    TResult Function(_RemoveItemFromCart value)? removeItemFromCart,
    TResult Function(_UpdateItemQun value)? updateItemQun,
    TResult Function(_GetOftenOrderdWith value)? getOftenOrderdWith,
    TResult Function(_AddOrUpdateCoupon value)? addOrUpdateCoupon,
    required TResult orElse(),
  }) {
    if (getPreparingTime != null) {
      return getPreparingTime(this);
    }
    return orElse();
  }
}

abstract class _GetPreparingTime implements CartEvent {
  const factory _GetPreparingTime() = _$GetPreparingTimeImpl;
}

/// @nodoc
abstract class _$$AddItemToCartImplCopyWith<$Res> {
  factory _$$AddItemToCartImplCopyWith(
          _$AddItemToCartImpl value, $Res Function(_$AddItemToCartImpl) then) =
      __$$AddItemToCartImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Map<String, dynamic> item});
}

/// @nodoc
class __$$AddItemToCartImplCopyWithImpl<$Res>
    extends _$CartEventCopyWithImpl<$Res, _$AddItemToCartImpl>
    implements _$$AddItemToCartImplCopyWith<$Res> {
  __$$AddItemToCartImplCopyWithImpl(
      _$AddItemToCartImpl _value, $Res Function(_$AddItemToCartImpl) _then)
      : super(_value, _then);

  /// Create a copy of CartEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? item = null,
  }) {
    return _then(_$AddItemToCartImpl(
      null == item
          ? _value._item
          : item // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
    ));
  }
}

/// @nodoc

class _$AddItemToCartImpl implements _AddItemToCart {
  const _$AddItemToCartImpl(final Map<String, dynamic> item) : _item = item;

  final Map<String, dynamic> _item;
  @override
  Map<String, dynamic> get item {
    if (_item is EqualUnmodifiableMapView) return _item;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_item);
  }

  @override
  String toString() {
    return 'CartEvent.addItemToCart(item: $item)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddItemToCartImpl &&
            const DeepCollectionEquality().equals(other._item, _item));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_item));

  /// Create a copy of CartEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AddItemToCartImplCopyWith<_$AddItemToCartImpl> get copyWith =>
      __$$AddItemToCartImplCopyWithImpl<_$AddItemToCartImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getUserCart,
    required TResult Function() getCartDetails,
    required TResult Function() clearCart,
    required TResult Function() getCartLength,
    required TResult Function() getPreparingTime,
    required TResult Function(Map<String, dynamic> item) addItemToCart,
    required TResult Function(String uuid) removeItemFromCart,
    required TResult Function(String itemId, String operation) updateItemQun,
    required TResult Function() getOftenOrderdWith,
    required TResult Function() addOrUpdateCoupon,
  }) {
    return addItemToCart(item);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getUserCart,
    TResult? Function()? getCartDetails,
    TResult? Function()? clearCart,
    TResult? Function()? getCartLength,
    TResult? Function()? getPreparingTime,
    TResult? Function(Map<String, dynamic> item)? addItemToCart,
    TResult? Function(String uuid)? removeItemFromCart,
    TResult? Function(String itemId, String operation)? updateItemQun,
    TResult? Function()? getOftenOrderdWith,
    TResult? Function()? addOrUpdateCoupon,
  }) {
    return addItemToCart?.call(item);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getUserCart,
    TResult Function()? getCartDetails,
    TResult Function()? clearCart,
    TResult Function()? getCartLength,
    TResult Function()? getPreparingTime,
    TResult Function(Map<String, dynamic> item)? addItemToCart,
    TResult Function(String uuid)? removeItemFromCart,
    TResult Function(String itemId, String operation)? updateItemQun,
    TResult Function()? getOftenOrderdWith,
    TResult Function()? addOrUpdateCoupon,
    required TResult orElse(),
  }) {
    if (addItemToCart != null) {
      return addItemToCart(item);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetUserCart value) getUserCart,
    required TResult Function(_GetCartDetails value) getCartDetails,
    required TResult Function(_ClearCart value) clearCart,
    required TResult Function(_GetCartLength value) getCartLength,
    required TResult Function(_GetPreparingTime value) getPreparingTime,
    required TResult Function(_AddItemToCart value) addItemToCart,
    required TResult Function(_RemoveItemFromCart value) removeItemFromCart,
    required TResult Function(_UpdateItemQun value) updateItemQun,
    required TResult Function(_GetOftenOrderdWith value) getOftenOrderdWith,
    required TResult Function(_AddOrUpdateCoupon value) addOrUpdateCoupon,
  }) {
    return addItemToCart(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetUserCart value)? getUserCart,
    TResult? Function(_GetCartDetails value)? getCartDetails,
    TResult? Function(_ClearCart value)? clearCart,
    TResult? Function(_GetCartLength value)? getCartLength,
    TResult? Function(_GetPreparingTime value)? getPreparingTime,
    TResult? Function(_AddItemToCart value)? addItemToCart,
    TResult? Function(_RemoveItemFromCart value)? removeItemFromCart,
    TResult? Function(_UpdateItemQun value)? updateItemQun,
    TResult? Function(_GetOftenOrderdWith value)? getOftenOrderdWith,
    TResult? Function(_AddOrUpdateCoupon value)? addOrUpdateCoupon,
  }) {
    return addItemToCart?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetUserCart value)? getUserCart,
    TResult Function(_GetCartDetails value)? getCartDetails,
    TResult Function(_ClearCart value)? clearCart,
    TResult Function(_GetCartLength value)? getCartLength,
    TResult Function(_GetPreparingTime value)? getPreparingTime,
    TResult Function(_AddItemToCart value)? addItemToCart,
    TResult Function(_RemoveItemFromCart value)? removeItemFromCart,
    TResult Function(_UpdateItemQun value)? updateItemQun,
    TResult Function(_GetOftenOrderdWith value)? getOftenOrderdWith,
    TResult Function(_AddOrUpdateCoupon value)? addOrUpdateCoupon,
    required TResult orElse(),
  }) {
    if (addItemToCart != null) {
      return addItemToCart(this);
    }
    return orElse();
  }
}

abstract class _AddItemToCart implements CartEvent {
  const factory _AddItemToCart(final Map<String, dynamic> item) =
      _$AddItemToCartImpl;

  Map<String, dynamic> get item;

  /// Create a copy of CartEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AddItemToCartImplCopyWith<_$AddItemToCartImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RemoveItemFromCartImplCopyWith<$Res> {
  factory _$$RemoveItemFromCartImplCopyWith(_$RemoveItemFromCartImpl value,
          $Res Function(_$RemoveItemFromCartImpl) then) =
      __$$RemoveItemFromCartImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String uuid});
}

/// @nodoc
class __$$RemoveItemFromCartImplCopyWithImpl<$Res>
    extends _$CartEventCopyWithImpl<$Res, _$RemoveItemFromCartImpl>
    implements _$$RemoveItemFromCartImplCopyWith<$Res> {
  __$$RemoveItemFromCartImplCopyWithImpl(_$RemoveItemFromCartImpl _value,
      $Res Function(_$RemoveItemFromCartImpl) _then)
      : super(_value, _then);

  /// Create a copy of CartEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uuid = null,
  }) {
    return _then(_$RemoveItemFromCartImpl(
      null == uuid
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$RemoveItemFromCartImpl implements _RemoveItemFromCart {
  const _$RemoveItemFromCartImpl(this.uuid);

  @override
  final String uuid;

  @override
  String toString() {
    return 'CartEvent.removeItemFromCart(uuid: $uuid)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RemoveItemFromCartImpl &&
            (identical(other.uuid, uuid) || other.uuid == uuid));
  }

  @override
  int get hashCode => Object.hash(runtimeType, uuid);

  /// Create a copy of CartEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RemoveItemFromCartImplCopyWith<_$RemoveItemFromCartImpl> get copyWith =>
      __$$RemoveItemFromCartImplCopyWithImpl<_$RemoveItemFromCartImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getUserCart,
    required TResult Function() getCartDetails,
    required TResult Function() clearCart,
    required TResult Function() getCartLength,
    required TResult Function() getPreparingTime,
    required TResult Function(Map<String, dynamic> item) addItemToCart,
    required TResult Function(String uuid) removeItemFromCart,
    required TResult Function(String itemId, String operation) updateItemQun,
    required TResult Function() getOftenOrderdWith,
    required TResult Function() addOrUpdateCoupon,
  }) {
    return removeItemFromCart(uuid);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getUserCart,
    TResult? Function()? getCartDetails,
    TResult? Function()? clearCart,
    TResult? Function()? getCartLength,
    TResult? Function()? getPreparingTime,
    TResult? Function(Map<String, dynamic> item)? addItemToCart,
    TResult? Function(String uuid)? removeItemFromCart,
    TResult? Function(String itemId, String operation)? updateItemQun,
    TResult? Function()? getOftenOrderdWith,
    TResult? Function()? addOrUpdateCoupon,
  }) {
    return removeItemFromCart?.call(uuid);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getUserCart,
    TResult Function()? getCartDetails,
    TResult Function()? clearCart,
    TResult Function()? getCartLength,
    TResult Function()? getPreparingTime,
    TResult Function(Map<String, dynamic> item)? addItemToCart,
    TResult Function(String uuid)? removeItemFromCart,
    TResult Function(String itemId, String operation)? updateItemQun,
    TResult Function()? getOftenOrderdWith,
    TResult Function()? addOrUpdateCoupon,
    required TResult orElse(),
  }) {
    if (removeItemFromCart != null) {
      return removeItemFromCart(uuid);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetUserCart value) getUserCart,
    required TResult Function(_GetCartDetails value) getCartDetails,
    required TResult Function(_ClearCart value) clearCart,
    required TResult Function(_GetCartLength value) getCartLength,
    required TResult Function(_GetPreparingTime value) getPreparingTime,
    required TResult Function(_AddItemToCart value) addItemToCart,
    required TResult Function(_RemoveItemFromCart value) removeItemFromCart,
    required TResult Function(_UpdateItemQun value) updateItemQun,
    required TResult Function(_GetOftenOrderdWith value) getOftenOrderdWith,
    required TResult Function(_AddOrUpdateCoupon value) addOrUpdateCoupon,
  }) {
    return removeItemFromCart(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetUserCart value)? getUserCart,
    TResult? Function(_GetCartDetails value)? getCartDetails,
    TResult? Function(_ClearCart value)? clearCart,
    TResult? Function(_GetCartLength value)? getCartLength,
    TResult? Function(_GetPreparingTime value)? getPreparingTime,
    TResult? Function(_AddItemToCart value)? addItemToCart,
    TResult? Function(_RemoveItemFromCart value)? removeItemFromCart,
    TResult? Function(_UpdateItemQun value)? updateItemQun,
    TResult? Function(_GetOftenOrderdWith value)? getOftenOrderdWith,
    TResult? Function(_AddOrUpdateCoupon value)? addOrUpdateCoupon,
  }) {
    return removeItemFromCart?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetUserCart value)? getUserCart,
    TResult Function(_GetCartDetails value)? getCartDetails,
    TResult Function(_ClearCart value)? clearCart,
    TResult Function(_GetCartLength value)? getCartLength,
    TResult Function(_GetPreparingTime value)? getPreparingTime,
    TResult Function(_AddItemToCart value)? addItemToCart,
    TResult Function(_RemoveItemFromCart value)? removeItemFromCart,
    TResult Function(_UpdateItemQun value)? updateItemQun,
    TResult Function(_GetOftenOrderdWith value)? getOftenOrderdWith,
    TResult Function(_AddOrUpdateCoupon value)? addOrUpdateCoupon,
    required TResult orElse(),
  }) {
    if (removeItemFromCart != null) {
      return removeItemFromCart(this);
    }
    return orElse();
  }
}

abstract class _RemoveItemFromCart implements CartEvent {
  const factory _RemoveItemFromCart(final String uuid) =
      _$RemoveItemFromCartImpl;

  String get uuid;

  /// Create a copy of CartEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RemoveItemFromCartImplCopyWith<_$RemoveItemFromCartImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateItemQunImplCopyWith<$Res> {
  factory _$$UpdateItemQunImplCopyWith(
          _$UpdateItemQunImpl value, $Res Function(_$UpdateItemQunImpl) then) =
      __$$UpdateItemQunImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String itemId, String operation});
}

/// @nodoc
class __$$UpdateItemQunImplCopyWithImpl<$Res>
    extends _$CartEventCopyWithImpl<$Res, _$UpdateItemQunImpl>
    implements _$$UpdateItemQunImplCopyWith<$Res> {
  __$$UpdateItemQunImplCopyWithImpl(
      _$UpdateItemQunImpl _value, $Res Function(_$UpdateItemQunImpl) _then)
      : super(_value, _then);

  /// Create a copy of CartEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? itemId = null,
    Object? operation = null,
  }) {
    return _then(_$UpdateItemQunImpl(
      null == itemId
          ? _value.itemId
          : itemId // ignore: cast_nullable_to_non_nullable
              as String,
      null == operation
          ? _value.operation
          : operation // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$UpdateItemQunImpl implements _UpdateItemQun {
  const _$UpdateItemQunImpl(this.itemId, this.operation);

  @override
  final String itemId;
  @override
  final String operation;

  @override
  String toString() {
    return 'CartEvent.updateItemQun(itemId: $itemId, operation: $operation)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateItemQunImpl &&
            (identical(other.itemId, itemId) || other.itemId == itemId) &&
            (identical(other.operation, operation) ||
                other.operation == operation));
  }

  @override
  int get hashCode => Object.hash(runtimeType, itemId, operation);

  /// Create a copy of CartEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateItemQunImplCopyWith<_$UpdateItemQunImpl> get copyWith =>
      __$$UpdateItemQunImplCopyWithImpl<_$UpdateItemQunImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getUserCart,
    required TResult Function() getCartDetails,
    required TResult Function() clearCart,
    required TResult Function() getCartLength,
    required TResult Function() getPreparingTime,
    required TResult Function(Map<String, dynamic> item) addItemToCart,
    required TResult Function(String uuid) removeItemFromCart,
    required TResult Function(String itemId, String operation) updateItemQun,
    required TResult Function() getOftenOrderdWith,
    required TResult Function() addOrUpdateCoupon,
  }) {
    return updateItemQun(itemId, operation);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getUserCart,
    TResult? Function()? getCartDetails,
    TResult? Function()? clearCart,
    TResult? Function()? getCartLength,
    TResult? Function()? getPreparingTime,
    TResult? Function(Map<String, dynamic> item)? addItemToCart,
    TResult? Function(String uuid)? removeItemFromCart,
    TResult? Function(String itemId, String operation)? updateItemQun,
    TResult? Function()? getOftenOrderdWith,
    TResult? Function()? addOrUpdateCoupon,
  }) {
    return updateItemQun?.call(itemId, operation);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getUserCart,
    TResult Function()? getCartDetails,
    TResult Function()? clearCart,
    TResult Function()? getCartLength,
    TResult Function()? getPreparingTime,
    TResult Function(Map<String, dynamic> item)? addItemToCart,
    TResult Function(String uuid)? removeItemFromCart,
    TResult Function(String itemId, String operation)? updateItemQun,
    TResult Function()? getOftenOrderdWith,
    TResult Function()? addOrUpdateCoupon,
    required TResult orElse(),
  }) {
    if (updateItemQun != null) {
      return updateItemQun(itemId, operation);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetUserCart value) getUserCart,
    required TResult Function(_GetCartDetails value) getCartDetails,
    required TResult Function(_ClearCart value) clearCart,
    required TResult Function(_GetCartLength value) getCartLength,
    required TResult Function(_GetPreparingTime value) getPreparingTime,
    required TResult Function(_AddItemToCart value) addItemToCart,
    required TResult Function(_RemoveItemFromCart value) removeItemFromCart,
    required TResult Function(_UpdateItemQun value) updateItemQun,
    required TResult Function(_GetOftenOrderdWith value) getOftenOrderdWith,
    required TResult Function(_AddOrUpdateCoupon value) addOrUpdateCoupon,
  }) {
    return updateItemQun(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetUserCart value)? getUserCart,
    TResult? Function(_GetCartDetails value)? getCartDetails,
    TResult? Function(_ClearCart value)? clearCart,
    TResult? Function(_GetCartLength value)? getCartLength,
    TResult? Function(_GetPreparingTime value)? getPreparingTime,
    TResult? Function(_AddItemToCart value)? addItemToCart,
    TResult? Function(_RemoveItemFromCart value)? removeItemFromCart,
    TResult? Function(_UpdateItemQun value)? updateItemQun,
    TResult? Function(_GetOftenOrderdWith value)? getOftenOrderdWith,
    TResult? Function(_AddOrUpdateCoupon value)? addOrUpdateCoupon,
  }) {
    return updateItemQun?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetUserCart value)? getUserCart,
    TResult Function(_GetCartDetails value)? getCartDetails,
    TResult Function(_ClearCart value)? clearCart,
    TResult Function(_GetCartLength value)? getCartLength,
    TResult Function(_GetPreparingTime value)? getPreparingTime,
    TResult Function(_AddItemToCart value)? addItemToCart,
    TResult Function(_RemoveItemFromCart value)? removeItemFromCart,
    TResult Function(_UpdateItemQun value)? updateItemQun,
    TResult Function(_GetOftenOrderdWith value)? getOftenOrderdWith,
    TResult Function(_AddOrUpdateCoupon value)? addOrUpdateCoupon,
    required TResult orElse(),
  }) {
    if (updateItemQun != null) {
      return updateItemQun(this);
    }
    return orElse();
  }
}

abstract class _UpdateItemQun implements CartEvent {
  const factory _UpdateItemQun(final String itemId, final String operation) =
      _$UpdateItemQunImpl;

  String get itemId;
  String get operation;

  /// Create a copy of CartEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateItemQunImplCopyWith<_$UpdateItemQunImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetOftenOrderdWithImplCopyWith<$Res> {
  factory _$$GetOftenOrderdWithImplCopyWith(_$GetOftenOrderdWithImpl value,
          $Res Function(_$GetOftenOrderdWithImpl) then) =
      __$$GetOftenOrderdWithImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetOftenOrderdWithImplCopyWithImpl<$Res>
    extends _$CartEventCopyWithImpl<$Res, _$GetOftenOrderdWithImpl>
    implements _$$GetOftenOrderdWithImplCopyWith<$Res> {
  __$$GetOftenOrderdWithImplCopyWithImpl(_$GetOftenOrderdWithImpl _value,
      $Res Function(_$GetOftenOrderdWithImpl) _then)
      : super(_value, _then);

  /// Create a copy of CartEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$GetOftenOrderdWithImpl implements _GetOftenOrderdWith {
  const _$GetOftenOrderdWithImpl();

  @override
  String toString() {
    return 'CartEvent.getOftenOrderdWith()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetOftenOrderdWithImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getUserCart,
    required TResult Function() getCartDetails,
    required TResult Function() clearCart,
    required TResult Function() getCartLength,
    required TResult Function() getPreparingTime,
    required TResult Function(Map<String, dynamic> item) addItemToCart,
    required TResult Function(String uuid) removeItemFromCart,
    required TResult Function(String itemId, String operation) updateItemQun,
    required TResult Function() getOftenOrderdWith,
    required TResult Function() addOrUpdateCoupon,
  }) {
    return getOftenOrderdWith();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getUserCart,
    TResult? Function()? getCartDetails,
    TResult? Function()? clearCart,
    TResult? Function()? getCartLength,
    TResult? Function()? getPreparingTime,
    TResult? Function(Map<String, dynamic> item)? addItemToCart,
    TResult? Function(String uuid)? removeItemFromCart,
    TResult? Function(String itemId, String operation)? updateItemQun,
    TResult? Function()? getOftenOrderdWith,
    TResult? Function()? addOrUpdateCoupon,
  }) {
    return getOftenOrderdWith?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getUserCart,
    TResult Function()? getCartDetails,
    TResult Function()? clearCart,
    TResult Function()? getCartLength,
    TResult Function()? getPreparingTime,
    TResult Function(Map<String, dynamic> item)? addItemToCart,
    TResult Function(String uuid)? removeItemFromCart,
    TResult Function(String itemId, String operation)? updateItemQun,
    TResult Function()? getOftenOrderdWith,
    TResult Function()? addOrUpdateCoupon,
    required TResult orElse(),
  }) {
    if (getOftenOrderdWith != null) {
      return getOftenOrderdWith();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetUserCart value) getUserCart,
    required TResult Function(_GetCartDetails value) getCartDetails,
    required TResult Function(_ClearCart value) clearCart,
    required TResult Function(_GetCartLength value) getCartLength,
    required TResult Function(_GetPreparingTime value) getPreparingTime,
    required TResult Function(_AddItemToCart value) addItemToCart,
    required TResult Function(_RemoveItemFromCart value) removeItemFromCart,
    required TResult Function(_UpdateItemQun value) updateItemQun,
    required TResult Function(_GetOftenOrderdWith value) getOftenOrderdWith,
    required TResult Function(_AddOrUpdateCoupon value) addOrUpdateCoupon,
  }) {
    return getOftenOrderdWith(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetUserCart value)? getUserCart,
    TResult? Function(_GetCartDetails value)? getCartDetails,
    TResult? Function(_ClearCart value)? clearCart,
    TResult? Function(_GetCartLength value)? getCartLength,
    TResult? Function(_GetPreparingTime value)? getPreparingTime,
    TResult? Function(_AddItemToCart value)? addItemToCart,
    TResult? Function(_RemoveItemFromCart value)? removeItemFromCart,
    TResult? Function(_UpdateItemQun value)? updateItemQun,
    TResult? Function(_GetOftenOrderdWith value)? getOftenOrderdWith,
    TResult? Function(_AddOrUpdateCoupon value)? addOrUpdateCoupon,
  }) {
    return getOftenOrderdWith?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetUserCart value)? getUserCart,
    TResult Function(_GetCartDetails value)? getCartDetails,
    TResult Function(_ClearCart value)? clearCart,
    TResult Function(_GetCartLength value)? getCartLength,
    TResult Function(_GetPreparingTime value)? getPreparingTime,
    TResult Function(_AddItemToCart value)? addItemToCart,
    TResult Function(_RemoveItemFromCart value)? removeItemFromCart,
    TResult Function(_UpdateItemQun value)? updateItemQun,
    TResult Function(_GetOftenOrderdWith value)? getOftenOrderdWith,
    TResult Function(_AddOrUpdateCoupon value)? addOrUpdateCoupon,
    required TResult orElse(),
  }) {
    if (getOftenOrderdWith != null) {
      return getOftenOrderdWith(this);
    }
    return orElse();
  }
}

abstract class _GetOftenOrderdWith implements CartEvent {
  const factory _GetOftenOrderdWith() = _$GetOftenOrderdWithImpl;
}

/// @nodoc
abstract class _$$AddOrUpdateCouponImplCopyWith<$Res> {
  factory _$$AddOrUpdateCouponImplCopyWith(_$AddOrUpdateCouponImpl value,
          $Res Function(_$AddOrUpdateCouponImpl) then) =
      __$$AddOrUpdateCouponImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AddOrUpdateCouponImplCopyWithImpl<$Res>
    extends _$CartEventCopyWithImpl<$Res, _$AddOrUpdateCouponImpl>
    implements _$$AddOrUpdateCouponImplCopyWith<$Res> {
  __$$AddOrUpdateCouponImplCopyWithImpl(_$AddOrUpdateCouponImpl _value,
      $Res Function(_$AddOrUpdateCouponImpl) _then)
      : super(_value, _then);

  /// Create a copy of CartEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$AddOrUpdateCouponImpl implements _AddOrUpdateCoupon {
  const _$AddOrUpdateCouponImpl();

  @override
  String toString() {
    return 'CartEvent.addOrUpdateCoupon()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AddOrUpdateCouponImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getUserCart,
    required TResult Function() getCartDetails,
    required TResult Function() clearCart,
    required TResult Function() getCartLength,
    required TResult Function() getPreparingTime,
    required TResult Function(Map<String, dynamic> item) addItemToCart,
    required TResult Function(String uuid) removeItemFromCart,
    required TResult Function(String itemId, String operation) updateItemQun,
    required TResult Function() getOftenOrderdWith,
    required TResult Function() addOrUpdateCoupon,
  }) {
    return addOrUpdateCoupon();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getUserCart,
    TResult? Function()? getCartDetails,
    TResult? Function()? clearCart,
    TResult? Function()? getCartLength,
    TResult? Function()? getPreparingTime,
    TResult? Function(Map<String, dynamic> item)? addItemToCart,
    TResult? Function(String uuid)? removeItemFromCart,
    TResult? Function(String itemId, String operation)? updateItemQun,
    TResult? Function()? getOftenOrderdWith,
    TResult? Function()? addOrUpdateCoupon,
  }) {
    return addOrUpdateCoupon?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getUserCart,
    TResult Function()? getCartDetails,
    TResult Function()? clearCart,
    TResult Function()? getCartLength,
    TResult Function()? getPreparingTime,
    TResult Function(Map<String, dynamic> item)? addItemToCart,
    TResult Function(String uuid)? removeItemFromCart,
    TResult Function(String itemId, String operation)? updateItemQun,
    TResult Function()? getOftenOrderdWith,
    TResult Function()? addOrUpdateCoupon,
    required TResult orElse(),
  }) {
    if (addOrUpdateCoupon != null) {
      return addOrUpdateCoupon();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetUserCart value) getUserCart,
    required TResult Function(_GetCartDetails value) getCartDetails,
    required TResult Function(_ClearCart value) clearCart,
    required TResult Function(_GetCartLength value) getCartLength,
    required TResult Function(_GetPreparingTime value) getPreparingTime,
    required TResult Function(_AddItemToCart value) addItemToCart,
    required TResult Function(_RemoveItemFromCart value) removeItemFromCart,
    required TResult Function(_UpdateItemQun value) updateItemQun,
    required TResult Function(_GetOftenOrderdWith value) getOftenOrderdWith,
    required TResult Function(_AddOrUpdateCoupon value) addOrUpdateCoupon,
  }) {
    return addOrUpdateCoupon(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetUserCart value)? getUserCart,
    TResult? Function(_GetCartDetails value)? getCartDetails,
    TResult? Function(_ClearCart value)? clearCart,
    TResult? Function(_GetCartLength value)? getCartLength,
    TResult? Function(_GetPreparingTime value)? getPreparingTime,
    TResult? Function(_AddItemToCart value)? addItemToCart,
    TResult? Function(_RemoveItemFromCart value)? removeItemFromCart,
    TResult? Function(_UpdateItemQun value)? updateItemQun,
    TResult? Function(_GetOftenOrderdWith value)? getOftenOrderdWith,
    TResult? Function(_AddOrUpdateCoupon value)? addOrUpdateCoupon,
  }) {
    return addOrUpdateCoupon?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetUserCart value)? getUserCart,
    TResult Function(_GetCartDetails value)? getCartDetails,
    TResult Function(_ClearCart value)? clearCart,
    TResult Function(_GetCartLength value)? getCartLength,
    TResult Function(_GetPreparingTime value)? getPreparingTime,
    TResult Function(_AddItemToCart value)? addItemToCart,
    TResult Function(_RemoveItemFromCart value)? removeItemFromCart,
    TResult Function(_UpdateItemQun value)? updateItemQun,
    TResult Function(_GetOftenOrderdWith value)? getOftenOrderdWith,
    TResult Function(_AddOrUpdateCoupon value)? addOrUpdateCoupon,
    required TResult orElse(),
  }) {
    if (addOrUpdateCoupon != null) {
      return addOrUpdateCoupon(this);
    }
    return orElse();
  }
}

abstract class _AddOrUpdateCoupon implements CartEvent {
  const factory _AddOrUpdateCoupon() = _$AddOrUpdateCouponImpl;
}

/// @nodoc
mixin _$CartState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function() successAdded,
    required TResult Function() successDeleted,
    required TResult Function() successCleared,
    required TResult Function() successUpdate,
    required TResult Function(String err) failure,
    required TResult Function(String err) failureGetUserCart,
    required TResult Function(String err) failureGetCartDetails,
    required TResult Function(String err) failureGetOftenProductCart,
    required TResult Function(String err) failureClearCart,
    required TResult Function(String err) failureRemoveItem,
    required TResult Function(String err) failureUpdateItem,
    required TResult Function(String err) failureAddCoupon,
    required TResult Function(String err) failureAddItem,
    required TResult Function(String err) failurePreparingTIme,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? success,
    TResult? Function()? successAdded,
    TResult? Function()? successDeleted,
    TResult? Function()? successCleared,
    TResult? Function()? successUpdate,
    TResult? Function(String err)? failure,
    TResult? Function(String err)? failureGetUserCart,
    TResult? Function(String err)? failureGetCartDetails,
    TResult? Function(String err)? failureGetOftenProductCart,
    TResult? Function(String err)? failureClearCart,
    TResult? Function(String err)? failureRemoveItem,
    TResult? Function(String err)? failureUpdateItem,
    TResult? Function(String err)? failureAddCoupon,
    TResult? Function(String err)? failureAddItem,
    TResult? Function(String err)? failurePreparingTIme,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function()? successAdded,
    TResult Function()? successDeleted,
    TResult Function()? successCleared,
    TResult Function()? successUpdate,
    TResult Function(String err)? failure,
    TResult Function(String err)? failureGetUserCart,
    TResult Function(String err)? failureGetCartDetails,
    TResult Function(String err)? failureGetOftenProductCart,
    TResult Function(String err)? failureClearCart,
    TResult Function(String err)? failureRemoveItem,
    TResult Function(String err)? failureUpdateItem,
    TResult Function(String err)? failureAddCoupon,
    TResult Function(String err)? failureAddItem,
    TResult Function(String err)? failurePreparingTIme,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_SuccessAdded value) successAdded,
    required TResult Function(_SuccessDeleted value) successDeleted,
    required TResult Function(_SuccessCleared value) successCleared,
    required TResult Function(_SuccessUpdate value) successUpdate,
    required TResult Function(_Failure value) failure,
    required TResult Function(_FailureGetUserCart value) failureGetUserCart,
    required TResult Function(_FailureGetCartDetails value)
        failureGetCartDetails,
    required TResult Function(_FailureGetOftenProductCart value)
        failureGetOftenProductCart,
    required TResult Function(_FailureClearCart value) failureClearCart,
    required TResult Function(_FailureRemoveItem value) failureRemoveItem,
    required TResult Function(_FailureUpdateItem value) failureUpdateItem,
    required TResult Function(_FailureAddCoupon value) failureAddCoupon,
    required TResult Function(_FailureAddItem value) failureAddItem,
    required TResult Function(_FailurePreparingTIme value) failurePreparingTIme,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_SuccessAdded value)? successAdded,
    TResult? Function(_SuccessDeleted value)? successDeleted,
    TResult? Function(_SuccessCleared value)? successCleared,
    TResult? Function(_SuccessUpdate value)? successUpdate,
    TResult? Function(_Failure value)? failure,
    TResult? Function(_FailureGetUserCart value)? failureGetUserCart,
    TResult? Function(_FailureGetCartDetails value)? failureGetCartDetails,
    TResult? Function(_FailureGetOftenProductCart value)?
        failureGetOftenProductCart,
    TResult? Function(_FailureClearCart value)? failureClearCart,
    TResult? Function(_FailureRemoveItem value)? failureRemoveItem,
    TResult? Function(_FailureUpdateItem value)? failureUpdateItem,
    TResult? Function(_FailureAddCoupon value)? failureAddCoupon,
    TResult? Function(_FailureAddItem value)? failureAddItem,
    TResult? Function(_FailurePreparingTIme value)? failurePreparingTIme,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_SuccessAdded value)? successAdded,
    TResult Function(_SuccessDeleted value)? successDeleted,
    TResult Function(_SuccessCleared value)? successCleared,
    TResult Function(_SuccessUpdate value)? successUpdate,
    TResult Function(_Failure value)? failure,
    TResult Function(_FailureGetUserCart value)? failureGetUserCart,
    TResult Function(_FailureGetCartDetails value)? failureGetCartDetails,
    TResult Function(_FailureGetOftenProductCart value)?
        failureGetOftenProductCart,
    TResult Function(_FailureClearCart value)? failureClearCart,
    TResult Function(_FailureRemoveItem value)? failureRemoveItem,
    TResult Function(_FailureUpdateItem value)? failureUpdateItem,
    TResult Function(_FailureAddCoupon value)? failureAddCoupon,
    TResult Function(_FailureAddItem value)? failureAddItem,
    TResult Function(_FailurePreparingTIme value)? failurePreparingTIme,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CartStateCopyWith<$Res> {
  factory $CartStateCopyWith(CartState value, $Res Function(CartState) then) =
      _$CartStateCopyWithImpl<$Res, CartState>;
}

/// @nodoc
class _$CartStateCopyWithImpl<$Res, $Val extends CartState>
    implements $CartStateCopyWith<$Res> {
  _$CartStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CartState
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
    extends _$CartStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of CartState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'CartState.initial()';
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
    required TResult Function() successDeleted,
    required TResult Function() successCleared,
    required TResult Function() successUpdate,
    required TResult Function(String err) failure,
    required TResult Function(String err) failureGetUserCart,
    required TResult Function(String err) failureGetCartDetails,
    required TResult Function(String err) failureGetOftenProductCart,
    required TResult Function(String err) failureClearCart,
    required TResult Function(String err) failureRemoveItem,
    required TResult Function(String err) failureUpdateItem,
    required TResult Function(String err) failureAddCoupon,
    required TResult Function(String err) failureAddItem,
    required TResult Function(String err) failurePreparingTIme,
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
    TResult? Function()? successDeleted,
    TResult? Function()? successCleared,
    TResult? Function()? successUpdate,
    TResult? Function(String err)? failure,
    TResult? Function(String err)? failureGetUserCart,
    TResult? Function(String err)? failureGetCartDetails,
    TResult? Function(String err)? failureGetOftenProductCart,
    TResult? Function(String err)? failureClearCart,
    TResult? Function(String err)? failureRemoveItem,
    TResult? Function(String err)? failureUpdateItem,
    TResult? Function(String err)? failureAddCoupon,
    TResult? Function(String err)? failureAddItem,
    TResult? Function(String err)? failurePreparingTIme,
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
    TResult Function()? successDeleted,
    TResult Function()? successCleared,
    TResult Function()? successUpdate,
    TResult Function(String err)? failure,
    TResult Function(String err)? failureGetUserCart,
    TResult Function(String err)? failureGetCartDetails,
    TResult Function(String err)? failureGetOftenProductCart,
    TResult Function(String err)? failureClearCart,
    TResult Function(String err)? failureRemoveItem,
    TResult Function(String err)? failureUpdateItem,
    TResult Function(String err)? failureAddCoupon,
    TResult Function(String err)? failureAddItem,
    TResult Function(String err)? failurePreparingTIme,
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
    required TResult Function(_SuccessDeleted value) successDeleted,
    required TResult Function(_SuccessCleared value) successCleared,
    required TResult Function(_SuccessUpdate value) successUpdate,
    required TResult Function(_Failure value) failure,
    required TResult Function(_FailureGetUserCart value) failureGetUserCart,
    required TResult Function(_FailureGetCartDetails value)
        failureGetCartDetails,
    required TResult Function(_FailureGetOftenProductCart value)
        failureGetOftenProductCart,
    required TResult Function(_FailureClearCart value) failureClearCart,
    required TResult Function(_FailureRemoveItem value) failureRemoveItem,
    required TResult Function(_FailureUpdateItem value) failureUpdateItem,
    required TResult Function(_FailureAddCoupon value) failureAddCoupon,
    required TResult Function(_FailureAddItem value) failureAddItem,
    required TResult Function(_FailurePreparingTIme value) failurePreparingTIme,
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
    TResult? Function(_SuccessDeleted value)? successDeleted,
    TResult? Function(_SuccessCleared value)? successCleared,
    TResult? Function(_SuccessUpdate value)? successUpdate,
    TResult? Function(_Failure value)? failure,
    TResult? Function(_FailureGetUserCart value)? failureGetUserCart,
    TResult? Function(_FailureGetCartDetails value)? failureGetCartDetails,
    TResult? Function(_FailureGetOftenProductCart value)?
        failureGetOftenProductCart,
    TResult? Function(_FailureClearCart value)? failureClearCart,
    TResult? Function(_FailureRemoveItem value)? failureRemoveItem,
    TResult? Function(_FailureUpdateItem value)? failureUpdateItem,
    TResult? Function(_FailureAddCoupon value)? failureAddCoupon,
    TResult? Function(_FailureAddItem value)? failureAddItem,
    TResult? Function(_FailurePreparingTIme value)? failurePreparingTIme,
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
    TResult Function(_SuccessDeleted value)? successDeleted,
    TResult Function(_SuccessCleared value)? successCleared,
    TResult Function(_SuccessUpdate value)? successUpdate,
    TResult Function(_Failure value)? failure,
    TResult Function(_FailureGetUserCart value)? failureGetUserCart,
    TResult Function(_FailureGetCartDetails value)? failureGetCartDetails,
    TResult Function(_FailureGetOftenProductCart value)?
        failureGetOftenProductCart,
    TResult Function(_FailureClearCart value)? failureClearCart,
    TResult Function(_FailureRemoveItem value)? failureRemoveItem,
    TResult Function(_FailureUpdateItem value)? failureUpdateItem,
    TResult Function(_FailureAddCoupon value)? failureAddCoupon,
    TResult Function(_FailureAddItem value)? failureAddItem,
    TResult Function(_FailurePreparingTIme value)? failurePreparingTIme,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements CartState {
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
    extends _$CartStateCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
      _$LoadingImpl _value, $Res Function(_$LoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of CartState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadingImpl implements _Loading {
  const _$LoadingImpl();

  @override
  String toString() {
    return 'CartState.loading()';
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
    required TResult Function() successDeleted,
    required TResult Function() successCleared,
    required TResult Function() successUpdate,
    required TResult Function(String err) failure,
    required TResult Function(String err) failureGetUserCart,
    required TResult Function(String err) failureGetCartDetails,
    required TResult Function(String err) failureGetOftenProductCart,
    required TResult Function(String err) failureClearCart,
    required TResult Function(String err) failureRemoveItem,
    required TResult Function(String err) failureUpdateItem,
    required TResult Function(String err) failureAddCoupon,
    required TResult Function(String err) failureAddItem,
    required TResult Function(String err) failurePreparingTIme,
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
    TResult? Function()? successDeleted,
    TResult? Function()? successCleared,
    TResult? Function()? successUpdate,
    TResult? Function(String err)? failure,
    TResult? Function(String err)? failureGetUserCart,
    TResult? Function(String err)? failureGetCartDetails,
    TResult? Function(String err)? failureGetOftenProductCart,
    TResult? Function(String err)? failureClearCart,
    TResult? Function(String err)? failureRemoveItem,
    TResult? Function(String err)? failureUpdateItem,
    TResult? Function(String err)? failureAddCoupon,
    TResult? Function(String err)? failureAddItem,
    TResult? Function(String err)? failurePreparingTIme,
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
    TResult Function()? successDeleted,
    TResult Function()? successCleared,
    TResult Function()? successUpdate,
    TResult Function(String err)? failure,
    TResult Function(String err)? failureGetUserCart,
    TResult Function(String err)? failureGetCartDetails,
    TResult Function(String err)? failureGetOftenProductCart,
    TResult Function(String err)? failureClearCart,
    TResult Function(String err)? failureRemoveItem,
    TResult Function(String err)? failureUpdateItem,
    TResult Function(String err)? failureAddCoupon,
    TResult Function(String err)? failureAddItem,
    TResult Function(String err)? failurePreparingTIme,
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
    required TResult Function(_SuccessDeleted value) successDeleted,
    required TResult Function(_SuccessCleared value) successCleared,
    required TResult Function(_SuccessUpdate value) successUpdate,
    required TResult Function(_Failure value) failure,
    required TResult Function(_FailureGetUserCart value) failureGetUserCart,
    required TResult Function(_FailureGetCartDetails value)
        failureGetCartDetails,
    required TResult Function(_FailureGetOftenProductCart value)
        failureGetOftenProductCart,
    required TResult Function(_FailureClearCart value) failureClearCart,
    required TResult Function(_FailureRemoveItem value) failureRemoveItem,
    required TResult Function(_FailureUpdateItem value) failureUpdateItem,
    required TResult Function(_FailureAddCoupon value) failureAddCoupon,
    required TResult Function(_FailureAddItem value) failureAddItem,
    required TResult Function(_FailurePreparingTIme value) failurePreparingTIme,
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
    TResult? Function(_SuccessDeleted value)? successDeleted,
    TResult? Function(_SuccessCleared value)? successCleared,
    TResult? Function(_SuccessUpdate value)? successUpdate,
    TResult? Function(_Failure value)? failure,
    TResult? Function(_FailureGetUserCart value)? failureGetUserCart,
    TResult? Function(_FailureGetCartDetails value)? failureGetCartDetails,
    TResult? Function(_FailureGetOftenProductCart value)?
        failureGetOftenProductCart,
    TResult? Function(_FailureClearCart value)? failureClearCart,
    TResult? Function(_FailureRemoveItem value)? failureRemoveItem,
    TResult? Function(_FailureUpdateItem value)? failureUpdateItem,
    TResult? Function(_FailureAddCoupon value)? failureAddCoupon,
    TResult? Function(_FailureAddItem value)? failureAddItem,
    TResult? Function(_FailurePreparingTIme value)? failurePreparingTIme,
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
    TResult Function(_SuccessDeleted value)? successDeleted,
    TResult Function(_SuccessCleared value)? successCleared,
    TResult Function(_SuccessUpdate value)? successUpdate,
    TResult Function(_Failure value)? failure,
    TResult Function(_FailureGetUserCart value)? failureGetUserCart,
    TResult Function(_FailureGetCartDetails value)? failureGetCartDetails,
    TResult Function(_FailureGetOftenProductCart value)?
        failureGetOftenProductCart,
    TResult Function(_FailureClearCart value)? failureClearCart,
    TResult Function(_FailureRemoveItem value)? failureRemoveItem,
    TResult Function(_FailureUpdateItem value)? failureUpdateItem,
    TResult Function(_FailureAddCoupon value)? failureAddCoupon,
    TResult Function(_FailureAddItem value)? failureAddItem,
    TResult Function(_FailurePreparingTIme value)? failurePreparingTIme,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements CartState {
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
    extends _$CartStateCopyWithImpl<$Res, _$SuccessImpl>
    implements _$$SuccessImplCopyWith<$Res> {
  __$$SuccessImplCopyWithImpl(
      _$SuccessImpl _value, $Res Function(_$SuccessImpl) _then)
      : super(_value, _then);

  /// Create a copy of CartState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$SuccessImpl implements _Success {
  const _$SuccessImpl();

  @override
  String toString() {
    return 'CartState.success()';
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
    required TResult Function() successDeleted,
    required TResult Function() successCleared,
    required TResult Function() successUpdate,
    required TResult Function(String err) failure,
    required TResult Function(String err) failureGetUserCart,
    required TResult Function(String err) failureGetCartDetails,
    required TResult Function(String err) failureGetOftenProductCart,
    required TResult Function(String err) failureClearCart,
    required TResult Function(String err) failureRemoveItem,
    required TResult Function(String err) failureUpdateItem,
    required TResult Function(String err) failureAddCoupon,
    required TResult Function(String err) failureAddItem,
    required TResult Function(String err) failurePreparingTIme,
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
    TResult? Function()? successDeleted,
    TResult? Function()? successCleared,
    TResult? Function()? successUpdate,
    TResult? Function(String err)? failure,
    TResult? Function(String err)? failureGetUserCart,
    TResult? Function(String err)? failureGetCartDetails,
    TResult? Function(String err)? failureGetOftenProductCart,
    TResult? Function(String err)? failureClearCart,
    TResult? Function(String err)? failureRemoveItem,
    TResult? Function(String err)? failureUpdateItem,
    TResult? Function(String err)? failureAddCoupon,
    TResult? Function(String err)? failureAddItem,
    TResult? Function(String err)? failurePreparingTIme,
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
    TResult Function()? successDeleted,
    TResult Function()? successCleared,
    TResult Function()? successUpdate,
    TResult Function(String err)? failure,
    TResult Function(String err)? failureGetUserCart,
    TResult Function(String err)? failureGetCartDetails,
    TResult Function(String err)? failureGetOftenProductCart,
    TResult Function(String err)? failureClearCart,
    TResult Function(String err)? failureRemoveItem,
    TResult Function(String err)? failureUpdateItem,
    TResult Function(String err)? failureAddCoupon,
    TResult Function(String err)? failureAddItem,
    TResult Function(String err)? failurePreparingTIme,
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
    required TResult Function(_SuccessDeleted value) successDeleted,
    required TResult Function(_SuccessCleared value) successCleared,
    required TResult Function(_SuccessUpdate value) successUpdate,
    required TResult Function(_Failure value) failure,
    required TResult Function(_FailureGetUserCart value) failureGetUserCart,
    required TResult Function(_FailureGetCartDetails value)
        failureGetCartDetails,
    required TResult Function(_FailureGetOftenProductCart value)
        failureGetOftenProductCart,
    required TResult Function(_FailureClearCart value) failureClearCart,
    required TResult Function(_FailureRemoveItem value) failureRemoveItem,
    required TResult Function(_FailureUpdateItem value) failureUpdateItem,
    required TResult Function(_FailureAddCoupon value) failureAddCoupon,
    required TResult Function(_FailureAddItem value) failureAddItem,
    required TResult Function(_FailurePreparingTIme value) failurePreparingTIme,
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
    TResult? Function(_SuccessDeleted value)? successDeleted,
    TResult? Function(_SuccessCleared value)? successCleared,
    TResult? Function(_SuccessUpdate value)? successUpdate,
    TResult? Function(_Failure value)? failure,
    TResult? Function(_FailureGetUserCart value)? failureGetUserCart,
    TResult? Function(_FailureGetCartDetails value)? failureGetCartDetails,
    TResult? Function(_FailureGetOftenProductCart value)?
        failureGetOftenProductCart,
    TResult? Function(_FailureClearCart value)? failureClearCart,
    TResult? Function(_FailureRemoveItem value)? failureRemoveItem,
    TResult? Function(_FailureUpdateItem value)? failureUpdateItem,
    TResult? Function(_FailureAddCoupon value)? failureAddCoupon,
    TResult? Function(_FailureAddItem value)? failureAddItem,
    TResult? Function(_FailurePreparingTIme value)? failurePreparingTIme,
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
    TResult Function(_SuccessDeleted value)? successDeleted,
    TResult Function(_SuccessCleared value)? successCleared,
    TResult Function(_SuccessUpdate value)? successUpdate,
    TResult Function(_Failure value)? failure,
    TResult Function(_FailureGetUserCart value)? failureGetUserCart,
    TResult Function(_FailureGetCartDetails value)? failureGetCartDetails,
    TResult Function(_FailureGetOftenProductCart value)?
        failureGetOftenProductCart,
    TResult Function(_FailureClearCart value)? failureClearCart,
    TResult Function(_FailureRemoveItem value)? failureRemoveItem,
    TResult Function(_FailureUpdateItem value)? failureUpdateItem,
    TResult Function(_FailureAddCoupon value)? failureAddCoupon,
    TResult Function(_FailureAddItem value)? failureAddItem,
    TResult Function(_FailurePreparingTIme value)? failurePreparingTIme,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _Success implements CartState {
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
    extends _$CartStateCopyWithImpl<$Res, _$SuccessAddedImpl>
    implements _$$SuccessAddedImplCopyWith<$Res> {
  __$$SuccessAddedImplCopyWithImpl(
      _$SuccessAddedImpl _value, $Res Function(_$SuccessAddedImpl) _then)
      : super(_value, _then);

  /// Create a copy of CartState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$SuccessAddedImpl implements _SuccessAdded {
  const _$SuccessAddedImpl();

  @override
  String toString() {
    return 'CartState.successAdded()';
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
    required TResult Function() successDeleted,
    required TResult Function() successCleared,
    required TResult Function() successUpdate,
    required TResult Function(String err) failure,
    required TResult Function(String err) failureGetUserCart,
    required TResult Function(String err) failureGetCartDetails,
    required TResult Function(String err) failureGetOftenProductCart,
    required TResult Function(String err) failureClearCart,
    required TResult Function(String err) failureRemoveItem,
    required TResult Function(String err) failureUpdateItem,
    required TResult Function(String err) failureAddCoupon,
    required TResult Function(String err) failureAddItem,
    required TResult Function(String err) failurePreparingTIme,
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
    TResult? Function()? successDeleted,
    TResult? Function()? successCleared,
    TResult? Function()? successUpdate,
    TResult? Function(String err)? failure,
    TResult? Function(String err)? failureGetUserCart,
    TResult? Function(String err)? failureGetCartDetails,
    TResult? Function(String err)? failureGetOftenProductCart,
    TResult? Function(String err)? failureClearCart,
    TResult? Function(String err)? failureRemoveItem,
    TResult? Function(String err)? failureUpdateItem,
    TResult? Function(String err)? failureAddCoupon,
    TResult? Function(String err)? failureAddItem,
    TResult? Function(String err)? failurePreparingTIme,
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
    TResult Function()? successDeleted,
    TResult Function()? successCleared,
    TResult Function()? successUpdate,
    TResult Function(String err)? failure,
    TResult Function(String err)? failureGetUserCart,
    TResult Function(String err)? failureGetCartDetails,
    TResult Function(String err)? failureGetOftenProductCart,
    TResult Function(String err)? failureClearCart,
    TResult Function(String err)? failureRemoveItem,
    TResult Function(String err)? failureUpdateItem,
    TResult Function(String err)? failureAddCoupon,
    TResult Function(String err)? failureAddItem,
    TResult Function(String err)? failurePreparingTIme,
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
    required TResult Function(_SuccessDeleted value) successDeleted,
    required TResult Function(_SuccessCleared value) successCleared,
    required TResult Function(_SuccessUpdate value) successUpdate,
    required TResult Function(_Failure value) failure,
    required TResult Function(_FailureGetUserCart value) failureGetUserCart,
    required TResult Function(_FailureGetCartDetails value)
        failureGetCartDetails,
    required TResult Function(_FailureGetOftenProductCart value)
        failureGetOftenProductCart,
    required TResult Function(_FailureClearCart value) failureClearCart,
    required TResult Function(_FailureRemoveItem value) failureRemoveItem,
    required TResult Function(_FailureUpdateItem value) failureUpdateItem,
    required TResult Function(_FailureAddCoupon value) failureAddCoupon,
    required TResult Function(_FailureAddItem value) failureAddItem,
    required TResult Function(_FailurePreparingTIme value) failurePreparingTIme,
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
    TResult? Function(_SuccessDeleted value)? successDeleted,
    TResult? Function(_SuccessCleared value)? successCleared,
    TResult? Function(_SuccessUpdate value)? successUpdate,
    TResult? Function(_Failure value)? failure,
    TResult? Function(_FailureGetUserCart value)? failureGetUserCart,
    TResult? Function(_FailureGetCartDetails value)? failureGetCartDetails,
    TResult? Function(_FailureGetOftenProductCart value)?
        failureGetOftenProductCart,
    TResult? Function(_FailureClearCart value)? failureClearCart,
    TResult? Function(_FailureRemoveItem value)? failureRemoveItem,
    TResult? Function(_FailureUpdateItem value)? failureUpdateItem,
    TResult? Function(_FailureAddCoupon value)? failureAddCoupon,
    TResult? Function(_FailureAddItem value)? failureAddItem,
    TResult? Function(_FailurePreparingTIme value)? failurePreparingTIme,
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
    TResult Function(_SuccessDeleted value)? successDeleted,
    TResult Function(_SuccessCleared value)? successCleared,
    TResult Function(_SuccessUpdate value)? successUpdate,
    TResult Function(_Failure value)? failure,
    TResult Function(_FailureGetUserCart value)? failureGetUserCart,
    TResult Function(_FailureGetCartDetails value)? failureGetCartDetails,
    TResult Function(_FailureGetOftenProductCart value)?
        failureGetOftenProductCart,
    TResult Function(_FailureClearCart value)? failureClearCart,
    TResult Function(_FailureRemoveItem value)? failureRemoveItem,
    TResult Function(_FailureUpdateItem value)? failureUpdateItem,
    TResult Function(_FailureAddCoupon value)? failureAddCoupon,
    TResult Function(_FailureAddItem value)? failureAddItem,
    TResult Function(_FailurePreparingTIme value)? failurePreparingTIme,
    required TResult orElse(),
  }) {
    if (successAdded != null) {
      return successAdded(this);
    }
    return orElse();
  }
}

abstract class _SuccessAdded implements CartState {
  const factory _SuccessAdded() = _$SuccessAddedImpl;
}

/// @nodoc
abstract class _$$SuccessDeletedImplCopyWith<$Res> {
  factory _$$SuccessDeletedImplCopyWith(_$SuccessDeletedImpl value,
          $Res Function(_$SuccessDeletedImpl) then) =
      __$$SuccessDeletedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SuccessDeletedImplCopyWithImpl<$Res>
    extends _$CartStateCopyWithImpl<$Res, _$SuccessDeletedImpl>
    implements _$$SuccessDeletedImplCopyWith<$Res> {
  __$$SuccessDeletedImplCopyWithImpl(
      _$SuccessDeletedImpl _value, $Res Function(_$SuccessDeletedImpl) _then)
      : super(_value, _then);

  /// Create a copy of CartState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$SuccessDeletedImpl implements _SuccessDeleted {
  const _$SuccessDeletedImpl();

  @override
  String toString() {
    return 'CartState.successDeleted()';
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
    required TResult Function() successDeleted,
    required TResult Function() successCleared,
    required TResult Function() successUpdate,
    required TResult Function(String err) failure,
    required TResult Function(String err) failureGetUserCart,
    required TResult Function(String err) failureGetCartDetails,
    required TResult Function(String err) failureGetOftenProductCart,
    required TResult Function(String err) failureClearCart,
    required TResult Function(String err) failureRemoveItem,
    required TResult Function(String err) failureUpdateItem,
    required TResult Function(String err) failureAddCoupon,
    required TResult Function(String err) failureAddItem,
    required TResult Function(String err) failurePreparingTIme,
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
    TResult? Function()? successDeleted,
    TResult? Function()? successCleared,
    TResult? Function()? successUpdate,
    TResult? Function(String err)? failure,
    TResult? Function(String err)? failureGetUserCart,
    TResult? Function(String err)? failureGetCartDetails,
    TResult? Function(String err)? failureGetOftenProductCart,
    TResult? Function(String err)? failureClearCart,
    TResult? Function(String err)? failureRemoveItem,
    TResult? Function(String err)? failureUpdateItem,
    TResult? Function(String err)? failureAddCoupon,
    TResult? Function(String err)? failureAddItem,
    TResult? Function(String err)? failurePreparingTIme,
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
    TResult Function()? successDeleted,
    TResult Function()? successCleared,
    TResult Function()? successUpdate,
    TResult Function(String err)? failure,
    TResult Function(String err)? failureGetUserCart,
    TResult Function(String err)? failureGetCartDetails,
    TResult Function(String err)? failureGetOftenProductCart,
    TResult Function(String err)? failureClearCart,
    TResult Function(String err)? failureRemoveItem,
    TResult Function(String err)? failureUpdateItem,
    TResult Function(String err)? failureAddCoupon,
    TResult Function(String err)? failureAddItem,
    TResult Function(String err)? failurePreparingTIme,
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
    required TResult Function(_SuccessDeleted value) successDeleted,
    required TResult Function(_SuccessCleared value) successCleared,
    required TResult Function(_SuccessUpdate value) successUpdate,
    required TResult Function(_Failure value) failure,
    required TResult Function(_FailureGetUserCart value) failureGetUserCart,
    required TResult Function(_FailureGetCartDetails value)
        failureGetCartDetails,
    required TResult Function(_FailureGetOftenProductCart value)
        failureGetOftenProductCart,
    required TResult Function(_FailureClearCart value) failureClearCart,
    required TResult Function(_FailureRemoveItem value) failureRemoveItem,
    required TResult Function(_FailureUpdateItem value) failureUpdateItem,
    required TResult Function(_FailureAddCoupon value) failureAddCoupon,
    required TResult Function(_FailureAddItem value) failureAddItem,
    required TResult Function(_FailurePreparingTIme value) failurePreparingTIme,
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
    TResult? Function(_SuccessDeleted value)? successDeleted,
    TResult? Function(_SuccessCleared value)? successCleared,
    TResult? Function(_SuccessUpdate value)? successUpdate,
    TResult? Function(_Failure value)? failure,
    TResult? Function(_FailureGetUserCart value)? failureGetUserCart,
    TResult? Function(_FailureGetCartDetails value)? failureGetCartDetails,
    TResult? Function(_FailureGetOftenProductCart value)?
        failureGetOftenProductCart,
    TResult? Function(_FailureClearCart value)? failureClearCart,
    TResult? Function(_FailureRemoveItem value)? failureRemoveItem,
    TResult? Function(_FailureUpdateItem value)? failureUpdateItem,
    TResult? Function(_FailureAddCoupon value)? failureAddCoupon,
    TResult? Function(_FailureAddItem value)? failureAddItem,
    TResult? Function(_FailurePreparingTIme value)? failurePreparingTIme,
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
    TResult Function(_SuccessDeleted value)? successDeleted,
    TResult Function(_SuccessCleared value)? successCleared,
    TResult Function(_SuccessUpdate value)? successUpdate,
    TResult Function(_Failure value)? failure,
    TResult Function(_FailureGetUserCart value)? failureGetUserCart,
    TResult Function(_FailureGetCartDetails value)? failureGetCartDetails,
    TResult Function(_FailureGetOftenProductCart value)?
        failureGetOftenProductCart,
    TResult Function(_FailureClearCart value)? failureClearCart,
    TResult Function(_FailureRemoveItem value)? failureRemoveItem,
    TResult Function(_FailureUpdateItem value)? failureUpdateItem,
    TResult Function(_FailureAddCoupon value)? failureAddCoupon,
    TResult Function(_FailureAddItem value)? failureAddItem,
    TResult Function(_FailurePreparingTIme value)? failurePreparingTIme,
    required TResult orElse(),
  }) {
    if (successDeleted != null) {
      return successDeleted(this);
    }
    return orElse();
  }
}

abstract class _SuccessDeleted implements CartState {
  const factory _SuccessDeleted() = _$SuccessDeletedImpl;
}

/// @nodoc
abstract class _$$SuccessClearedImplCopyWith<$Res> {
  factory _$$SuccessClearedImplCopyWith(_$SuccessClearedImpl value,
          $Res Function(_$SuccessClearedImpl) then) =
      __$$SuccessClearedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SuccessClearedImplCopyWithImpl<$Res>
    extends _$CartStateCopyWithImpl<$Res, _$SuccessClearedImpl>
    implements _$$SuccessClearedImplCopyWith<$Res> {
  __$$SuccessClearedImplCopyWithImpl(
      _$SuccessClearedImpl _value, $Res Function(_$SuccessClearedImpl) _then)
      : super(_value, _then);

  /// Create a copy of CartState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$SuccessClearedImpl implements _SuccessCleared {
  const _$SuccessClearedImpl();

  @override
  String toString() {
    return 'CartState.successCleared()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SuccessClearedImpl);
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
    required TResult Function() successDeleted,
    required TResult Function() successCleared,
    required TResult Function() successUpdate,
    required TResult Function(String err) failure,
    required TResult Function(String err) failureGetUserCart,
    required TResult Function(String err) failureGetCartDetails,
    required TResult Function(String err) failureGetOftenProductCart,
    required TResult Function(String err) failureClearCart,
    required TResult Function(String err) failureRemoveItem,
    required TResult Function(String err) failureUpdateItem,
    required TResult Function(String err) failureAddCoupon,
    required TResult Function(String err) failureAddItem,
    required TResult Function(String err) failurePreparingTIme,
  }) {
    return successCleared();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? success,
    TResult? Function()? successAdded,
    TResult? Function()? successDeleted,
    TResult? Function()? successCleared,
    TResult? Function()? successUpdate,
    TResult? Function(String err)? failure,
    TResult? Function(String err)? failureGetUserCart,
    TResult? Function(String err)? failureGetCartDetails,
    TResult? Function(String err)? failureGetOftenProductCart,
    TResult? Function(String err)? failureClearCart,
    TResult? Function(String err)? failureRemoveItem,
    TResult? Function(String err)? failureUpdateItem,
    TResult? Function(String err)? failureAddCoupon,
    TResult? Function(String err)? failureAddItem,
    TResult? Function(String err)? failurePreparingTIme,
  }) {
    return successCleared?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function()? successAdded,
    TResult Function()? successDeleted,
    TResult Function()? successCleared,
    TResult Function()? successUpdate,
    TResult Function(String err)? failure,
    TResult Function(String err)? failureGetUserCart,
    TResult Function(String err)? failureGetCartDetails,
    TResult Function(String err)? failureGetOftenProductCart,
    TResult Function(String err)? failureClearCart,
    TResult Function(String err)? failureRemoveItem,
    TResult Function(String err)? failureUpdateItem,
    TResult Function(String err)? failureAddCoupon,
    TResult Function(String err)? failureAddItem,
    TResult Function(String err)? failurePreparingTIme,
    required TResult orElse(),
  }) {
    if (successCleared != null) {
      return successCleared();
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
    required TResult Function(_SuccessDeleted value) successDeleted,
    required TResult Function(_SuccessCleared value) successCleared,
    required TResult Function(_SuccessUpdate value) successUpdate,
    required TResult Function(_Failure value) failure,
    required TResult Function(_FailureGetUserCart value) failureGetUserCart,
    required TResult Function(_FailureGetCartDetails value)
        failureGetCartDetails,
    required TResult Function(_FailureGetOftenProductCart value)
        failureGetOftenProductCart,
    required TResult Function(_FailureClearCart value) failureClearCart,
    required TResult Function(_FailureRemoveItem value) failureRemoveItem,
    required TResult Function(_FailureUpdateItem value) failureUpdateItem,
    required TResult Function(_FailureAddCoupon value) failureAddCoupon,
    required TResult Function(_FailureAddItem value) failureAddItem,
    required TResult Function(_FailurePreparingTIme value) failurePreparingTIme,
  }) {
    return successCleared(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_SuccessAdded value)? successAdded,
    TResult? Function(_SuccessDeleted value)? successDeleted,
    TResult? Function(_SuccessCleared value)? successCleared,
    TResult? Function(_SuccessUpdate value)? successUpdate,
    TResult? Function(_Failure value)? failure,
    TResult? Function(_FailureGetUserCart value)? failureGetUserCart,
    TResult? Function(_FailureGetCartDetails value)? failureGetCartDetails,
    TResult? Function(_FailureGetOftenProductCart value)?
        failureGetOftenProductCart,
    TResult? Function(_FailureClearCart value)? failureClearCart,
    TResult? Function(_FailureRemoveItem value)? failureRemoveItem,
    TResult? Function(_FailureUpdateItem value)? failureUpdateItem,
    TResult? Function(_FailureAddCoupon value)? failureAddCoupon,
    TResult? Function(_FailureAddItem value)? failureAddItem,
    TResult? Function(_FailurePreparingTIme value)? failurePreparingTIme,
  }) {
    return successCleared?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_SuccessAdded value)? successAdded,
    TResult Function(_SuccessDeleted value)? successDeleted,
    TResult Function(_SuccessCleared value)? successCleared,
    TResult Function(_SuccessUpdate value)? successUpdate,
    TResult Function(_Failure value)? failure,
    TResult Function(_FailureGetUserCart value)? failureGetUserCart,
    TResult Function(_FailureGetCartDetails value)? failureGetCartDetails,
    TResult Function(_FailureGetOftenProductCart value)?
        failureGetOftenProductCart,
    TResult Function(_FailureClearCart value)? failureClearCart,
    TResult Function(_FailureRemoveItem value)? failureRemoveItem,
    TResult Function(_FailureUpdateItem value)? failureUpdateItem,
    TResult Function(_FailureAddCoupon value)? failureAddCoupon,
    TResult Function(_FailureAddItem value)? failureAddItem,
    TResult Function(_FailurePreparingTIme value)? failurePreparingTIme,
    required TResult orElse(),
  }) {
    if (successCleared != null) {
      return successCleared(this);
    }
    return orElse();
  }
}

abstract class _SuccessCleared implements CartState {
  const factory _SuccessCleared() = _$SuccessClearedImpl;
}

/// @nodoc
abstract class _$$SuccessUpdateImplCopyWith<$Res> {
  factory _$$SuccessUpdateImplCopyWith(
          _$SuccessUpdateImpl value, $Res Function(_$SuccessUpdateImpl) then) =
      __$$SuccessUpdateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SuccessUpdateImplCopyWithImpl<$Res>
    extends _$CartStateCopyWithImpl<$Res, _$SuccessUpdateImpl>
    implements _$$SuccessUpdateImplCopyWith<$Res> {
  __$$SuccessUpdateImplCopyWithImpl(
      _$SuccessUpdateImpl _value, $Res Function(_$SuccessUpdateImpl) _then)
      : super(_value, _then);

  /// Create a copy of CartState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$SuccessUpdateImpl implements _SuccessUpdate {
  const _$SuccessUpdateImpl();

  @override
  String toString() {
    return 'CartState.successUpdate()';
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
    required TResult Function() successDeleted,
    required TResult Function() successCleared,
    required TResult Function() successUpdate,
    required TResult Function(String err) failure,
    required TResult Function(String err) failureGetUserCart,
    required TResult Function(String err) failureGetCartDetails,
    required TResult Function(String err) failureGetOftenProductCart,
    required TResult Function(String err) failureClearCart,
    required TResult Function(String err) failureRemoveItem,
    required TResult Function(String err) failureUpdateItem,
    required TResult Function(String err) failureAddCoupon,
    required TResult Function(String err) failureAddItem,
    required TResult Function(String err) failurePreparingTIme,
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
    TResult? Function()? successDeleted,
    TResult? Function()? successCleared,
    TResult? Function()? successUpdate,
    TResult? Function(String err)? failure,
    TResult? Function(String err)? failureGetUserCart,
    TResult? Function(String err)? failureGetCartDetails,
    TResult? Function(String err)? failureGetOftenProductCart,
    TResult? Function(String err)? failureClearCart,
    TResult? Function(String err)? failureRemoveItem,
    TResult? Function(String err)? failureUpdateItem,
    TResult? Function(String err)? failureAddCoupon,
    TResult? Function(String err)? failureAddItem,
    TResult? Function(String err)? failurePreparingTIme,
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
    TResult Function()? successDeleted,
    TResult Function()? successCleared,
    TResult Function()? successUpdate,
    TResult Function(String err)? failure,
    TResult Function(String err)? failureGetUserCart,
    TResult Function(String err)? failureGetCartDetails,
    TResult Function(String err)? failureGetOftenProductCart,
    TResult Function(String err)? failureClearCart,
    TResult Function(String err)? failureRemoveItem,
    TResult Function(String err)? failureUpdateItem,
    TResult Function(String err)? failureAddCoupon,
    TResult Function(String err)? failureAddItem,
    TResult Function(String err)? failurePreparingTIme,
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
    required TResult Function(_SuccessDeleted value) successDeleted,
    required TResult Function(_SuccessCleared value) successCleared,
    required TResult Function(_SuccessUpdate value) successUpdate,
    required TResult Function(_Failure value) failure,
    required TResult Function(_FailureGetUserCart value) failureGetUserCart,
    required TResult Function(_FailureGetCartDetails value)
        failureGetCartDetails,
    required TResult Function(_FailureGetOftenProductCart value)
        failureGetOftenProductCart,
    required TResult Function(_FailureClearCart value) failureClearCart,
    required TResult Function(_FailureRemoveItem value) failureRemoveItem,
    required TResult Function(_FailureUpdateItem value) failureUpdateItem,
    required TResult Function(_FailureAddCoupon value) failureAddCoupon,
    required TResult Function(_FailureAddItem value) failureAddItem,
    required TResult Function(_FailurePreparingTIme value) failurePreparingTIme,
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
    TResult? Function(_SuccessDeleted value)? successDeleted,
    TResult? Function(_SuccessCleared value)? successCleared,
    TResult? Function(_SuccessUpdate value)? successUpdate,
    TResult? Function(_Failure value)? failure,
    TResult? Function(_FailureGetUserCart value)? failureGetUserCart,
    TResult? Function(_FailureGetCartDetails value)? failureGetCartDetails,
    TResult? Function(_FailureGetOftenProductCart value)?
        failureGetOftenProductCart,
    TResult? Function(_FailureClearCart value)? failureClearCart,
    TResult? Function(_FailureRemoveItem value)? failureRemoveItem,
    TResult? Function(_FailureUpdateItem value)? failureUpdateItem,
    TResult? Function(_FailureAddCoupon value)? failureAddCoupon,
    TResult? Function(_FailureAddItem value)? failureAddItem,
    TResult? Function(_FailurePreparingTIme value)? failurePreparingTIme,
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
    TResult Function(_SuccessDeleted value)? successDeleted,
    TResult Function(_SuccessCleared value)? successCleared,
    TResult Function(_SuccessUpdate value)? successUpdate,
    TResult Function(_Failure value)? failure,
    TResult Function(_FailureGetUserCart value)? failureGetUserCart,
    TResult Function(_FailureGetCartDetails value)? failureGetCartDetails,
    TResult Function(_FailureGetOftenProductCart value)?
        failureGetOftenProductCart,
    TResult Function(_FailureClearCart value)? failureClearCart,
    TResult Function(_FailureRemoveItem value)? failureRemoveItem,
    TResult Function(_FailureUpdateItem value)? failureUpdateItem,
    TResult Function(_FailureAddCoupon value)? failureAddCoupon,
    TResult Function(_FailureAddItem value)? failureAddItem,
    TResult Function(_FailurePreparingTIme value)? failurePreparingTIme,
    required TResult orElse(),
  }) {
    if (successUpdate != null) {
      return successUpdate(this);
    }
    return orElse();
  }
}

abstract class _SuccessUpdate implements CartState {
  const factory _SuccessUpdate() = _$SuccessUpdateImpl;
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
    extends _$CartStateCopyWithImpl<$Res, _$FailureImpl>
    implements _$$FailureImplCopyWith<$Res> {
  __$$FailureImplCopyWithImpl(
      _$FailureImpl _value, $Res Function(_$FailureImpl) _then)
      : super(_value, _then);

  /// Create a copy of CartState
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
    return 'CartState.failure(err: $err)';
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

  /// Create a copy of CartState
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
    required TResult Function() successDeleted,
    required TResult Function() successCleared,
    required TResult Function() successUpdate,
    required TResult Function(String err) failure,
    required TResult Function(String err) failureGetUserCart,
    required TResult Function(String err) failureGetCartDetails,
    required TResult Function(String err) failureGetOftenProductCart,
    required TResult Function(String err) failureClearCart,
    required TResult Function(String err) failureRemoveItem,
    required TResult Function(String err) failureUpdateItem,
    required TResult Function(String err) failureAddCoupon,
    required TResult Function(String err) failureAddItem,
    required TResult Function(String err) failurePreparingTIme,
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
    TResult? Function()? successDeleted,
    TResult? Function()? successCleared,
    TResult? Function()? successUpdate,
    TResult? Function(String err)? failure,
    TResult? Function(String err)? failureGetUserCart,
    TResult? Function(String err)? failureGetCartDetails,
    TResult? Function(String err)? failureGetOftenProductCart,
    TResult? Function(String err)? failureClearCart,
    TResult? Function(String err)? failureRemoveItem,
    TResult? Function(String err)? failureUpdateItem,
    TResult? Function(String err)? failureAddCoupon,
    TResult? Function(String err)? failureAddItem,
    TResult? Function(String err)? failurePreparingTIme,
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
    TResult Function()? successDeleted,
    TResult Function()? successCleared,
    TResult Function()? successUpdate,
    TResult Function(String err)? failure,
    TResult Function(String err)? failureGetUserCart,
    TResult Function(String err)? failureGetCartDetails,
    TResult Function(String err)? failureGetOftenProductCart,
    TResult Function(String err)? failureClearCart,
    TResult Function(String err)? failureRemoveItem,
    TResult Function(String err)? failureUpdateItem,
    TResult Function(String err)? failureAddCoupon,
    TResult Function(String err)? failureAddItem,
    TResult Function(String err)? failurePreparingTIme,
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
    required TResult Function(_SuccessDeleted value) successDeleted,
    required TResult Function(_SuccessCleared value) successCleared,
    required TResult Function(_SuccessUpdate value) successUpdate,
    required TResult Function(_Failure value) failure,
    required TResult Function(_FailureGetUserCart value) failureGetUserCart,
    required TResult Function(_FailureGetCartDetails value)
        failureGetCartDetails,
    required TResult Function(_FailureGetOftenProductCart value)
        failureGetOftenProductCart,
    required TResult Function(_FailureClearCart value) failureClearCart,
    required TResult Function(_FailureRemoveItem value) failureRemoveItem,
    required TResult Function(_FailureUpdateItem value) failureUpdateItem,
    required TResult Function(_FailureAddCoupon value) failureAddCoupon,
    required TResult Function(_FailureAddItem value) failureAddItem,
    required TResult Function(_FailurePreparingTIme value) failurePreparingTIme,
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
    TResult? Function(_SuccessDeleted value)? successDeleted,
    TResult? Function(_SuccessCleared value)? successCleared,
    TResult? Function(_SuccessUpdate value)? successUpdate,
    TResult? Function(_Failure value)? failure,
    TResult? Function(_FailureGetUserCart value)? failureGetUserCart,
    TResult? Function(_FailureGetCartDetails value)? failureGetCartDetails,
    TResult? Function(_FailureGetOftenProductCart value)?
        failureGetOftenProductCart,
    TResult? Function(_FailureClearCart value)? failureClearCart,
    TResult? Function(_FailureRemoveItem value)? failureRemoveItem,
    TResult? Function(_FailureUpdateItem value)? failureUpdateItem,
    TResult? Function(_FailureAddCoupon value)? failureAddCoupon,
    TResult? Function(_FailureAddItem value)? failureAddItem,
    TResult? Function(_FailurePreparingTIme value)? failurePreparingTIme,
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
    TResult Function(_SuccessDeleted value)? successDeleted,
    TResult Function(_SuccessCleared value)? successCleared,
    TResult Function(_SuccessUpdate value)? successUpdate,
    TResult Function(_Failure value)? failure,
    TResult Function(_FailureGetUserCart value)? failureGetUserCart,
    TResult Function(_FailureGetCartDetails value)? failureGetCartDetails,
    TResult Function(_FailureGetOftenProductCart value)?
        failureGetOftenProductCart,
    TResult Function(_FailureClearCart value)? failureClearCart,
    TResult Function(_FailureRemoveItem value)? failureRemoveItem,
    TResult Function(_FailureUpdateItem value)? failureUpdateItem,
    TResult Function(_FailureAddCoupon value)? failureAddCoupon,
    TResult Function(_FailureAddItem value)? failureAddItem,
    TResult Function(_FailurePreparingTIme value)? failurePreparingTIme,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class _Failure implements CartState {
  const factory _Failure(final String err) = _$FailureImpl;

  String get err;

  /// Create a copy of CartState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FailureImplCopyWith<_$FailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FailureGetUserCartImplCopyWith<$Res> {
  factory _$$FailureGetUserCartImplCopyWith(_$FailureGetUserCartImpl value,
          $Res Function(_$FailureGetUserCartImpl) then) =
      __$$FailureGetUserCartImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String err});
}

/// @nodoc
class __$$FailureGetUserCartImplCopyWithImpl<$Res>
    extends _$CartStateCopyWithImpl<$Res, _$FailureGetUserCartImpl>
    implements _$$FailureGetUserCartImplCopyWith<$Res> {
  __$$FailureGetUserCartImplCopyWithImpl(_$FailureGetUserCartImpl _value,
      $Res Function(_$FailureGetUserCartImpl) _then)
      : super(_value, _then);

  /// Create a copy of CartState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? err = null,
  }) {
    return _then(_$FailureGetUserCartImpl(
      null == err
          ? _value.err
          : err // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$FailureGetUserCartImpl implements _FailureGetUserCart {
  const _$FailureGetUserCartImpl(this.err);

  @override
  final String err;

  @override
  String toString() {
    return 'CartState.failureGetUserCart(err: $err)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FailureGetUserCartImpl &&
            (identical(other.err, err) || other.err == err));
  }

  @override
  int get hashCode => Object.hash(runtimeType, err);

  /// Create a copy of CartState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FailureGetUserCartImplCopyWith<_$FailureGetUserCartImpl> get copyWith =>
      __$$FailureGetUserCartImplCopyWithImpl<_$FailureGetUserCartImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function() successAdded,
    required TResult Function() successDeleted,
    required TResult Function() successCleared,
    required TResult Function() successUpdate,
    required TResult Function(String err) failure,
    required TResult Function(String err) failureGetUserCart,
    required TResult Function(String err) failureGetCartDetails,
    required TResult Function(String err) failureGetOftenProductCart,
    required TResult Function(String err) failureClearCart,
    required TResult Function(String err) failureRemoveItem,
    required TResult Function(String err) failureUpdateItem,
    required TResult Function(String err) failureAddCoupon,
    required TResult Function(String err) failureAddItem,
    required TResult Function(String err) failurePreparingTIme,
  }) {
    return failureGetUserCart(err);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? success,
    TResult? Function()? successAdded,
    TResult? Function()? successDeleted,
    TResult? Function()? successCleared,
    TResult? Function()? successUpdate,
    TResult? Function(String err)? failure,
    TResult? Function(String err)? failureGetUserCart,
    TResult? Function(String err)? failureGetCartDetails,
    TResult? Function(String err)? failureGetOftenProductCart,
    TResult? Function(String err)? failureClearCart,
    TResult? Function(String err)? failureRemoveItem,
    TResult? Function(String err)? failureUpdateItem,
    TResult? Function(String err)? failureAddCoupon,
    TResult? Function(String err)? failureAddItem,
    TResult? Function(String err)? failurePreparingTIme,
  }) {
    return failureGetUserCart?.call(err);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function()? successAdded,
    TResult Function()? successDeleted,
    TResult Function()? successCleared,
    TResult Function()? successUpdate,
    TResult Function(String err)? failure,
    TResult Function(String err)? failureGetUserCart,
    TResult Function(String err)? failureGetCartDetails,
    TResult Function(String err)? failureGetOftenProductCart,
    TResult Function(String err)? failureClearCart,
    TResult Function(String err)? failureRemoveItem,
    TResult Function(String err)? failureUpdateItem,
    TResult Function(String err)? failureAddCoupon,
    TResult Function(String err)? failureAddItem,
    TResult Function(String err)? failurePreparingTIme,
    required TResult orElse(),
  }) {
    if (failureGetUserCart != null) {
      return failureGetUserCart(err);
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
    required TResult Function(_SuccessDeleted value) successDeleted,
    required TResult Function(_SuccessCleared value) successCleared,
    required TResult Function(_SuccessUpdate value) successUpdate,
    required TResult Function(_Failure value) failure,
    required TResult Function(_FailureGetUserCart value) failureGetUserCart,
    required TResult Function(_FailureGetCartDetails value)
        failureGetCartDetails,
    required TResult Function(_FailureGetOftenProductCart value)
        failureGetOftenProductCart,
    required TResult Function(_FailureClearCart value) failureClearCart,
    required TResult Function(_FailureRemoveItem value) failureRemoveItem,
    required TResult Function(_FailureUpdateItem value) failureUpdateItem,
    required TResult Function(_FailureAddCoupon value) failureAddCoupon,
    required TResult Function(_FailureAddItem value) failureAddItem,
    required TResult Function(_FailurePreparingTIme value) failurePreparingTIme,
  }) {
    return failureGetUserCart(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_SuccessAdded value)? successAdded,
    TResult? Function(_SuccessDeleted value)? successDeleted,
    TResult? Function(_SuccessCleared value)? successCleared,
    TResult? Function(_SuccessUpdate value)? successUpdate,
    TResult? Function(_Failure value)? failure,
    TResult? Function(_FailureGetUserCart value)? failureGetUserCart,
    TResult? Function(_FailureGetCartDetails value)? failureGetCartDetails,
    TResult? Function(_FailureGetOftenProductCart value)?
        failureGetOftenProductCart,
    TResult? Function(_FailureClearCart value)? failureClearCart,
    TResult? Function(_FailureRemoveItem value)? failureRemoveItem,
    TResult? Function(_FailureUpdateItem value)? failureUpdateItem,
    TResult? Function(_FailureAddCoupon value)? failureAddCoupon,
    TResult? Function(_FailureAddItem value)? failureAddItem,
    TResult? Function(_FailurePreparingTIme value)? failurePreparingTIme,
  }) {
    return failureGetUserCart?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_SuccessAdded value)? successAdded,
    TResult Function(_SuccessDeleted value)? successDeleted,
    TResult Function(_SuccessCleared value)? successCleared,
    TResult Function(_SuccessUpdate value)? successUpdate,
    TResult Function(_Failure value)? failure,
    TResult Function(_FailureGetUserCart value)? failureGetUserCart,
    TResult Function(_FailureGetCartDetails value)? failureGetCartDetails,
    TResult Function(_FailureGetOftenProductCart value)?
        failureGetOftenProductCart,
    TResult Function(_FailureClearCart value)? failureClearCart,
    TResult Function(_FailureRemoveItem value)? failureRemoveItem,
    TResult Function(_FailureUpdateItem value)? failureUpdateItem,
    TResult Function(_FailureAddCoupon value)? failureAddCoupon,
    TResult Function(_FailureAddItem value)? failureAddItem,
    TResult Function(_FailurePreparingTIme value)? failurePreparingTIme,
    required TResult orElse(),
  }) {
    if (failureGetUserCart != null) {
      return failureGetUserCart(this);
    }
    return orElse();
  }
}

abstract class _FailureGetUserCart implements CartState {
  const factory _FailureGetUserCart(final String err) =
      _$FailureGetUserCartImpl;

  String get err;

  /// Create a copy of CartState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FailureGetUserCartImplCopyWith<_$FailureGetUserCartImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FailureGetCartDetailsImplCopyWith<$Res> {
  factory _$$FailureGetCartDetailsImplCopyWith(
          _$FailureGetCartDetailsImpl value,
          $Res Function(_$FailureGetCartDetailsImpl) then) =
      __$$FailureGetCartDetailsImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String err});
}

/// @nodoc
class __$$FailureGetCartDetailsImplCopyWithImpl<$Res>
    extends _$CartStateCopyWithImpl<$Res, _$FailureGetCartDetailsImpl>
    implements _$$FailureGetCartDetailsImplCopyWith<$Res> {
  __$$FailureGetCartDetailsImplCopyWithImpl(_$FailureGetCartDetailsImpl _value,
      $Res Function(_$FailureGetCartDetailsImpl) _then)
      : super(_value, _then);

  /// Create a copy of CartState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? err = null,
  }) {
    return _then(_$FailureGetCartDetailsImpl(
      null == err
          ? _value.err
          : err // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$FailureGetCartDetailsImpl implements _FailureGetCartDetails {
  const _$FailureGetCartDetailsImpl(this.err);

  @override
  final String err;

  @override
  String toString() {
    return 'CartState.failureGetCartDetails(err: $err)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FailureGetCartDetailsImpl &&
            (identical(other.err, err) || other.err == err));
  }

  @override
  int get hashCode => Object.hash(runtimeType, err);

  /// Create a copy of CartState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FailureGetCartDetailsImplCopyWith<_$FailureGetCartDetailsImpl>
      get copyWith => __$$FailureGetCartDetailsImplCopyWithImpl<
          _$FailureGetCartDetailsImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function() successAdded,
    required TResult Function() successDeleted,
    required TResult Function() successCleared,
    required TResult Function() successUpdate,
    required TResult Function(String err) failure,
    required TResult Function(String err) failureGetUserCart,
    required TResult Function(String err) failureGetCartDetails,
    required TResult Function(String err) failureGetOftenProductCart,
    required TResult Function(String err) failureClearCart,
    required TResult Function(String err) failureRemoveItem,
    required TResult Function(String err) failureUpdateItem,
    required TResult Function(String err) failureAddCoupon,
    required TResult Function(String err) failureAddItem,
    required TResult Function(String err) failurePreparingTIme,
  }) {
    return failureGetCartDetails(err);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? success,
    TResult? Function()? successAdded,
    TResult? Function()? successDeleted,
    TResult? Function()? successCleared,
    TResult? Function()? successUpdate,
    TResult? Function(String err)? failure,
    TResult? Function(String err)? failureGetUserCart,
    TResult? Function(String err)? failureGetCartDetails,
    TResult? Function(String err)? failureGetOftenProductCart,
    TResult? Function(String err)? failureClearCart,
    TResult? Function(String err)? failureRemoveItem,
    TResult? Function(String err)? failureUpdateItem,
    TResult? Function(String err)? failureAddCoupon,
    TResult? Function(String err)? failureAddItem,
    TResult? Function(String err)? failurePreparingTIme,
  }) {
    return failureGetCartDetails?.call(err);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function()? successAdded,
    TResult Function()? successDeleted,
    TResult Function()? successCleared,
    TResult Function()? successUpdate,
    TResult Function(String err)? failure,
    TResult Function(String err)? failureGetUserCart,
    TResult Function(String err)? failureGetCartDetails,
    TResult Function(String err)? failureGetOftenProductCart,
    TResult Function(String err)? failureClearCart,
    TResult Function(String err)? failureRemoveItem,
    TResult Function(String err)? failureUpdateItem,
    TResult Function(String err)? failureAddCoupon,
    TResult Function(String err)? failureAddItem,
    TResult Function(String err)? failurePreparingTIme,
    required TResult orElse(),
  }) {
    if (failureGetCartDetails != null) {
      return failureGetCartDetails(err);
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
    required TResult Function(_SuccessDeleted value) successDeleted,
    required TResult Function(_SuccessCleared value) successCleared,
    required TResult Function(_SuccessUpdate value) successUpdate,
    required TResult Function(_Failure value) failure,
    required TResult Function(_FailureGetUserCart value) failureGetUserCart,
    required TResult Function(_FailureGetCartDetails value)
        failureGetCartDetails,
    required TResult Function(_FailureGetOftenProductCart value)
        failureGetOftenProductCart,
    required TResult Function(_FailureClearCart value) failureClearCart,
    required TResult Function(_FailureRemoveItem value) failureRemoveItem,
    required TResult Function(_FailureUpdateItem value) failureUpdateItem,
    required TResult Function(_FailureAddCoupon value) failureAddCoupon,
    required TResult Function(_FailureAddItem value) failureAddItem,
    required TResult Function(_FailurePreparingTIme value) failurePreparingTIme,
  }) {
    return failureGetCartDetails(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_SuccessAdded value)? successAdded,
    TResult? Function(_SuccessDeleted value)? successDeleted,
    TResult? Function(_SuccessCleared value)? successCleared,
    TResult? Function(_SuccessUpdate value)? successUpdate,
    TResult? Function(_Failure value)? failure,
    TResult? Function(_FailureGetUserCart value)? failureGetUserCart,
    TResult? Function(_FailureGetCartDetails value)? failureGetCartDetails,
    TResult? Function(_FailureGetOftenProductCart value)?
        failureGetOftenProductCart,
    TResult? Function(_FailureClearCart value)? failureClearCart,
    TResult? Function(_FailureRemoveItem value)? failureRemoveItem,
    TResult? Function(_FailureUpdateItem value)? failureUpdateItem,
    TResult? Function(_FailureAddCoupon value)? failureAddCoupon,
    TResult? Function(_FailureAddItem value)? failureAddItem,
    TResult? Function(_FailurePreparingTIme value)? failurePreparingTIme,
  }) {
    return failureGetCartDetails?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_SuccessAdded value)? successAdded,
    TResult Function(_SuccessDeleted value)? successDeleted,
    TResult Function(_SuccessCleared value)? successCleared,
    TResult Function(_SuccessUpdate value)? successUpdate,
    TResult Function(_Failure value)? failure,
    TResult Function(_FailureGetUserCart value)? failureGetUserCart,
    TResult Function(_FailureGetCartDetails value)? failureGetCartDetails,
    TResult Function(_FailureGetOftenProductCart value)?
        failureGetOftenProductCart,
    TResult Function(_FailureClearCart value)? failureClearCart,
    TResult Function(_FailureRemoveItem value)? failureRemoveItem,
    TResult Function(_FailureUpdateItem value)? failureUpdateItem,
    TResult Function(_FailureAddCoupon value)? failureAddCoupon,
    TResult Function(_FailureAddItem value)? failureAddItem,
    TResult Function(_FailurePreparingTIme value)? failurePreparingTIme,
    required TResult orElse(),
  }) {
    if (failureGetCartDetails != null) {
      return failureGetCartDetails(this);
    }
    return orElse();
  }
}

abstract class _FailureGetCartDetails implements CartState {
  const factory _FailureGetCartDetails(final String err) =
      _$FailureGetCartDetailsImpl;

  String get err;

  /// Create a copy of CartState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FailureGetCartDetailsImplCopyWith<_$FailureGetCartDetailsImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FailureGetOftenProductCartImplCopyWith<$Res> {
  factory _$$FailureGetOftenProductCartImplCopyWith(
          _$FailureGetOftenProductCartImpl value,
          $Res Function(_$FailureGetOftenProductCartImpl) then) =
      __$$FailureGetOftenProductCartImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String err});
}

/// @nodoc
class __$$FailureGetOftenProductCartImplCopyWithImpl<$Res>
    extends _$CartStateCopyWithImpl<$Res, _$FailureGetOftenProductCartImpl>
    implements _$$FailureGetOftenProductCartImplCopyWith<$Res> {
  __$$FailureGetOftenProductCartImplCopyWithImpl(
      _$FailureGetOftenProductCartImpl _value,
      $Res Function(_$FailureGetOftenProductCartImpl) _then)
      : super(_value, _then);

  /// Create a copy of CartState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? err = null,
  }) {
    return _then(_$FailureGetOftenProductCartImpl(
      null == err
          ? _value.err
          : err // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$FailureGetOftenProductCartImpl implements _FailureGetOftenProductCart {
  const _$FailureGetOftenProductCartImpl(this.err);

  @override
  final String err;

  @override
  String toString() {
    return 'CartState.failureGetOftenProductCart(err: $err)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FailureGetOftenProductCartImpl &&
            (identical(other.err, err) || other.err == err));
  }

  @override
  int get hashCode => Object.hash(runtimeType, err);

  /// Create a copy of CartState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FailureGetOftenProductCartImplCopyWith<_$FailureGetOftenProductCartImpl>
      get copyWith => __$$FailureGetOftenProductCartImplCopyWithImpl<
          _$FailureGetOftenProductCartImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function() successAdded,
    required TResult Function() successDeleted,
    required TResult Function() successCleared,
    required TResult Function() successUpdate,
    required TResult Function(String err) failure,
    required TResult Function(String err) failureGetUserCart,
    required TResult Function(String err) failureGetCartDetails,
    required TResult Function(String err) failureGetOftenProductCart,
    required TResult Function(String err) failureClearCart,
    required TResult Function(String err) failureRemoveItem,
    required TResult Function(String err) failureUpdateItem,
    required TResult Function(String err) failureAddCoupon,
    required TResult Function(String err) failureAddItem,
    required TResult Function(String err) failurePreparingTIme,
  }) {
    return failureGetOftenProductCart(err);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? success,
    TResult? Function()? successAdded,
    TResult? Function()? successDeleted,
    TResult? Function()? successCleared,
    TResult? Function()? successUpdate,
    TResult? Function(String err)? failure,
    TResult? Function(String err)? failureGetUserCart,
    TResult? Function(String err)? failureGetCartDetails,
    TResult? Function(String err)? failureGetOftenProductCart,
    TResult? Function(String err)? failureClearCart,
    TResult? Function(String err)? failureRemoveItem,
    TResult? Function(String err)? failureUpdateItem,
    TResult? Function(String err)? failureAddCoupon,
    TResult? Function(String err)? failureAddItem,
    TResult? Function(String err)? failurePreparingTIme,
  }) {
    return failureGetOftenProductCart?.call(err);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function()? successAdded,
    TResult Function()? successDeleted,
    TResult Function()? successCleared,
    TResult Function()? successUpdate,
    TResult Function(String err)? failure,
    TResult Function(String err)? failureGetUserCart,
    TResult Function(String err)? failureGetCartDetails,
    TResult Function(String err)? failureGetOftenProductCart,
    TResult Function(String err)? failureClearCart,
    TResult Function(String err)? failureRemoveItem,
    TResult Function(String err)? failureUpdateItem,
    TResult Function(String err)? failureAddCoupon,
    TResult Function(String err)? failureAddItem,
    TResult Function(String err)? failurePreparingTIme,
    required TResult orElse(),
  }) {
    if (failureGetOftenProductCart != null) {
      return failureGetOftenProductCart(err);
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
    required TResult Function(_SuccessDeleted value) successDeleted,
    required TResult Function(_SuccessCleared value) successCleared,
    required TResult Function(_SuccessUpdate value) successUpdate,
    required TResult Function(_Failure value) failure,
    required TResult Function(_FailureGetUserCart value) failureGetUserCart,
    required TResult Function(_FailureGetCartDetails value)
        failureGetCartDetails,
    required TResult Function(_FailureGetOftenProductCart value)
        failureGetOftenProductCart,
    required TResult Function(_FailureClearCart value) failureClearCart,
    required TResult Function(_FailureRemoveItem value) failureRemoveItem,
    required TResult Function(_FailureUpdateItem value) failureUpdateItem,
    required TResult Function(_FailureAddCoupon value) failureAddCoupon,
    required TResult Function(_FailureAddItem value) failureAddItem,
    required TResult Function(_FailurePreparingTIme value) failurePreparingTIme,
  }) {
    return failureGetOftenProductCart(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_SuccessAdded value)? successAdded,
    TResult? Function(_SuccessDeleted value)? successDeleted,
    TResult? Function(_SuccessCleared value)? successCleared,
    TResult? Function(_SuccessUpdate value)? successUpdate,
    TResult? Function(_Failure value)? failure,
    TResult? Function(_FailureGetUserCart value)? failureGetUserCart,
    TResult? Function(_FailureGetCartDetails value)? failureGetCartDetails,
    TResult? Function(_FailureGetOftenProductCart value)?
        failureGetOftenProductCart,
    TResult? Function(_FailureClearCart value)? failureClearCart,
    TResult? Function(_FailureRemoveItem value)? failureRemoveItem,
    TResult? Function(_FailureUpdateItem value)? failureUpdateItem,
    TResult? Function(_FailureAddCoupon value)? failureAddCoupon,
    TResult? Function(_FailureAddItem value)? failureAddItem,
    TResult? Function(_FailurePreparingTIme value)? failurePreparingTIme,
  }) {
    return failureGetOftenProductCart?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_SuccessAdded value)? successAdded,
    TResult Function(_SuccessDeleted value)? successDeleted,
    TResult Function(_SuccessCleared value)? successCleared,
    TResult Function(_SuccessUpdate value)? successUpdate,
    TResult Function(_Failure value)? failure,
    TResult Function(_FailureGetUserCart value)? failureGetUserCart,
    TResult Function(_FailureGetCartDetails value)? failureGetCartDetails,
    TResult Function(_FailureGetOftenProductCart value)?
        failureGetOftenProductCart,
    TResult Function(_FailureClearCart value)? failureClearCart,
    TResult Function(_FailureRemoveItem value)? failureRemoveItem,
    TResult Function(_FailureUpdateItem value)? failureUpdateItem,
    TResult Function(_FailureAddCoupon value)? failureAddCoupon,
    TResult Function(_FailureAddItem value)? failureAddItem,
    TResult Function(_FailurePreparingTIme value)? failurePreparingTIme,
    required TResult orElse(),
  }) {
    if (failureGetOftenProductCart != null) {
      return failureGetOftenProductCart(this);
    }
    return orElse();
  }
}

abstract class _FailureGetOftenProductCart implements CartState {
  const factory _FailureGetOftenProductCart(final String err) =
      _$FailureGetOftenProductCartImpl;

  String get err;

  /// Create a copy of CartState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FailureGetOftenProductCartImplCopyWith<_$FailureGetOftenProductCartImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FailureClearCartImplCopyWith<$Res> {
  factory _$$FailureClearCartImplCopyWith(_$FailureClearCartImpl value,
          $Res Function(_$FailureClearCartImpl) then) =
      __$$FailureClearCartImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String err});
}

/// @nodoc
class __$$FailureClearCartImplCopyWithImpl<$Res>
    extends _$CartStateCopyWithImpl<$Res, _$FailureClearCartImpl>
    implements _$$FailureClearCartImplCopyWith<$Res> {
  __$$FailureClearCartImplCopyWithImpl(_$FailureClearCartImpl _value,
      $Res Function(_$FailureClearCartImpl) _then)
      : super(_value, _then);

  /// Create a copy of CartState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? err = null,
  }) {
    return _then(_$FailureClearCartImpl(
      null == err
          ? _value.err
          : err // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$FailureClearCartImpl implements _FailureClearCart {
  const _$FailureClearCartImpl(this.err);

  @override
  final String err;

  @override
  String toString() {
    return 'CartState.failureClearCart(err: $err)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FailureClearCartImpl &&
            (identical(other.err, err) || other.err == err));
  }

  @override
  int get hashCode => Object.hash(runtimeType, err);

  /// Create a copy of CartState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FailureClearCartImplCopyWith<_$FailureClearCartImpl> get copyWith =>
      __$$FailureClearCartImplCopyWithImpl<_$FailureClearCartImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function() successAdded,
    required TResult Function() successDeleted,
    required TResult Function() successCleared,
    required TResult Function() successUpdate,
    required TResult Function(String err) failure,
    required TResult Function(String err) failureGetUserCart,
    required TResult Function(String err) failureGetCartDetails,
    required TResult Function(String err) failureGetOftenProductCart,
    required TResult Function(String err) failureClearCart,
    required TResult Function(String err) failureRemoveItem,
    required TResult Function(String err) failureUpdateItem,
    required TResult Function(String err) failureAddCoupon,
    required TResult Function(String err) failureAddItem,
    required TResult Function(String err) failurePreparingTIme,
  }) {
    return failureClearCart(err);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? success,
    TResult? Function()? successAdded,
    TResult? Function()? successDeleted,
    TResult? Function()? successCleared,
    TResult? Function()? successUpdate,
    TResult? Function(String err)? failure,
    TResult? Function(String err)? failureGetUserCart,
    TResult? Function(String err)? failureGetCartDetails,
    TResult? Function(String err)? failureGetOftenProductCart,
    TResult? Function(String err)? failureClearCart,
    TResult? Function(String err)? failureRemoveItem,
    TResult? Function(String err)? failureUpdateItem,
    TResult? Function(String err)? failureAddCoupon,
    TResult? Function(String err)? failureAddItem,
    TResult? Function(String err)? failurePreparingTIme,
  }) {
    return failureClearCart?.call(err);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function()? successAdded,
    TResult Function()? successDeleted,
    TResult Function()? successCleared,
    TResult Function()? successUpdate,
    TResult Function(String err)? failure,
    TResult Function(String err)? failureGetUserCart,
    TResult Function(String err)? failureGetCartDetails,
    TResult Function(String err)? failureGetOftenProductCart,
    TResult Function(String err)? failureClearCart,
    TResult Function(String err)? failureRemoveItem,
    TResult Function(String err)? failureUpdateItem,
    TResult Function(String err)? failureAddCoupon,
    TResult Function(String err)? failureAddItem,
    TResult Function(String err)? failurePreparingTIme,
    required TResult orElse(),
  }) {
    if (failureClearCart != null) {
      return failureClearCart(err);
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
    required TResult Function(_SuccessDeleted value) successDeleted,
    required TResult Function(_SuccessCleared value) successCleared,
    required TResult Function(_SuccessUpdate value) successUpdate,
    required TResult Function(_Failure value) failure,
    required TResult Function(_FailureGetUserCart value) failureGetUserCart,
    required TResult Function(_FailureGetCartDetails value)
        failureGetCartDetails,
    required TResult Function(_FailureGetOftenProductCart value)
        failureGetOftenProductCart,
    required TResult Function(_FailureClearCart value) failureClearCart,
    required TResult Function(_FailureRemoveItem value) failureRemoveItem,
    required TResult Function(_FailureUpdateItem value) failureUpdateItem,
    required TResult Function(_FailureAddCoupon value) failureAddCoupon,
    required TResult Function(_FailureAddItem value) failureAddItem,
    required TResult Function(_FailurePreparingTIme value) failurePreparingTIme,
  }) {
    return failureClearCart(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_SuccessAdded value)? successAdded,
    TResult? Function(_SuccessDeleted value)? successDeleted,
    TResult? Function(_SuccessCleared value)? successCleared,
    TResult? Function(_SuccessUpdate value)? successUpdate,
    TResult? Function(_Failure value)? failure,
    TResult? Function(_FailureGetUserCart value)? failureGetUserCart,
    TResult? Function(_FailureGetCartDetails value)? failureGetCartDetails,
    TResult? Function(_FailureGetOftenProductCart value)?
        failureGetOftenProductCart,
    TResult? Function(_FailureClearCart value)? failureClearCart,
    TResult? Function(_FailureRemoveItem value)? failureRemoveItem,
    TResult? Function(_FailureUpdateItem value)? failureUpdateItem,
    TResult? Function(_FailureAddCoupon value)? failureAddCoupon,
    TResult? Function(_FailureAddItem value)? failureAddItem,
    TResult? Function(_FailurePreparingTIme value)? failurePreparingTIme,
  }) {
    return failureClearCart?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_SuccessAdded value)? successAdded,
    TResult Function(_SuccessDeleted value)? successDeleted,
    TResult Function(_SuccessCleared value)? successCleared,
    TResult Function(_SuccessUpdate value)? successUpdate,
    TResult Function(_Failure value)? failure,
    TResult Function(_FailureGetUserCart value)? failureGetUserCart,
    TResult Function(_FailureGetCartDetails value)? failureGetCartDetails,
    TResult Function(_FailureGetOftenProductCart value)?
        failureGetOftenProductCart,
    TResult Function(_FailureClearCart value)? failureClearCart,
    TResult Function(_FailureRemoveItem value)? failureRemoveItem,
    TResult Function(_FailureUpdateItem value)? failureUpdateItem,
    TResult Function(_FailureAddCoupon value)? failureAddCoupon,
    TResult Function(_FailureAddItem value)? failureAddItem,
    TResult Function(_FailurePreparingTIme value)? failurePreparingTIme,
    required TResult orElse(),
  }) {
    if (failureClearCart != null) {
      return failureClearCart(this);
    }
    return orElse();
  }
}

abstract class _FailureClearCart implements CartState {
  const factory _FailureClearCart(final String err) = _$FailureClearCartImpl;

  String get err;

  /// Create a copy of CartState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FailureClearCartImplCopyWith<_$FailureClearCartImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FailureRemoveItemImplCopyWith<$Res> {
  factory _$$FailureRemoveItemImplCopyWith(_$FailureRemoveItemImpl value,
          $Res Function(_$FailureRemoveItemImpl) then) =
      __$$FailureRemoveItemImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String err});
}

/// @nodoc
class __$$FailureRemoveItemImplCopyWithImpl<$Res>
    extends _$CartStateCopyWithImpl<$Res, _$FailureRemoveItemImpl>
    implements _$$FailureRemoveItemImplCopyWith<$Res> {
  __$$FailureRemoveItemImplCopyWithImpl(_$FailureRemoveItemImpl _value,
      $Res Function(_$FailureRemoveItemImpl) _then)
      : super(_value, _then);

  /// Create a copy of CartState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? err = null,
  }) {
    return _then(_$FailureRemoveItemImpl(
      null == err
          ? _value.err
          : err // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$FailureRemoveItemImpl implements _FailureRemoveItem {
  const _$FailureRemoveItemImpl(this.err);

  @override
  final String err;

  @override
  String toString() {
    return 'CartState.failureRemoveItem(err: $err)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FailureRemoveItemImpl &&
            (identical(other.err, err) || other.err == err));
  }

  @override
  int get hashCode => Object.hash(runtimeType, err);

  /// Create a copy of CartState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FailureRemoveItemImplCopyWith<_$FailureRemoveItemImpl> get copyWith =>
      __$$FailureRemoveItemImplCopyWithImpl<_$FailureRemoveItemImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function() successAdded,
    required TResult Function() successDeleted,
    required TResult Function() successCleared,
    required TResult Function() successUpdate,
    required TResult Function(String err) failure,
    required TResult Function(String err) failureGetUserCart,
    required TResult Function(String err) failureGetCartDetails,
    required TResult Function(String err) failureGetOftenProductCart,
    required TResult Function(String err) failureClearCart,
    required TResult Function(String err) failureRemoveItem,
    required TResult Function(String err) failureUpdateItem,
    required TResult Function(String err) failureAddCoupon,
    required TResult Function(String err) failureAddItem,
    required TResult Function(String err) failurePreparingTIme,
  }) {
    return failureRemoveItem(err);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? success,
    TResult? Function()? successAdded,
    TResult? Function()? successDeleted,
    TResult? Function()? successCleared,
    TResult? Function()? successUpdate,
    TResult? Function(String err)? failure,
    TResult? Function(String err)? failureGetUserCart,
    TResult? Function(String err)? failureGetCartDetails,
    TResult? Function(String err)? failureGetOftenProductCart,
    TResult? Function(String err)? failureClearCart,
    TResult? Function(String err)? failureRemoveItem,
    TResult? Function(String err)? failureUpdateItem,
    TResult? Function(String err)? failureAddCoupon,
    TResult? Function(String err)? failureAddItem,
    TResult? Function(String err)? failurePreparingTIme,
  }) {
    return failureRemoveItem?.call(err);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function()? successAdded,
    TResult Function()? successDeleted,
    TResult Function()? successCleared,
    TResult Function()? successUpdate,
    TResult Function(String err)? failure,
    TResult Function(String err)? failureGetUserCart,
    TResult Function(String err)? failureGetCartDetails,
    TResult Function(String err)? failureGetOftenProductCart,
    TResult Function(String err)? failureClearCart,
    TResult Function(String err)? failureRemoveItem,
    TResult Function(String err)? failureUpdateItem,
    TResult Function(String err)? failureAddCoupon,
    TResult Function(String err)? failureAddItem,
    TResult Function(String err)? failurePreparingTIme,
    required TResult orElse(),
  }) {
    if (failureRemoveItem != null) {
      return failureRemoveItem(err);
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
    required TResult Function(_SuccessDeleted value) successDeleted,
    required TResult Function(_SuccessCleared value) successCleared,
    required TResult Function(_SuccessUpdate value) successUpdate,
    required TResult Function(_Failure value) failure,
    required TResult Function(_FailureGetUserCart value) failureGetUserCart,
    required TResult Function(_FailureGetCartDetails value)
        failureGetCartDetails,
    required TResult Function(_FailureGetOftenProductCart value)
        failureGetOftenProductCart,
    required TResult Function(_FailureClearCart value) failureClearCart,
    required TResult Function(_FailureRemoveItem value) failureRemoveItem,
    required TResult Function(_FailureUpdateItem value) failureUpdateItem,
    required TResult Function(_FailureAddCoupon value) failureAddCoupon,
    required TResult Function(_FailureAddItem value) failureAddItem,
    required TResult Function(_FailurePreparingTIme value) failurePreparingTIme,
  }) {
    return failureRemoveItem(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_SuccessAdded value)? successAdded,
    TResult? Function(_SuccessDeleted value)? successDeleted,
    TResult? Function(_SuccessCleared value)? successCleared,
    TResult? Function(_SuccessUpdate value)? successUpdate,
    TResult? Function(_Failure value)? failure,
    TResult? Function(_FailureGetUserCart value)? failureGetUserCart,
    TResult? Function(_FailureGetCartDetails value)? failureGetCartDetails,
    TResult? Function(_FailureGetOftenProductCart value)?
        failureGetOftenProductCart,
    TResult? Function(_FailureClearCart value)? failureClearCart,
    TResult? Function(_FailureRemoveItem value)? failureRemoveItem,
    TResult? Function(_FailureUpdateItem value)? failureUpdateItem,
    TResult? Function(_FailureAddCoupon value)? failureAddCoupon,
    TResult? Function(_FailureAddItem value)? failureAddItem,
    TResult? Function(_FailurePreparingTIme value)? failurePreparingTIme,
  }) {
    return failureRemoveItem?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_SuccessAdded value)? successAdded,
    TResult Function(_SuccessDeleted value)? successDeleted,
    TResult Function(_SuccessCleared value)? successCleared,
    TResult Function(_SuccessUpdate value)? successUpdate,
    TResult Function(_Failure value)? failure,
    TResult Function(_FailureGetUserCart value)? failureGetUserCart,
    TResult Function(_FailureGetCartDetails value)? failureGetCartDetails,
    TResult Function(_FailureGetOftenProductCart value)?
        failureGetOftenProductCart,
    TResult Function(_FailureClearCart value)? failureClearCart,
    TResult Function(_FailureRemoveItem value)? failureRemoveItem,
    TResult Function(_FailureUpdateItem value)? failureUpdateItem,
    TResult Function(_FailureAddCoupon value)? failureAddCoupon,
    TResult Function(_FailureAddItem value)? failureAddItem,
    TResult Function(_FailurePreparingTIme value)? failurePreparingTIme,
    required TResult orElse(),
  }) {
    if (failureRemoveItem != null) {
      return failureRemoveItem(this);
    }
    return orElse();
  }
}

abstract class _FailureRemoveItem implements CartState {
  const factory _FailureRemoveItem(final String err) = _$FailureRemoveItemImpl;

  String get err;

  /// Create a copy of CartState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FailureRemoveItemImplCopyWith<_$FailureRemoveItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FailureUpdateItemImplCopyWith<$Res> {
  factory _$$FailureUpdateItemImplCopyWith(_$FailureUpdateItemImpl value,
          $Res Function(_$FailureUpdateItemImpl) then) =
      __$$FailureUpdateItemImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String err});
}

/// @nodoc
class __$$FailureUpdateItemImplCopyWithImpl<$Res>
    extends _$CartStateCopyWithImpl<$Res, _$FailureUpdateItemImpl>
    implements _$$FailureUpdateItemImplCopyWith<$Res> {
  __$$FailureUpdateItemImplCopyWithImpl(_$FailureUpdateItemImpl _value,
      $Res Function(_$FailureUpdateItemImpl) _then)
      : super(_value, _then);

  /// Create a copy of CartState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? err = null,
  }) {
    return _then(_$FailureUpdateItemImpl(
      null == err
          ? _value.err
          : err // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$FailureUpdateItemImpl implements _FailureUpdateItem {
  const _$FailureUpdateItemImpl(this.err);

  @override
  final String err;

  @override
  String toString() {
    return 'CartState.failureUpdateItem(err: $err)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FailureUpdateItemImpl &&
            (identical(other.err, err) || other.err == err));
  }

  @override
  int get hashCode => Object.hash(runtimeType, err);

  /// Create a copy of CartState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FailureUpdateItemImplCopyWith<_$FailureUpdateItemImpl> get copyWith =>
      __$$FailureUpdateItemImplCopyWithImpl<_$FailureUpdateItemImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function() successAdded,
    required TResult Function() successDeleted,
    required TResult Function() successCleared,
    required TResult Function() successUpdate,
    required TResult Function(String err) failure,
    required TResult Function(String err) failureGetUserCart,
    required TResult Function(String err) failureGetCartDetails,
    required TResult Function(String err) failureGetOftenProductCart,
    required TResult Function(String err) failureClearCart,
    required TResult Function(String err) failureRemoveItem,
    required TResult Function(String err) failureUpdateItem,
    required TResult Function(String err) failureAddCoupon,
    required TResult Function(String err) failureAddItem,
    required TResult Function(String err) failurePreparingTIme,
  }) {
    return failureUpdateItem(err);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? success,
    TResult? Function()? successAdded,
    TResult? Function()? successDeleted,
    TResult? Function()? successCleared,
    TResult? Function()? successUpdate,
    TResult? Function(String err)? failure,
    TResult? Function(String err)? failureGetUserCart,
    TResult? Function(String err)? failureGetCartDetails,
    TResult? Function(String err)? failureGetOftenProductCart,
    TResult? Function(String err)? failureClearCart,
    TResult? Function(String err)? failureRemoveItem,
    TResult? Function(String err)? failureUpdateItem,
    TResult? Function(String err)? failureAddCoupon,
    TResult? Function(String err)? failureAddItem,
    TResult? Function(String err)? failurePreparingTIme,
  }) {
    return failureUpdateItem?.call(err);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function()? successAdded,
    TResult Function()? successDeleted,
    TResult Function()? successCleared,
    TResult Function()? successUpdate,
    TResult Function(String err)? failure,
    TResult Function(String err)? failureGetUserCart,
    TResult Function(String err)? failureGetCartDetails,
    TResult Function(String err)? failureGetOftenProductCart,
    TResult Function(String err)? failureClearCart,
    TResult Function(String err)? failureRemoveItem,
    TResult Function(String err)? failureUpdateItem,
    TResult Function(String err)? failureAddCoupon,
    TResult Function(String err)? failureAddItem,
    TResult Function(String err)? failurePreparingTIme,
    required TResult orElse(),
  }) {
    if (failureUpdateItem != null) {
      return failureUpdateItem(err);
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
    required TResult Function(_SuccessDeleted value) successDeleted,
    required TResult Function(_SuccessCleared value) successCleared,
    required TResult Function(_SuccessUpdate value) successUpdate,
    required TResult Function(_Failure value) failure,
    required TResult Function(_FailureGetUserCart value) failureGetUserCart,
    required TResult Function(_FailureGetCartDetails value)
        failureGetCartDetails,
    required TResult Function(_FailureGetOftenProductCart value)
        failureGetOftenProductCart,
    required TResult Function(_FailureClearCart value) failureClearCart,
    required TResult Function(_FailureRemoveItem value) failureRemoveItem,
    required TResult Function(_FailureUpdateItem value) failureUpdateItem,
    required TResult Function(_FailureAddCoupon value) failureAddCoupon,
    required TResult Function(_FailureAddItem value) failureAddItem,
    required TResult Function(_FailurePreparingTIme value) failurePreparingTIme,
  }) {
    return failureUpdateItem(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_SuccessAdded value)? successAdded,
    TResult? Function(_SuccessDeleted value)? successDeleted,
    TResult? Function(_SuccessCleared value)? successCleared,
    TResult? Function(_SuccessUpdate value)? successUpdate,
    TResult? Function(_Failure value)? failure,
    TResult? Function(_FailureGetUserCart value)? failureGetUserCart,
    TResult? Function(_FailureGetCartDetails value)? failureGetCartDetails,
    TResult? Function(_FailureGetOftenProductCart value)?
        failureGetOftenProductCart,
    TResult? Function(_FailureClearCart value)? failureClearCart,
    TResult? Function(_FailureRemoveItem value)? failureRemoveItem,
    TResult? Function(_FailureUpdateItem value)? failureUpdateItem,
    TResult? Function(_FailureAddCoupon value)? failureAddCoupon,
    TResult? Function(_FailureAddItem value)? failureAddItem,
    TResult? Function(_FailurePreparingTIme value)? failurePreparingTIme,
  }) {
    return failureUpdateItem?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_SuccessAdded value)? successAdded,
    TResult Function(_SuccessDeleted value)? successDeleted,
    TResult Function(_SuccessCleared value)? successCleared,
    TResult Function(_SuccessUpdate value)? successUpdate,
    TResult Function(_Failure value)? failure,
    TResult Function(_FailureGetUserCart value)? failureGetUserCart,
    TResult Function(_FailureGetCartDetails value)? failureGetCartDetails,
    TResult Function(_FailureGetOftenProductCart value)?
        failureGetOftenProductCart,
    TResult Function(_FailureClearCart value)? failureClearCart,
    TResult Function(_FailureRemoveItem value)? failureRemoveItem,
    TResult Function(_FailureUpdateItem value)? failureUpdateItem,
    TResult Function(_FailureAddCoupon value)? failureAddCoupon,
    TResult Function(_FailureAddItem value)? failureAddItem,
    TResult Function(_FailurePreparingTIme value)? failurePreparingTIme,
    required TResult orElse(),
  }) {
    if (failureUpdateItem != null) {
      return failureUpdateItem(this);
    }
    return orElse();
  }
}

abstract class _FailureUpdateItem implements CartState {
  const factory _FailureUpdateItem(final String err) = _$FailureUpdateItemImpl;

  String get err;

  /// Create a copy of CartState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FailureUpdateItemImplCopyWith<_$FailureUpdateItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FailureAddCouponImplCopyWith<$Res> {
  factory _$$FailureAddCouponImplCopyWith(_$FailureAddCouponImpl value,
          $Res Function(_$FailureAddCouponImpl) then) =
      __$$FailureAddCouponImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String err});
}

/// @nodoc
class __$$FailureAddCouponImplCopyWithImpl<$Res>
    extends _$CartStateCopyWithImpl<$Res, _$FailureAddCouponImpl>
    implements _$$FailureAddCouponImplCopyWith<$Res> {
  __$$FailureAddCouponImplCopyWithImpl(_$FailureAddCouponImpl _value,
      $Res Function(_$FailureAddCouponImpl) _then)
      : super(_value, _then);

  /// Create a copy of CartState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? err = null,
  }) {
    return _then(_$FailureAddCouponImpl(
      null == err
          ? _value.err
          : err // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$FailureAddCouponImpl implements _FailureAddCoupon {
  const _$FailureAddCouponImpl(this.err);

  @override
  final String err;

  @override
  String toString() {
    return 'CartState.failureAddCoupon(err: $err)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FailureAddCouponImpl &&
            (identical(other.err, err) || other.err == err));
  }

  @override
  int get hashCode => Object.hash(runtimeType, err);

  /// Create a copy of CartState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FailureAddCouponImplCopyWith<_$FailureAddCouponImpl> get copyWith =>
      __$$FailureAddCouponImplCopyWithImpl<_$FailureAddCouponImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function() successAdded,
    required TResult Function() successDeleted,
    required TResult Function() successCleared,
    required TResult Function() successUpdate,
    required TResult Function(String err) failure,
    required TResult Function(String err) failureGetUserCart,
    required TResult Function(String err) failureGetCartDetails,
    required TResult Function(String err) failureGetOftenProductCart,
    required TResult Function(String err) failureClearCart,
    required TResult Function(String err) failureRemoveItem,
    required TResult Function(String err) failureUpdateItem,
    required TResult Function(String err) failureAddCoupon,
    required TResult Function(String err) failureAddItem,
    required TResult Function(String err) failurePreparingTIme,
  }) {
    return failureAddCoupon(err);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? success,
    TResult? Function()? successAdded,
    TResult? Function()? successDeleted,
    TResult? Function()? successCleared,
    TResult? Function()? successUpdate,
    TResult? Function(String err)? failure,
    TResult? Function(String err)? failureGetUserCart,
    TResult? Function(String err)? failureGetCartDetails,
    TResult? Function(String err)? failureGetOftenProductCart,
    TResult? Function(String err)? failureClearCart,
    TResult? Function(String err)? failureRemoveItem,
    TResult? Function(String err)? failureUpdateItem,
    TResult? Function(String err)? failureAddCoupon,
    TResult? Function(String err)? failureAddItem,
    TResult? Function(String err)? failurePreparingTIme,
  }) {
    return failureAddCoupon?.call(err);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function()? successAdded,
    TResult Function()? successDeleted,
    TResult Function()? successCleared,
    TResult Function()? successUpdate,
    TResult Function(String err)? failure,
    TResult Function(String err)? failureGetUserCart,
    TResult Function(String err)? failureGetCartDetails,
    TResult Function(String err)? failureGetOftenProductCart,
    TResult Function(String err)? failureClearCart,
    TResult Function(String err)? failureRemoveItem,
    TResult Function(String err)? failureUpdateItem,
    TResult Function(String err)? failureAddCoupon,
    TResult Function(String err)? failureAddItem,
    TResult Function(String err)? failurePreparingTIme,
    required TResult orElse(),
  }) {
    if (failureAddCoupon != null) {
      return failureAddCoupon(err);
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
    required TResult Function(_SuccessDeleted value) successDeleted,
    required TResult Function(_SuccessCleared value) successCleared,
    required TResult Function(_SuccessUpdate value) successUpdate,
    required TResult Function(_Failure value) failure,
    required TResult Function(_FailureGetUserCart value) failureGetUserCart,
    required TResult Function(_FailureGetCartDetails value)
        failureGetCartDetails,
    required TResult Function(_FailureGetOftenProductCart value)
        failureGetOftenProductCart,
    required TResult Function(_FailureClearCart value) failureClearCart,
    required TResult Function(_FailureRemoveItem value) failureRemoveItem,
    required TResult Function(_FailureUpdateItem value) failureUpdateItem,
    required TResult Function(_FailureAddCoupon value) failureAddCoupon,
    required TResult Function(_FailureAddItem value) failureAddItem,
    required TResult Function(_FailurePreparingTIme value) failurePreparingTIme,
  }) {
    return failureAddCoupon(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_SuccessAdded value)? successAdded,
    TResult? Function(_SuccessDeleted value)? successDeleted,
    TResult? Function(_SuccessCleared value)? successCleared,
    TResult? Function(_SuccessUpdate value)? successUpdate,
    TResult? Function(_Failure value)? failure,
    TResult? Function(_FailureGetUserCart value)? failureGetUserCart,
    TResult? Function(_FailureGetCartDetails value)? failureGetCartDetails,
    TResult? Function(_FailureGetOftenProductCart value)?
        failureGetOftenProductCart,
    TResult? Function(_FailureClearCart value)? failureClearCart,
    TResult? Function(_FailureRemoveItem value)? failureRemoveItem,
    TResult? Function(_FailureUpdateItem value)? failureUpdateItem,
    TResult? Function(_FailureAddCoupon value)? failureAddCoupon,
    TResult? Function(_FailureAddItem value)? failureAddItem,
    TResult? Function(_FailurePreparingTIme value)? failurePreparingTIme,
  }) {
    return failureAddCoupon?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_SuccessAdded value)? successAdded,
    TResult Function(_SuccessDeleted value)? successDeleted,
    TResult Function(_SuccessCleared value)? successCleared,
    TResult Function(_SuccessUpdate value)? successUpdate,
    TResult Function(_Failure value)? failure,
    TResult Function(_FailureGetUserCart value)? failureGetUserCart,
    TResult Function(_FailureGetCartDetails value)? failureGetCartDetails,
    TResult Function(_FailureGetOftenProductCart value)?
        failureGetOftenProductCart,
    TResult Function(_FailureClearCart value)? failureClearCart,
    TResult Function(_FailureRemoveItem value)? failureRemoveItem,
    TResult Function(_FailureUpdateItem value)? failureUpdateItem,
    TResult Function(_FailureAddCoupon value)? failureAddCoupon,
    TResult Function(_FailureAddItem value)? failureAddItem,
    TResult Function(_FailurePreparingTIme value)? failurePreparingTIme,
    required TResult orElse(),
  }) {
    if (failureAddCoupon != null) {
      return failureAddCoupon(this);
    }
    return orElse();
  }
}

abstract class _FailureAddCoupon implements CartState {
  const factory _FailureAddCoupon(final String err) = _$FailureAddCouponImpl;

  String get err;

  /// Create a copy of CartState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FailureAddCouponImplCopyWith<_$FailureAddCouponImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FailureAddItemImplCopyWith<$Res> {
  factory _$$FailureAddItemImplCopyWith(_$FailureAddItemImpl value,
          $Res Function(_$FailureAddItemImpl) then) =
      __$$FailureAddItemImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String err});
}

/// @nodoc
class __$$FailureAddItemImplCopyWithImpl<$Res>
    extends _$CartStateCopyWithImpl<$Res, _$FailureAddItemImpl>
    implements _$$FailureAddItemImplCopyWith<$Res> {
  __$$FailureAddItemImplCopyWithImpl(
      _$FailureAddItemImpl _value, $Res Function(_$FailureAddItemImpl) _then)
      : super(_value, _then);

  /// Create a copy of CartState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? err = null,
  }) {
    return _then(_$FailureAddItemImpl(
      null == err
          ? _value.err
          : err // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$FailureAddItemImpl implements _FailureAddItem {
  const _$FailureAddItemImpl(this.err);

  @override
  final String err;

  @override
  String toString() {
    return 'CartState.failureAddItem(err: $err)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FailureAddItemImpl &&
            (identical(other.err, err) || other.err == err));
  }

  @override
  int get hashCode => Object.hash(runtimeType, err);

  /// Create a copy of CartState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FailureAddItemImplCopyWith<_$FailureAddItemImpl> get copyWith =>
      __$$FailureAddItemImplCopyWithImpl<_$FailureAddItemImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function() successAdded,
    required TResult Function() successDeleted,
    required TResult Function() successCleared,
    required TResult Function() successUpdate,
    required TResult Function(String err) failure,
    required TResult Function(String err) failureGetUserCart,
    required TResult Function(String err) failureGetCartDetails,
    required TResult Function(String err) failureGetOftenProductCart,
    required TResult Function(String err) failureClearCart,
    required TResult Function(String err) failureRemoveItem,
    required TResult Function(String err) failureUpdateItem,
    required TResult Function(String err) failureAddCoupon,
    required TResult Function(String err) failureAddItem,
    required TResult Function(String err) failurePreparingTIme,
  }) {
    return failureAddItem(err);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? success,
    TResult? Function()? successAdded,
    TResult? Function()? successDeleted,
    TResult? Function()? successCleared,
    TResult? Function()? successUpdate,
    TResult? Function(String err)? failure,
    TResult? Function(String err)? failureGetUserCart,
    TResult? Function(String err)? failureGetCartDetails,
    TResult? Function(String err)? failureGetOftenProductCart,
    TResult? Function(String err)? failureClearCart,
    TResult? Function(String err)? failureRemoveItem,
    TResult? Function(String err)? failureUpdateItem,
    TResult? Function(String err)? failureAddCoupon,
    TResult? Function(String err)? failureAddItem,
    TResult? Function(String err)? failurePreparingTIme,
  }) {
    return failureAddItem?.call(err);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function()? successAdded,
    TResult Function()? successDeleted,
    TResult Function()? successCleared,
    TResult Function()? successUpdate,
    TResult Function(String err)? failure,
    TResult Function(String err)? failureGetUserCart,
    TResult Function(String err)? failureGetCartDetails,
    TResult Function(String err)? failureGetOftenProductCart,
    TResult Function(String err)? failureClearCart,
    TResult Function(String err)? failureRemoveItem,
    TResult Function(String err)? failureUpdateItem,
    TResult Function(String err)? failureAddCoupon,
    TResult Function(String err)? failureAddItem,
    TResult Function(String err)? failurePreparingTIme,
    required TResult orElse(),
  }) {
    if (failureAddItem != null) {
      return failureAddItem(err);
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
    required TResult Function(_SuccessDeleted value) successDeleted,
    required TResult Function(_SuccessCleared value) successCleared,
    required TResult Function(_SuccessUpdate value) successUpdate,
    required TResult Function(_Failure value) failure,
    required TResult Function(_FailureGetUserCart value) failureGetUserCart,
    required TResult Function(_FailureGetCartDetails value)
        failureGetCartDetails,
    required TResult Function(_FailureGetOftenProductCart value)
        failureGetOftenProductCart,
    required TResult Function(_FailureClearCart value) failureClearCart,
    required TResult Function(_FailureRemoveItem value) failureRemoveItem,
    required TResult Function(_FailureUpdateItem value) failureUpdateItem,
    required TResult Function(_FailureAddCoupon value) failureAddCoupon,
    required TResult Function(_FailureAddItem value) failureAddItem,
    required TResult Function(_FailurePreparingTIme value) failurePreparingTIme,
  }) {
    return failureAddItem(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_SuccessAdded value)? successAdded,
    TResult? Function(_SuccessDeleted value)? successDeleted,
    TResult? Function(_SuccessCleared value)? successCleared,
    TResult? Function(_SuccessUpdate value)? successUpdate,
    TResult? Function(_Failure value)? failure,
    TResult? Function(_FailureGetUserCart value)? failureGetUserCart,
    TResult? Function(_FailureGetCartDetails value)? failureGetCartDetails,
    TResult? Function(_FailureGetOftenProductCart value)?
        failureGetOftenProductCart,
    TResult? Function(_FailureClearCart value)? failureClearCart,
    TResult? Function(_FailureRemoveItem value)? failureRemoveItem,
    TResult? Function(_FailureUpdateItem value)? failureUpdateItem,
    TResult? Function(_FailureAddCoupon value)? failureAddCoupon,
    TResult? Function(_FailureAddItem value)? failureAddItem,
    TResult? Function(_FailurePreparingTIme value)? failurePreparingTIme,
  }) {
    return failureAddItem?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_SuccessAdded value)? successAdded,
    TResult Function(_SuccessDeleted value)? successDeleted,
    TResult Function(_SuccessCleared value)? successCleared,
    TResult Function(_SuccessUpdate value)? successUpdate,
    TResult Function(_Failure value)? failure,
    TResult Function(_FailureGetUserCart value)? failureGetUserCart,
    TResult Function(_FailureGetCartDetails value)? failureGetCartDetails,
    TResult Function(_FailureGetOftenProductCart value)?
        failureGetOftenProductCart,
    TResult Function(_FailureClearCart value)? failureClearCart,
    TResult Function(_FailureRemoveItem value)? failureRemoveItem,
    TResult Function(_FailureUpdateItem value)? failureUpdateItem,
    TResult Function(_FailureAddCoupon value)? failureAddCoupon,
    TResult Function(_FailureAddItem value)? failureAddItem,
    TResult Function(_FailurePreparingTIme value)? failurePreparingTIme,
    required TResult orElse(),
  }) {
    if (failureAddItem != null) {
      return failureAddItem(this);
    }
    return orElse();
  }
}

abstract class _FailureAddItem implements CartState {
  const factory _FailureAddItem(final String err) = _$FailureAddItemImpl;

  String get err;

  /// Create a copy of CartState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FailureAddItemImplCopyWith<_$FailureAddItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FailurePreparingTImeImplCopyWith<$Res> {
  factory _$$FailurePreparingTImeImplCopyWith(_$FailurePreparingTImeImpl value,
          $Res Function(_$FailurePreparingTImeImpl) then) =
      __$$FailurePreparingTImeImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String err});
}

/// @nodoc
class __$$FailurePreparingTImeImplCopyWithImpl<$Res>
    extends _$CartStateCopyWithImpl<$Res, _$FailurePreparingTImeImpl>
    implements _$$FailurePreparingTImeImplCopyWith<$Res> {
  __$$FailurePreparingTImeImplCopyWithImpl(_$FailurePreparingTImeImpl _value,
      $Res Function(_$FailurePreparingTImeImpl) _then)
      : super(_value, _then);

  /// Create a copy of CartState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? err = null,
  }) {
    return _then(_$FailurePreparingTImeImpl(
      null == err
          ? _value.err
          : err // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$FailurePreparingTImeImpl implements _FailurePreparingTIme {
  const _$FailurePreparingTImeImpl(this.err);

  @override
  final String err;

  @override
  String toString() {
    return 'CartState.failurePreparingTIme(err: $err)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FailurePreparingTImeImpl &&
            (identical(other.err, err) || other.err == err));
  }

  @override
  int get hashCode => Object.hash(runtimeType, err);

  /// Create a copy of CartState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FailurePreparingTImeImplCopyWith<_$FailurePreparingTImeImpl>
      get copyWith =>
          __$$FailurePreparingTImeImplCopyWithImpl<_$FailurePreparingTImeImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function() successAdded,
    required TResult Function() successDeleted,
    required TResult Function() successCleared,
    required TResult Function() successUpdate,
    required TResult Function(String err) failure,
    required TResult Function(String err) failureGetUserCart,
    required TResult Function(String err) failureGetCartDetails,
    required TResult Function(String err) failureGetOftenProductCart,
    required TResult Function(String err) failureClearCart,
    required TResult Function(String err) failureRemoveItem,
    required TResult Function(String err) failureUpdateItem,
    required TResult Function(String err) failureAddCoupon,
    required TResult Function(String err) failureAddItem,
    required TResult Function(String err) failurePreparingTIme,
  }) {
    return failurePreparingTIme(err);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? success,
    TResult? Function()? successAdded,
    TResult? Function()? successDeleted,
    TResult? Function()? successCleared,
    TResult? Function()? successUpdate,
    TResult? Function(String err)? failure,
    TResult? Function(String err)? failureGetUserCart,
    TResult? Function(String err)? failureGetCartDetails,
    TResult? Function(String err)? failureGetOftenProductCart,
    TResult? Function(String err)? failureClearCart,
    TResult? Function(String err)? failureRemoveItem,
    TResult? Function(String err)? failureUpdateItem,
    TResult? Function(String err)? failureAddCoupon,
    TResult? Function(String err)? failureAddItem,
    TResult? Function(String err)? failurePreparingTIme,
  }) {
    return failurePreparingTIme?.call(err);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function()? successAdded,
    TResult Function()? successDeleted,
    TResult Function()? successCleared,
    TResult Function()? successUpdate,
    TResult Function(String err)? failure,
    TResult Function(String err)? failureGetUserCart,
    TResult Function(String err)? failureGetCartDetails,
    TResult Function(String err)? failureGetOftenProductCart,
    TResult Function(String err)? failureClearCart,
    TResult Function(String err)? failureRemoveItem,
    TResult Function(String err)? failureUpdateItem,
    TResult Function(String err)? failureAddCoupon,
    TResult Function(String err)? failureAddItem,
    TResult Function(String err)? failurePreparingTIme,
    required TResult orElse(),
  }) {
    if (failurePreparingTIme != null) {
      return failurePreparingTIme(err);
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
    required TResult Function(_SuccessDeleted value) successDeleted,
    required TResult Function(_SuccessCleared value) successCleared,
    required TResult Function(_SuccessUpdate value) successUpdate,
    required TResult Function(_Failure value) failure,
    required TResult Function(_FailureGetUserCart value) failureGetUserCart,
    required TResult Function(_FailureGetCartDetails value)
        failureGetCartDetails,
    required TResult Function(_FailureGetOftenProductCart value)
        failureGetOftenProductCart,
    required TResult Function(_FailureClearCart value) failureClearCart,
    required TResult Function(_FailureRemoveItem value) failureRemoveItem,
    required TResult Function(_FailureUpdateItem value) failureUpdateItem,
    required TResult Function(_FailureAddCoupon value) failureAddCoupon,
    required TResult Function(_FailureAddItem value) failureAddItem,
    required TResult Function(_FailurePreparingTIme value) failurePreparingTIme,
  }) {
    return failurePreparingTIme(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_SuccessAdded value)? successAdded,
    TResult? Function(_SuccessDeleted value)? successDeleted,
    TResult? Function(_SuccessCleared value)? successCleared,
    TResult? Function(_SuccessUpdate value)? successUpdate,
    TResult? Function(_Failure value)? failure,
    TResult? Function(_FailureGetUserCart value)? failureGetUserCart,
    TResult? Function(_FailureGetCartDetails value)? failureGetCartDetails,
    TResult? Function(_FailureGetOftenProductCart value)?
        failureGetOftenProductCart,
    TResult? Function(_FailureClearCart value)? failureClearCart,
    TResult? Function(_FailureRemoveItem value)? failureRemoveItem,
    TResult? Function(_FailureUpdateItem value)? failureUpdateItem,
    TResult? Function(_FailureAddCoupon value)? failureAddCoupon,
    TResult? Function(_FailureAddItem value)? failureAddItem,
    TResult? Function(_FailurePreparingTIme value)? failurePreparingTIme,
  }) {
    return failurePreparingTIme?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_SuccessAdded value)? successAdded,
    TResult Function(_SuccessDeleted value)? successDeleted,
    TResult Function(_SuccessCleared value)? successCleared,
    TResult Function(_SuccessUpdate value)? successUpdate,
    TResult Function(_Failure value)? failure,
    TResult Function(_FailureGetUserCart value)? failureGetUserCart,
    TResult Function(_FailureGetCartDetails value)? failureGetCartDetails,
    TResult Function(_FailureGetOftenProductCart value)?
        failureGetOftenProductCart,
    TResult Function(_FailureClearCart value)? failureClearCart,
    TResult Function(_FailureRemoveItem value)? failureRemoveItem,
    TResult Function(_FailureUpdateItem value)? failureUpdateItem,
    TResult Function(_FailureAddCoupon value)? failureAddCoupon,
    TResult Function(_FailureAddItem value)? failureAddItem,
    TResult Function(_FailurePreparingTIme value)? failurePreparingTIme,
    required TResult orElse(),
  }) {
    if (failurePreparingTIme != null) {
      return failurePreparingTIme(this);
    }
    return orElse();
  }
}

abstract class _FailurePreparingTIme implements CartState {
  const factory _FailurePreparingTIme(final String err) =
      _$FailurePreparingTImeImpl;

  String get err;

  /// Create a copy of CartState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FailurePreparingTImeImplCopyWith<_$FailurePreparingTImeImpl>
      get copyWith => throw _privateConstructorUsedError;
}
