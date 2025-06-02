// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AuthEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String type) signin,
    required TResult Function(String type) signup,
    required TResult Function(String type) confirmSignup,
    required TResult Function(String type) resendOtp,
    required TResult Function(String type) forgotPass,
    required TResult Function() createProfile,
    required TResult Function() chooseUserType,
    required TResult Function() resetPassword,
    required TResult Function(String type) getToken,
    required TResult Function() getUserInfo,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String type)? signin,
    TResult? Function(String type)? signup,
    TResult? Function(String type)? confirmSignup,
    TResult? Function(String type)? resendOtp,
    TResult? Function(String type)? forgotPass,
    TResult? Function()? createProfile,
    TResult? Function()? chooseUserType,
    TResult? Function()? resetPassword,
    TResult? Function(String type)? getToken,
    TResult? Function()? getUserInfo,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String type)? signin,
    TResult Function(String type)? signup,
    TResult Function(String type)? confirmSignup,
    TResult Function(String type)? resendOtp,
    TResult Function(String type)? forgotPass,
    TResult Function()? createProfile,
    TResult Function()? chooseUserType,
    TResult Function()? resetPassword,
    TResult Function(String type)? getToken,
    TResult Function()? getUserInfo,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Signin value) signin,
    required TResult Function(_Signup value) signup,
    required TResult Function(_ConfirmSignup value) confirmSignup,
    required TResult Function(_ResendOtp value) resendOtp,
    required TResult Function(_ForgotPass value) forgotPass,
    required TResult Function(_CreateProfile value) createProfile,
    required TResult Function(_ChooseUserType value) chooseUserType,
    required TResult Function(_ResetPassword value) resetPassword,
    required TResult Function(_GetToken value) getToken,
    required TResult Function(_GetUserInfo value) getUserInfo,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Signin value)? signin,
    TResult? Function(_Signup value)? signup,
    TResult? Function(_ConfirmSignup value)? confirmSignup,
    TResult? Function(_ResendOtp value)? resendOtp,
    TResult? Function(_ForgotPass value)? forgotPass,
    TResult? Function(_CreateProfile value)? createProfile,
    TResult? Function(_ChooseUserType value)? chooseUserType,
    TResult? Function(_ResetPassword value)? resetPassword,
    TResult? Function(_GetToken value)? getToken,
    TResult? Function(_GetUserInfo value)? getUserInfo,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Signin value)? signin,
    TResult Function(_Signup value)? signup,
    TResult Function(_ConfirmSignup value)? confirmSignup,
    TResult Function(_ResendOtp value)? resendOtp,
    TResult Function(_ForgotPass value)? forgotPass,
    TResult Function(_CreateProfile value)? createProfile,
    TResult Function(_ChooseUserType value)? chooseUserType,
    TResult Function(_ResetPassword value)? resetPassword,
    TResult Function(_GetToken value)? getToken,
    TResult Function(_GetUserInfo value)? getUserInfo,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthEventCopyWith<$Res> {
  factory $AuthEventCopyWith(AuthEvent value, $Res Function(AuthEvent) then) =
      _$AuthEventCopyWithImpl<$Res, AuthEvent>;
}

/// @nodoc
class _$AuthEventCopyWithImpl<$Res, $Val extends AuthEvent>
    implements $AuthEventCopyWith<$Res> {
  _$AuthEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$SigninImplCopyWith<$Res> {
  factory _$$SigninImplCopyWith(
          _$SigninImpl value, $Res Function(_$SigninImpl) then) =
      __$$SigninImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String type});
}

/// @nodoc
class __$$SigninImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$SigninImpl>
    implements _$$SigninImplCopyWith<$Res> {
  __$$SigninImplCopyWithImpl(
      _$SigninImpl _value, $Res Function(_$SigninImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
  }) {
    return _then(_$SigninImpl(
      null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SigninImpl implements _Signin {
  const _$SigninImpl(this.type);

  @override
  final String type;

  @override
  String toString() {
    return 'AuthEvent.signin(type: $type)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SigninImpl &&
            (identical(other.type, type) || other.type == type));
  }

  @override
  int get hashCode => Object.hash(runtimeType, type);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SigninImplCopyWith<_$SigninImpl> get copyWith =>
      __$$SigninImplCopyWithImpl<_$SigninImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String type) signin,
    required TResult Function(String type) signup,
    required TResult Function(String type) confirmSignup,
    required TResult Function(String type) resendOtp,
    required TResult Function(String type) forgotPass,
    required TResult Function() createProfile,
    required TResult Function() chooseUserType,
    required TResult Function() resetPassword,
    required TResult Function(String type) getToken,
    required TResult Function() getUserInfo,
  }) {
    return signin(type);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String type)? signin,
    TResult? Function(String type)? signup,
    TResult? Function(String type)? confirmSignup,
    TResult? Function(String type)? resendOtp,
    TResult? Function(String type)? forgotPass,
    TResult? Function()? createProfile,
    TResult? Function()? chooseUserType,
    TResult? Function()? resetPassword,
    TResult? Function(String type)? getToken,
    TResult? Function()? getUserInfo,
  }) {
    return signin?.call(type);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String type)? signin,
    TResult Function(String type)? signup,
    TResult Function(String type)? confirmSignup,
    TResult Function(String type)? resendOtp,
    TResult Function(String type)? forgotPass,
    TResult Function()? createProfile,
    TResult Function()? chooseUserType,
    TResult Function()? resetPassword,
    TResult Function(String type)? getToken,
    TResult Function()? getUserInfo,
    required TResult orElse(),
  }) {
    if (signin != null) {
      return signin(type);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Signin value) signin,
    required TResult Function(_Signup value) signup,
    required TResult Function(_ConfirmSignup value) confirmSignup,
    required TResult Function(_ResendOtp value) resendOtp,
    required TResult Function(_ForgotPass value) forgotPass,
    required TResult Function(_CreateProfile value) createProfile,
    required TResult Function(_ChooseUserType value) chooseUserType,
    required TResult Function(_ResetPassword value) resetPassword,
    required TResult Function(_GetToken value) getToken,
    required TResult Function(_GetUserInfo value) getUserInfo,
  }) {
    return signin(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Signin value)? signin,
    TResult? Function(_Signup value)? signup,
    TResult? Function(_ConfirmSignup value)? confirmSignup,
    TResult? Function(_ResendOtp value)? resendOtp,
    TResult? Function(_ForgotPass value)? forgotPass,
    TResult? Function(_CreateProfile value)? createProfile,
    TResult? Function(_ChooseUserType value)? chooseUserType,
    TResult? Function(_ResetPassword value)? resetPassword,
    TResult? Function(_GetToken value)? getToken,
    TResult? Function(_GetUserInfo value)? getUserInfo,
  }) {
    return signin?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Signin value)? signin,
    TResult Function(_Signup value)? signup,
    TResult Function(_ConfirmSignup value)? confirmSignup,
    TResult Function(_ResendOtp value)? resendOtp,
    TResult Function(_ForgotPass value)? forgotPass,
    TResult Function(_CreateProfile value)? createProfile,
    TResult Function(_ChooseUserType value)? chooseUserType,
    TResult Function(_ResetPassword value)? resetPassword,
    TResult Function(_GetToken value)? getToken,
    TResult Function(_GetUserInfo value)? getUserInfo,
    required TResult orElse(),
  }) {
    if (signin != null) {
      return signin(this);
    }
    return orElse();
  }
}

abstract class _Signin implements AuthEvent {
  const factory _Signin(final String type) = _$SigninImpl;

  String get type;

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SigninImplCopyWith<_$SigninImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SignupImplCopyWith<$Res> {
  factory _$$SignupImplCopyWith(
          _$SignupImpl value, $Res Function(_$SignupImpl) then) =
      __$$SignupImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String type});
}

/// @nodoc
class __$$SignupImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$SignupImpl>
    implements _$$SignupImplCopyWith<$Res> {
  __$$SignupImplCopyWithImpl(
      _$SignupImpl _value, $Res Function(_$SignupImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
  }) {
    return _then(_$SignupImpl(
      null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SignupImpl implements _Signup {
  const _$SignupImpl(this.type);

  @override
  final String type;

  @override
  String toString() {
    return 'AuthEvent.signup(type: $type)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignupImpl &&
            (identical(other.type, type) || other.type == type));
  }

  @override
  int get hashCode => Object.hash(runtimeType, type);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SignupImplCopyWith<_$SignupImpl> get copyWith =>
      __$$SignupImplCopyWithImpl<_$SignupImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String type) signin,
    required TResult Function(String type) signup,
    required TResult Function(String type) confirmSignup,
    required TResult Function(String type) resendOtp,
    required TResult Function(String type) forgotPass,
    required TResult Function() createProfile,
    required TResult Function() chooseUserType,
    required TResult Function() resetPassword,
    required TResult Function(String type) getToken,
    required TResult Function() getUserInfo,
  }) {
    return signup(type);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String type)? signin,
    TResult? Function(String type)? signup,
    TResult? Function(String type)? confirmSignup,
    TResult? Function(String type)? resendOtp,
    TResult? Function(String type)? forgotPass,
    TResult? Function()? createProfile,
    TResult? Function()? chooseUserType,
    TResult? Function()? resetPassword,
    TResult? Function(String type)? getToken,
    TResult? Function()? getUserInfo,
  }) {
    return signup?.call(type);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String type)? signin,
    TResult Function(String type)? signup,
    TResult Function(String type)? confirmSignup,
    TResult Function(String type)? resendOtp,
    TResult Function(String type)? forgotPass,
    TResult Function()? createProfile,
    TResult Function()? chooseUserType,
    TResult Function()? resetPassword,
    TResult Function(String type)? getToken,
    TResult Function()? getUserInfo,
    required TResult orElse(),
  }) {
    if (signup != null) {
      return signup(type);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Signin value) signin,
    required TResult Function(_Signup value) signup,
    required TResult Function(_ConfirmSignup value) confirmSignup,
    required TResult Function(_ResendOtp value) resendOtp,
    required TResult Function(_ForgotPass value) forgotPass,
    required TResult Function(_CreateProfile value) createProfile,
    required TResult Function(_ChooseUserType value) chooseUserType,
    required TResult Function(_ResetPassword value) resetPassword,
    required TResult Function(_GetToken value) getToken,
    required TResult Function(_GetUserInfo value) getUserInfo,
  }) {
    return signup(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Signin value)? signin,
    TResult? Function(_Signup value)? signup,
    TResult? Function(_ConfirmSignup value)? confirmSignup,
    TResult? Function(_ResendOtp value)? resendOtp,
    TResult? Function(_ForgotPass value)? forgotPass,
    TResult? Function(_CreateProfile value)? createProfile,
    TResult? Function(_ChooseUserType value)? chooseUserType,
    TResult? Function(_ResetPassword value)? resetPassword,
    TResult? Function(_GetToken value)? getToken,
    TResult? Function(_GetUserInfo value)? getUserInfo,
  }) {
    return signup?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Signin value)? signin,
    TResult Function(_Signup value)? signup,
    TResult Function(_ConfirmSignup value)? confirmSignup,
    TResult Function(_ResendOtp value)? resendOtp,
    TResult Function(_ForgotPass value)? forgotPass,
    TResult Function(_CreateProfile value)? createProfile,
    TResult Function(_ChooseUserType value)? chooseUserType,
    TResult Function(_ResetPassword value)? resetPassword,
    TResult Function(_GetToken value)? getToken,
    TResult Function(_GetUserInfo value)? getUserInfo,
    required TResult orElse(),
  }) {
    if (signup != null) {
      return signup(this);
    }
    return orElse();
  }
}

abstract class _Signup implements AuthEvent {
  const factory _Signup(final String type) = _$SignupImpl;

  String get type;

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SignupImplCopyWith<_$SignupImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ConfirmSignupImplCopyWith<$Res> {
  factory _$$ConfirmSignupImplCopyWith(
          _$ConfirmSignupImpl value, $Res Function(_$ConfirmSignupImpl) then) =
      __$$ConfirmSignupImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String type});
}

/// @nodoc
class __$$ConfirmSignupImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$ConfirmSignupImpl>
    implements _$$ConfirmSignupImplCopyWith<$Res> {
  __$$ConfirmSignupImplCopyWithImpl(
      _$ConfirmSignupImpl _value, $Res Function(_$ConfirmSignupImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
  }) {
    return _then(_$ConfirmSignupImpl(
      null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ConfirmSignupImpl implements _ConfirmSignup {
  const _$ConfirmSignupImpl(this.type);

  @override
  final String type;

  @override
  String toString() {
    return 'AuthEvent.confirmSignup(type: $type)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ConfirmSignupImpl &&
            (identical(other.type, type) || other.type == type));
  }

  @override
  int get hashCode => Object.hash(runtimeType, type);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ConfirmSignupImplCopyWith<_$ConfirmSignupImpl> get copyWith =>
      __$$ConfirmSignupImplCopyWithImpl<_$ConfirmSignupImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String type) signin,
    required TResult Function(String type) signup,
    required TResult Function(String type) confirmSignup,
    required TResult Function(String type) resendOtp,
    required TResult Function(String type) forgotPass,
    required TResult Function() createProfile,
    required TResult Function() chooseUserType,
    required TResult Function() resetPassword,
    required TResult Function(String type) getToken,
    required TResult Function() getUserInfo,
  }) {
    return confirmSignup(type);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String type)? signin,
    TResult? Function(String type)? signup,
    TResult? Function(String type)? confirmSignup,
    TResult? Function(String type)? resendOtp,
    TResult? Function(String type)? forgotPass,
    TResult? Function()? createProfile,
    TResult? Function()? chooseUserType,
    TResult? Function()? resetPassword,
    TResult? Function(String type)? getToken,
    TResult? Function()? getUserInfo,
  }) {
    return confirmSignup?.call(type);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String type)? signin,
    TResult Function(String type)? signup,
    TResult Function(String type)? confirmSignup,
    TResult Function(String type)? resendOtp,
    TResult Function(String type)? forgotPass,
    TResult Function()? createProfile,
    TResult Function()? chooseUserType,
    TResult Function()? resetPassword,
    TResult Function(String type)? getToken,
    TResult Function()? getUserInfo,
    required TResult orElse(),
  }) {
    if (confirmSignup != null) {
      return confirmSignup(type);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Signin value) signin,
    required TResult Function(_Signup value) signup,
    required TResult Function(_ConfirmSignup value) confirmSignup,
    required TResult Function(_ResendOtp value) resendOtp,
    required TResult Function(_ForgotPass value) forgotPass,
    required TResult Function(_CreateProfile value) createProfile,
    required TResult Function(_ChooseUserType value) chooseUserType,
    required TResult Function(_ResetPassword value) resetPassword,
    required TResult Function(_GetToken value) getToken,
    required TResult Function(_GetUserInfo value) getUserInfo,
  }) {
    return confirmSignup(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Signin value)? signin,
    TResult? Function(_Signup value)? signup,
    TResult? Function(_ConfirmSignup value)? confirmSignup,
    TResult? Function(_ResendOtp value)? resendOtp,
    TResult? Function(_ForgotPass value)? forgotPass,
    TResult? Function(_CreateProfile value)? createProfile,
    TResult? Function(_ChooseUserType value)? chooseUserType,
    TResult? Function(_ResetPassword value)? resetPassword,
    TResult? Function(_GetToken value)? getToken,
    TResult? Function(_GetUserInfo value)? getUserInfo,
  }) {
    return confirmSignup?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Signin value)? signin,
    TResult Function(_Signup value)? signup,
    TResult Function(_ConfirmSignup value)? confirmSignup,
    TResult Function(_ResendOtp value)? resendOtp,
    TResult Function(_ForgotPass value)? forgotPass,
    TResult Function(_CreateProfile value)? createProfile,
    TResult Function(_ChooseUserType value)? chooseUserType,
    TResult Function(_ResetPassword value)? resetPassword,
    TResult Function(_GetToken value)? getToken,
    TResult Function(_GetUserInfo value)? getUserInfo,
    required TResult orElse(),
  }) {
    if (confirmSignup != null) {
      return confirmSignup(this);
    }
    return orElse();
  }
}

abstract class _ConfirmSignup implements AuthEvent {
  const factory _ConfirmSignup(final String type) = _$ConfirmSignupImpl;

  String get type;

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ConfirmSignupImplCopyWith<_$ConfirmSignupImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ResendOtpImplCopyWith<$Res> {
  factory _$$ResendOtpImplCopyWith(
          _$ResendOtpImpl value, $Res Function(_$ResendOtpImpl) then) =
      __$$ResendOtpImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String type});
}

/// @nodoc
class __$$ResendOtpImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$ResendOtpImpl>
    implements _$$ResendOtpImplCopyWith<$Res> {
  __$$ResendOtpImplCopyWithImpl(
      _$ResendOtpImpl _value, $Res Function(_$ResendOtpImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
  }) {
    return _then(_$ResendOtpImpl(
      null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ResendOtpImpl implements _ResendOtp {
  const _$ResendOtpImpl(this.type);

  @override
  final String type;

  @override
  String toString() {
    return 'AuthEvent.resendOtp(type: $type)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResendOtpImpl &&
            (identical(other.type, type) || other.type == type));
  }

  @override
  int get hashCode => Object.hash(runtimeType, type);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ResendOtpImplCopyWith<_$ResendOtpImpl> get copyWith =>
      __$$ResendOtpImplCopyWithImpl<_$ResendOtpImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String type) signin,
    required TResult Function(String type) signup,
    required TResult Function(String type) confirmSignup,
    required TResult Function(String type) resendOtp,
    required TResult Function(String type) forgotPass,
    required TResult Function() createProfile,
    required TResult Function() chooseUserType,
    required TResult Function() resetPassword,
    required TResult Function(String type) getToken,
    required TResult Function() getUserInfo,
  }) {
    return resendOtp(type);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String type)? signin,
    TResult? Function(String type)? signup,
    TResult? Function(String type)? confirmSignup,
    TResult? Function(String type)? resendOtp,
    TResult? Function(String type)? forgotPass,
    TResult? Function()? createProfile,
    TResult? Function()? chooseUserType,
    TResult? Function()? resetPassword,
    TResult? Function(String type)? getToken,
    TResult? Function()? getUserInfo,
  }) {
    return resendOtp?.call(type);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String type)? signin,
    TResult Function(String type)? signup,
    TResult Function(String type)? confirmSignup,
    TResult Function(String type)? resendOtp,
    TResult Function(String type)? forgotPass,
    TResult Function()? createProfile,
    TResult Function()? chooseUserType,
    TResult Function()? resetPassword,
    TResult Function(String type)? getToken,
    TResult Function()? getUserInfo,
    required TResult orElse(),
  }) {
    if (resendOtp != null) {
      return resendOtp(type);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Signin value) signin,
    required TResult Function(_Signup value) signup,
    required TResult Function(_ConfirmSignup value) confirmSignup,
    required TResult Function(_ResendOtp value) resendOtp,
    required TResult Function(_ForgotPass value) forgotPass,
    required TResult Function(_CreateProfile value) createProfile,
    required TResult Function(_ChooseUserType value) chooseUserType,
    required TResult Function(_ResetPassword value) resetPassword,
    required TResult Function(_GetToken value) getToken,
    required TResult Function(_GetUserInfo value) getUserInfo,
  }) {
    return resendOtp(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Signin value)? signin,
    TResult? Function(_Signup value)? signup,
    TResult? Function(_ConfirmSignup value)? confirmSignup,
    TResult? Function(_ResendOtp value)? resendOtp,
    TResult? Function(_ForgotPass value)? forgotPass,
    TResult? Function(_CreateProfile value)? createProfile,
    TResult? Function(_ChooseUserType value)? chooseUserType,
    TResult? Function(_ResetPassword value)? resetPassword,
    TResult? Function(_GetToken value)? getToken,
    TResult? Function(_GetUserInfo value)? getUserInfo,
  }) {
    return resendOtp?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Signin value)? signin,
    TResult Function(_Signup value)? signup,
    TResult Function(_ConfirmSignup value)? confirmSignup,
    TResult Function(_ResendOtp value)? resendOtp,
    TResult Function(_ForgotPass value)? forgotPass,
    TResult Function(_CreateProfile value)? createProfile,
    TResult Function(_ChooseUserType value)? chooseUserType,
    TResult Function(_ResetPassword value)? resetPassword,
    TResult Function(_GetToken value)? getToken,
    TResult Function(_GetUserInfo value)? getUserInfo,
    required TResult orElse(),
  }) {
    if (resendOtp != null) {
      return resendOtp(this);
    }
    return orElse();
  }
}

abstract class _ResendOtp implements AuthEvent {
  const factory _ResendOtp(final String type) = _$ResendOtpImpl;

  String get type;

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ResendOtpImplCopyWith<_$ResendOtpImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ForgotPassImplCopyWith<$Res> {
  factory _$$ForgotPassImplCopyWith(
          _$ForgotPassImpl value, $Res Function(_$ForgotPassImpl) then) =
      __$$ForgotPassImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String type});
}

/// @nodoc
class __$$ForgotPassImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$ForgotPassImpl>
    implements _$$ForgotPassImplCopyWith<$Res> {
  __$$ForgotPassImplCopyWithImpl(
      _$ForgotPassImpl _value, $Res Function(_$ForgotPassImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
  }) {
    return _then(_$ForgotPassImpl(
      null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ForgotPassImpl implements _ForgotPass {
  const _$ForgotPassImpl(this.type);

  @override
  final String type;

  @override
  String toString() {
    return 'AuthEvent.forgotPass(type: $type)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ForgotPassImpl &&
            (identical(other.type, type) || other.type == type));
  }

  @override
  int get hashCode => Object.hash(runtimeType, type);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ForgotPassImplCopyWith<_$ForgotPassImpl> get copyWith =>
      __$$ForgotPassImplCopyWithImpl<_$ForgotPassImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String type) signin,
    required TResult Function(String type) signup,
    required TResult Function(String type) confirmSignup,
    required TResult Function(String type) resendOtp,
    required TResult Function(String type) forgotPass,
    required TResult Function() createProfile,
    required TResult Function() chooseUserType,
    required TResult Function() resetPassword,
    required TResult Function(String type) getToken,
    required TResult Function() getUserInfo,
  }) {
    return forgotPass(type);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String type)? signin,
    TResult? Function(String type)? signup,
    TResult? Function(String type)? confirmSignup,
    TResult? Function(String type)? resendOtp,
    TResult? Function(String type)? forgotPass,
    TResult? Function()? createProfile,
    TResult? Function()? chooseUserType,
    TResult? Function()? resetPassword,
    TResult? Function(String type)? getToken,
    TResult? Function()? getUserInfo,
  }) {
    return forgotPass?.call(type);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String type)? signin,
    TResult Function(String type)? signup,
    TResult Function(String type)? confirmSignup,
    TResult Function(String type)? resendOtp,
    TResult Function(String type)? forgotPass,
    TResult Function()? createProfile,
    TResult Function()? chooseUserType,
    TResult Function()? resetPassword,
    TResult Function(String type)? getToken,
    TResult Function()? getUserInfo,
    required TResult orElse(),
  }) {
    if (forgotPass != null) {
      return forgotPass(type);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Signin value) signin,
    required TResult Function(_Signup value) signup,
    required TResult Function(_ConfirmSignup value) confirmSignup,
    required TResult Function(_ResendOtp value) resendOtp,
    required TResult Function(_ForgotPass value) forgotPass,
    required TResult Function(_CreateProfile value) createProfile,
    required TResult Function(_ChooseUserType value) chooseUserType,
    required TResult Function(_ResetPassword value) resetPassword,
    required TResult Function(_GetToken value) getToken,
    required TResult Function(_GetUserInfo value) getUserInfo,
  }) {
    return forgotPass(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Signin value)? signin,
    TResult? Function(_Signup value)? signup,
    TResult? Function(_ConfirmSignup value)? confirmSignup,
    TResult? Function(_ResendOtp value)? resendOtp,
    TResult? Function(_ForgotPass value)? forgotPass,
    TResult? Function(_CreateProfile value)? createProfile,
    TResult? Function(_ChooseUserType value)? chooseUserType,
    TResult? Function(_ResetPassword value)? resetPassword,
    TResult? Function(_GetToken value)? getToken,
    TResult? Function(_GetUserInfo value)? getUserInfo,
  }) {
    return forgotPass?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Signin value)? signin,
    TResult Function(_Signup value)? signup,
    TResult Function(_ConfirmSignup value)? confirmSignup,
    TResult Function(_ResendOtp value)? resendOtp,
    TResult Function(_ForgotPass value)? forgotPass,
    TResult Function(_CreateProfile value)? createProfile,
    TResult Function(_ChooseUserType value)? chooseUserType,
    TResult Function(_ResetPassword value)? resetPassword,
    TResult Function(_GetToken value)? getToken,
    TResult Function(_GetUserInfo value)? getUserInfo,
    required TResult orElse(),
  }) {
    if (forgotPass != null) {
      return forgotPass(this);
    }
    return orElse();
  }
}

abstract class _ForgotPass implements AuthEvent {
  const factory _ForgotPass(final String type) = _$ForgotPassImpl;

  String get type;

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ForgotPassImplCopyWith<_$ForgotPassImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CreateProfileImplCopyWith<$Res> {
  factory _$$CreateProfileImplCopyWith(
          _$CreateProfileImpl value, $Res Function(_$CreateProfileImpl) then) =
      __$$CreateProfileImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CreateProfileImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$CreateProfileImpl>
    implements _$$CreateProfileImplCopyWith<$Res> {
  __$$CreateProfileImplCopyWithImpl(
      _$CreateProfileImpl _value, $Res Function(_$CreateProfileImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$CreateProfileImpl implements _CreateProfile {
  const _$CreateProfileImpl();

  @override
  String toString() {
    return 'AuthEvent.createProfile()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CreateProfileImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String type) signin,
    required TResult Function(String type) signup,
    required TResult Function(String type) confirmSignup,
    required TResult Function(String type) resendOtp,
    required TResult Function(String type) forgotPass,
    required TResult Function() createProfile,
    required TResult Function() chooseUserType,
    required TResult Function() resetPassword,
    required TResult Function(String type) getToken,
    required TResult Function() getUserInfo,
  }) {
    return createProfile();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String type)? signin,
    TResult? Function(String type)? signup,
    TResult? Function(String type)? confirmSignup,
    TResult? Function(String type)? resendOtp,
    TResult? Function(String type)? forgotPass,
    TResult? Function()? createProfile,
    TResult? Function()? chooseUserType,
    TResult? Function()? resetPassword,
    TResult? Function(String type)? getToken,
    TResult? Function()? getUserInfo,
  }) {
    return createProfile?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String type)? signin,
    TResult Function(String type)? signup,
    TResult Function(String type)? confirmSignup,
    TResult Function(String type)? resendOtp,
    TResult Function(String type)? forgotPass,
    TResult Function()? createProfile,
    TResult Function()? chooseUserType,
    TResult Function()? resetPassword,
    TResult Function(String type)? getToken,
    TResult Function()? getUserInfo,
    required TResult orElse(),
  }) {
    if (createProfile != null) {
      return createProfile();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Signin value) signin,
    required TResult Function(_Signup value) signup,
    required TResult Function(_ConfirmSignup value) confirmSignup,
    required TResult Function(_ResendOtp value) resendOtp,
    required TResult Function(_ForgotPass value) forgotPass,
    required TResult Function(_CreateProfile value) createProfile,
    required TResult Function(_ChooseUserType value) chooseUserType,
    required TResult Function(_ResetPassword value) resetPassword,
    required TResult Function(_GetToken value) getToken,
    required TResult Function(_GetUserInfo value) getUserInfo,
  }) {
    return createProfile(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Signin value)? signin,
    TResult? Function(_Signup value)? signup,
    TResult? Function(_ConfirmSignup value)? confirmSignup,
    TResult? Function(_ResendOtp value)? resendOtp,
    TResult? Function(_ForgotPass value)? forgotPass,
    TResult? Function(_CreateProfile value)? createProfile,
    TResult? Function(_ChooseUserType value)? chooseUserType,
    TResult? Function(_ResetPassword value)? resetPassword,
    TResult? Function(_GetToken value)? getToken,
    TResult? Function(_GetUserInfo value)? getUserInfo,
  }) {
    return createProfile?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Signin value)? signin,
    TResult Function(_Signup value)? signup,
    TResult Function(_ConfirmSignup value)? confirmSignup,
    TResult Function(_ResendOtp value)? resendOtp,
    TResult Function(_ForgotPass value)? forgotPass,
    TResult Function(_CreateProfile value)? createProfile,
    TResult Function(_ChooseUserType value)? chooseUserType,
    TResult Function(_ResetPassword value)? resetPassword,
    TResult Function(_GetToken value)? getToken,
    TResult Function(_GetUserInfo value)? getUserInfo,
    required TResult orElse(),
  }) {
    if (createProfile != null) {
      return createProfile(this);
    }
    return orElse();
  }
}

abstract class _CreateProfile implements AuthEvent {
  const factory _CreateProfile() = _$CreateProfileImpl;
}

/// @nodoc
abstract class _$$ChooseUserTypeImplCopyWith<$Res> {
  factory _$$ChooseUserTypeImplCopyWith(_$ChooseUserTypeImpl value,
          $Res Function(_$ChooseUserTypeImpl) then) =
      __$$ChooseUserTypeImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ChooseUserTypeImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$ChooseUserTypeImpl>
    implements _$$ChooseUserTypeImplCopyWith<$Res> {
  __$$ChooseUserTypeImplCopyWithImpl(
      _$ChooseUserTypeImpl _value, $Res Function(_$ChooseUserTypeImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ChooseUserTypeImpl implements _ChooseUserType {
  const _$ChooseUserTypeImpl();

  @override
  String toString() {
    return 'AuthEvent.chooseUserType()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ChooseUserTypeImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String type) signin,
    required TResult Function(String type) signup,
    required TResult Function(String type) confirmSignup,
    required TResult Function(String type) resendOtp,
    required TResult Function(String type) forgotPass,
    required TResult Function() createProfile,
    required TResult Function() chooseUserType,
    required TResult Function() resetPassword,
    required TResult Function(String type) getToken,
    required TResult Function() getUserInfo,
  }) {
    return chooseUserType();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String type)? signin,
    TResult? Function(String type)? signup,
    TResult? Function(String type)? confirmSignup,
    TResult? Function(String type)? resendOtp,
    TResult? Function(String type)? forgotPass,
    TResult? Function()? createProfile,
    TResult? Function()? chooseUserType,
    TResult? Function()? resetPassword,
    TResult? Function(String type)? getToken,
    TResult? Function()? getUserInfo,
  }) {
    return chooseUserType?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String type)? signin,
    TResult Function(String type)? signup,
    TResult Function(String type)? confirmSignup,
    TResult Function(String type)? resendOtp,
    TResult Function(String type)? forgotPass,
    TResult Function()? createProfile,
    TResult Function()? chooseUserType,
    TResult Function()? resetPassword,
    TResult Function(String type)? getToken,
    TResult Function()? getUserInfo,
    required TResult orElse(),
  }) {
    if (chooseUserType != null) {
      return chooseUserType();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Signin value) signin,
    required TResult Function(_Signup value) signup,
    required TResult Function(_ConfirmSignup value) confirmSignup,
    required TResult Function(_ResendOtp value) resendOtp,
    required TResult Function(_ForgotPass value) forgotPass,
    required TResult Function(_CreateProfile value) createProfile,
    required TResult Function(_ChooseUserType value) chooseUserType,
    required TResult Function(_ResetPassword value) resetPassword,
    required TResult Function(_GetToken value) getToken,
    required TResult Function(_GetUserInfo value) getUserInfo,
  }) {
    return chooseUserType(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Signin value)? signin,
    TResult? Function(_Signup value)? signup,
    TResult? Function(_ConfirmSignup value)? confirmSignup,
    TResult? Function(_ResendOtp value)? resendOtp,
    TResult? Function(_ForgotPass value)? forgotPass,
    TResult? Function(_CreateProfile value)? createProfile,
    TResult? Function(_ChooseUserType value)? chooseUserType,
    TResult? Function(_ResetPassword value)? resetPassword,
    TResult? Function(_GetToken value)? getToken,
    TResult? Function(_GetUserInfo value)? getUserInfo,
  }) {
    return chooseUserType?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Signin value)? signin,
    TResult Function(_Signup value)? signup,
    TResult Function(_ConfirmSignup value)? confirmSignup,
    TResult Function(_ResendOtp value)? resendOtp,
    TResult Function(_ForgotPass value)? forgotPass,
    TResult Function(_CreateProfile value)? createProfile,
    TResult Function(_ChooseUserType value)? chooseUserType,
    TResult Function(_ResetPassword value)? resetPassword,
    TResult Function(_GetToken value)? getToken,
    TResult Function(_GetUserInfo value)? getUserInfo,
    required TResult orElse(),
  }) {
    if (chooseUserType != null) {
      return chooseUserType(this);
    }
    return orElse();
  }
}

abstract class _ChooseUserType implements AuthEvent {
  const factory _ChooseUserType() = _$ChooseUserTypeImpl;
}

/// @nodoc
abstract class _$$ResetPasswordImplCopyWith<$Res> {
  factory _$$ResetPasswordImplCopyWith(
          _$ResetPasswordImpl value, $Res Function(_$ResetPasswordImpl) then) =
      __$$ResetPasswordImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ResetPasswordImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$ResetPasswordImpl>
    implements _$$ResetPasswordImplCopyWith<$Res> {
  __$$ResetPasswordImplCopyWithImpl(
      _$ResetPasswordImpl _value, $Res Function(_$ResetPasswordImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ResetPasswordImpl implements _ResetPassword {
  const _$ResetPasswordImpl();

  @override
  String toString() {
    return 'AuthEvent.resetPassword()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ResetPasswordImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String type) signin,
    required TResult Function(String type) signup,
    required TResult Function(String type) confirmSignup,
    required TResult Function(String type) resendOtp,
    required TResult Function(String type) forgotPass,
    required TResult Function() createProfile,
    required TResult Function() chooseUserType,
    required TResult Function() resetPassword,
    required TResult Function(String type) getToken,
    required TResult Function() getUserInfo,
  }) {
    return resetPassword();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String type)? signin,
    TResult? Function(String type)? signup,
    TResult? Function(String type)? confirmSignup,
    TResult? Function(String type)? resendOtp,
    TResult? Function(String type)? forgotPass,
    TResult? Function()? createProfile,
    TResult? Function()? chooseUserType,
    TResult? Function()? resetPassword,
    TResult? Function(String type)? getToken,
    TResult? Function()? getUserInfo,
  }) {
    return resetPassword?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String type)? signin,
    TResult Function(String type)? signup,
    TResult Function(String type)? confirmSignup,
    TResult Function(String type)? resendOtp,
    TResult Function(String type)? forgotPass,
    TResult Function()? createProfile,
    TResult Function()? chooseUserType,
    TResult Function()? resetPassword,
    TResult Function(String type)? getToken,
    TResult Function()? getUserInfo,
    required TResult orElse(),
  }) {
    if (resetPassword != null) {
      return resetPassword();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Signin value) signin,
    required TResult Function(_Signup value) signup,
    required TResult Function(_ConfirmSignup value) confirmSignup,
    required TResult Function(_ResendOtp value) resendOtp,
    required TResult Function(_ForgotPass value) forgotPass,
    required TResult Function(_CreateProfile value) createProfile,
    required TResult Function(_ChooseUserType value) chooseUserType,
    required TResult Function(_ResetPassword value) resetPassword,
    required TResult Function(_GetToken value) getToken,
    required TResult Function(_GetUserInfo value) getUserInfo,
  }) {
    return resetPassword(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Signin value)? signin,
    TResult? Function(_Signup value)? signup,
    TResult? Function(_ConfirmSignup value)? confirmSignup,
    TResult? Function(_ResendOtp value)? resendOtp,
    TResult? Function(_ForgotPass value)? forgotPass,
    TResult? Function(_CreateProfile value)? createProfile,
    TResult? Function(_ChooseUserType value)? chooseUserType,
    TResult? Function(_ResetPassword value)? resetPassword,
    TResult? Function(_GetToken value)? getToken,
    TResult? Function(_GetUserInfo value)? getUserInfo,
  }) {
    return resetPassword?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Signin value)? signin,
    TResult Function(_Signup value)? signup,
    TResult Function(_ConfirmSignup value)? confirmSignup,
    TResult Function(_ResendOtp value)? resendOtp,
    TResult Function(_ForgotPass value)? forgotPass,
    TResult Function(_CreateProfile value)? createProfile,
    TResult Function(_ChooseUserType value)? chooseUserType,
    TResult Function(_ResetPassword value)? resetPassword,
    TResult Function(_GetToken value)? getToken,
    TResult Function(_GetUserInfo value)? getUserInfo,
    required TResult orElse(),
  }) {
    if (resetPassword != null) {
      return resetPassword(this);
    }
    return orElse();
  }
}

abstract class _ResetPassword implements AuthEvent {
  const factory _ResetPassword() = _$ResetPasswordImpl;
}

/// @nodoc
abstract class _$$GetTokenImplCopyWith<$Res> {
  factory _$$GetTokenImplCopyWith(
          _$GetTokenImpl value, $Res Function(_$GetTokenImpl) then) =
      __$$GetTokenImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String type});
}

/// @nodoc
class __$$GetTokenImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$GetTokenImpl>
    implements _$$GetTokenImplCopyWith<$Res> {
  __$$GetTokenImplCopyWithImpl(
      _$GetTokenImpl _value, $Res Function(_$GetTokenImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
  }) {
    return _then(_$GetTokenImpl(
      null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetTokenImpl implements _GetToken {
  const _$GetTokenImpl(this.type);

  @override
  final String type;

  @override
  String toString() {
    return 'AuthEvent.getToken(type: $type)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetTokenImpl &&
            (identical(other.type, type) || other.type == type));
  }

  @override
  int get hashCode => Object.hash(runtimeType, type);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetTokenImplCopyWith<_$GetTokenImpl> get copyWith =>
      __$$GetTokenImplCopyWithImpl<_$GetTokenImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String type) signin,
    required TResult Function(String type) signup,
    required TResult Function(String type) confirmSignup,
    required TResult Function(String type) resendOtp,
    required TResult Function(String type) forgotPass,
    required TResult Function() createProfile,
    required TResult Function() chooseUserType,
    required TResult Function() resetPassword,
    required TResult Function(String type) getToken,
    required TResult Function() getUserInfo,
  }) {
    return getToken(type);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String type)? signin,
    TResult? Function(String type)? signup,
    TResult? Function(String type)? confirmSignup,
    TResult? Function(String type)? resendOtp,
    TResult? Function(String type)? forgotPass,
    TResult? Function()? createProfile,
    TResult? Function()? chooseUserType,
    TResult? Function()? resetPassword,
    TResult? Function(String type)? getToken,
    TResult? Function()? getUserInfo,
  }) {
    return getToken?.call(type);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String type)? signin,
    TResult Function(String type)? signup,
    TResult Function(String type)? confirmSignup,
    TResult Function(String type)? resendOtp,
    TResult Function(String type)? forgotPass,
    TResult Function()? createProfile,
    TResult Function()? chooseUserType,
    TResult Function()? resetPassword,
    TResult Function(String type)? getToken,
    TResult Function()? getUserInfo,
    required TResult orElse(),
  }) {
    if (getToken != null) {
      return getToken(type);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Signin value) signin,
    required TResult Function(_Signup value) signup,
    required TResult Function(_ConfirmSignup value) confirmSignup,
    required TResult Function(_ResendOtp value) resendOtp,
    required TResult Function(_ForgotPass value) forgotPass,
    required TResult Function(_CreateProfile value) createProfile,
    required TResult Function(_ChooseUserType value) chooseUserType,
    required TResult Function(_ResetPassword value) resetPassword,
    required TResult Function(_GetToken value) getToken,
    required TResult Function(_GetUserInfo value) getUserInfo,
  }) {
    return getToken(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Signin value)? signin,
    TResult? Function(_Signup value)? signup,
    TResult? Function(_ConfirmSignup value)? confirmSignup,
    TResult? Function(_ResendOtp value)? resendOtp,
    TResult? Function(_ForgotPass value)? forgotPass,
    TResult? Function(_CreateProfile value)? createProfile,
    TResult? Function(_ChooseUserType value)? chooseUserType,
    TResult? Function(_ResetPassword value)? resetPassword,
    TResult? Function(_GetToken value)? getToken,
    TResult? Function(_GetUserInfo value)? getUserInfo,
  }) {
    return getToken?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Signin value)? signin,
    TResult Function(_Signup value)? signup,
    TResult Function(_ConfirmSignup value)? confirmSignup,
    TResult Function(_ResendOtp value)? resendOtp,
    TResult Function(_ForgotPass value)? forgotPass,
    TResult Function(_CreateProfile value)? createProfile,
    TResult Function(_ChooseUserType value)? chooseUserType,
    TResult Function(_ResetPassword value)? resetPassword,
    TResult Function(_GetToken value)? getToken,
    TResult Function(_GetUserInfo value)? getUserInfo,
    required TResult orElse(),
  }) {
    if (getToken != null) {
      return getToken(this);
    }
    return orElse();
  }
}

abstract class _GetToken implements AuthEvent {
  const factory _GetToken(final String type) = _$GetTokenImpl;

  String get type;

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetTokenImplCopyWith<_$GetTokenImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetUserInfoImplCopyWith<$Res> {
  factory _$$GetUserInfoImplCopyWith(
          _$GetUserInfoImpl value, $Res Function(_$GetUserInfoImpl) then) =
      __$$GetUserInfoImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetUserInfoImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$GetUserInfoImpl>
    implements _$$GetUserInfoImplCopyWith<$Res> {
  __$$GetUserInfoImplCopyWithImpl(
      _$GetUserInfoImpl _value, $Res Function(_$GetUserInfoImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$GetUserInfoImpl implements _GetUserInfo {
  const _$GetUserInfoImpl();

  @override
  String toString() {
    return 'AuthEvent.getUserInfo()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetUserInfoImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String type) signin,
    required TResult Function(String type) signup,
    required TResult Function(String type) confirmSignup,
    required TResult Function(String type) resendOtp,
    required TResult Function(String type) forgotPass,
    required TResult Function() createProfile,
    required TResult Function() chooseUserType,
    required TResult Function() resetPassword,
    required TResult Function(String type) getToken,
    required TResult Function() getUserInfo,
  }) {
    return getUserInfo();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String type)? signin,
    TResult? Function(String type)? signup,
    TResult? Function(String type)? confirmSignup,
    TResult? Function(String type)? resendOtp,
    TResult? Function(String type)? forgotPass,
    TResult? Function()? createProfile,
    TResult? Function()? chooseUserType,
    TResult? Function()? resetPassword,
    TResult? Function(String type)? getToken,
    TResult? Function()? getUserInfo,
  }) {
    return getUserInfo?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String type)? signin,
    TResult Function(String type)? signup,
    TResult Function(String type)? confirmSignup,
    TResult Function(String type)? resendOtp,
    TResult Function(String type)? forgotPass,
    TResult Function()? createProfile,
    TResult Function()? chooseUserType,
    TResult Function()? resetPassword,
    TResult Function(String type)? getToken,
    TResult Function()? getUserInfo,
    required TResult orElse(),
  }) {
    if (getUserInfo != null) {
      return getUserInfo();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Signin value) signin,
    required TResult Function(_Signup value) signup,
    required TResult Function(_ConfirmSignup value) confirmSignup,
    required TResult Function(_ResendOtp value) resendOtp,
    required TResult Function(_ForgotPass value) forgotPass,
    required TResult Function(_CreateProfile value) createProfile,
    required TResult Function(_ChooseUserType value) chooseUserType,
    required TResult Function(_ResetPassword value) resetPassword,
    required TResult Function(_GetToken value) getToken,
    required TResult Function(_GetUserInfo value) getUserInfo,
  }) {
    return getUserInfo(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Signin value)? signin,
    TResult? Function(_Signup value)? signup,
    TResult? Function(_ConfirmSignup value)? confirmSignup,
    TResult? Function(_ResendOtp value)? resendOtp,
    TResult? Function(_ForgotPass value)? forgotPass,
    TResult? Function(_CreateProfile value)? createProfile,
    TResult? Function(_ChooseUserType value)? chooseUserType,
    TResult? Function(_ResetPassword value)? resetPassword,
    TResult? Function(_GetToken value)? getToken,
    TResult? Function(_GetUserInfo value)? getUserInfo,
  }) {
    return getUserInfo?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Signin value)? signin,
    TResult Function(_Signup value)? signup,
    TResult Function(_ConfirmSignup value)? confirmSignup,
    TResult Function(_ResendOtp value)? resendOtp,
    TResult Function(_ForgotPass value)? forgotPass,
    TResult Function(_CreateProfile value)? createProfile,
    TResult Function(_ChooseUserType value)? chooseUserType,
    TResult Function(_ResetPassword value)? resetPassword,
    TResult Function(_GetToken value)? getToken,
    TResult Function(_GetUserInfo value)? getUserInfo,
    required TResult orElse(),
  }) {
    if (getUserInfo != null) {
      return getUserInfo(this);
    }
    return orElse();
  }
}

abstract class _GetUserInfo implements AuthEvent {
  const factory _GetUserInfo() = _$GetUserInfoImpl;
}

/// @nodoc
mixin _$AuthState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function(String errMsg) failure,
    required TResult Function() successForgot,
    required TResult Function() successOtp,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? success,
    TResult? Function(String errMsg)? failure,
    TResult? Function()? successForgot,
    TResult? Function()? successOtp,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function(String errMsg)? failure,
    TResult Function()? successForgot,
    TResult Function()? successOtp,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Failure value) failure,
    required TResult Function(_SuccessForgot value) successForgot,
    required TResult Function(_SuccessOtp value) successOtp,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Failure value)? failure,
    TResult? Function(_SuccessForgot value)? successForgot,
    TResult? Function(_SuccessOtp value)? successOtp,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Failure value)? failure,
    TResult Function(_SuccessForgot value)? successForgot,
    TResult Function(_SuccessOtp value)? successOtp,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthStateCopyWith<$Res> {
  factory $AuthStateCopyWith(AuthState value, $Res Function(AuthState) then) =
      _$AuthStateCopyWithImpl<$Res, AuthState>;
}

/// @nodoc
class _$AuthStateCopyWithImpl<$Res, $Val extends AuthState>
    implements $AuthStateCopyWith<$Res> {
  _$AuthStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AuthState
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
    extends _$AuthStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'AuthState.initial()';
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
    required TResult Function(String errMsg) failure,
    required TResult Function() successForgot,
    required TResult Function() successOtp,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? success,
    TResult? Function(String errMsg)? failure,
    TResult? Function()? successForgot,
    TResult? Function()? successOtp,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function(String errMsg)? failure,
    TResult Function()? successForgot,
    TResult Function()? successOtp,
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
    required TResult Function(_SuccessForgot value) successForgot,
    required TResult Function(_SuccessOtp value) successOtp,
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
    TResult? Function(_SuccessForgot value)? successForgot,
    TResult? Function(_SuccessOtp value)? successOtp,
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
    TResult Function(_SuccessForgot value)? successForgot,
    TResult Function(_SuccessOtp value)? successOtp,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements AuthState {
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
    extends _$AuthStateCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
      _$LoadingImpl _value, $Res Function(_$LoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadingImpl implements _Loading {
  const _$LoadingImpl();

  @override
  String toString() {
    return 'AuthState.loading()';
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
    required TResult Function(String errMsg) failure,
    required TResult Function() successForgot,
    required TResult Function() successOtp,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? success,
    TResult? Function(String errMsg)? failure,
    TResult? Function()? successForgot,
    TResult? Function()? successOtp,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function(String errMsg)? failure,
    TResult Function()? successForgot,
    TResult Function()? successOtp,
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
    required TResult Function(_SuccessForgot value) successForgot,
    required TResult Function(_SuccessOtp value) successOtp,
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
    TResult? Function(_SuccessForgot value)? successForgot,
    TResult? Function(_SuccessOtp value)? successOtp,
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
    TResult Function(_SuccessForgot value)? successForgot,
    TResult Function(_SuccessOtp value)? successOtp,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements AuthState {
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
    extends _$AuthStateCopyWithImpl<$Res, _$SuccessImpl>
    implements _$$SuccessImplCopyWith<$Res> {
  __$$SuccessImplCopyWithImpl(
      _$SuccessImpl _value, $Res Function(_$SuccessImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$SuccessImpl implements _Success {
  const _$SuccessImpl();

  @override
  String toString() {
    return 'AuthState.success()';
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
    required TResult Function(String errMsg) failure,
    required TResult Function() successForgot,
    required TResult Function() successOtp,
  }) {
    return success();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? success,
    TResult? Function(String errMsg)? failure,
    TResult? Function()? successForgot,
    TResult? Function()? successOtp,
  }) {
    return success?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function(String errMsg)? failure,
    TResult Function()? successForgot,
    TResult Function()? successOtp,
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
    required TResult Function(_SuccessForgot value) successForgot,
    required TResult Function(_SuccessOtp value) successOtp,
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
    TResult? Function(_SuccessForgot value)? successForgot,
    TResult? Function(_SuccessOtp value)? successOtp,
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
    TResult Function(_SuccessForgot value)? successForgot,
    TResult Function(_SuccessOtp value)? successOtp,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _Success implements AuthState {
  const factory _Success() = _$SuccessImpl;
}

/// @nodoc
abstract class _$$FailureImplCopyWith<$Res> {
  factory _$$FailureImplCopyWith(
          _$FailureImpl value, $Res Function(_$FailureImpl) then) =
      __$$FailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String errMsg});
}

/// @nodoc
class __$$FailureImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$FailureImpl>
    implements _$$FailureImplCopyWith<$Res> {
  __$$FailureImplCopyWithImpl(
      _$FailureImpl _value, $Res Function(_$FailureImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errMsg = null,
  }) {
    return _then(_$FailureImpl(
      null == errMsg
          ? _value.errMsg
          : errMsg // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$FailureImpl implements _Failure {
  const _$FailureImpl(this.errMsg);

  @override
  final String errMsg;

  @override
  String toString() {
    return 'AuthState.failure(errMsg: $errMsg)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FailureImpl &&
            (identical(other.errMsg, errMsg) || other.errMsg == errMsg));
  }

  @override
  int get hashCode => Object.hash(runtimeType, errMsg);

  /// Create a copy of AuthState
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
    required TResult Function(String errMsg) failure,
    required TResult Function() successForgot,
    required TResult Function() successOtp,
  }) {
    return failure(errMsg);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? success,
    TResult? Function(String errMsg)? failure,
    TResult? Function()? successForgot,
    TResult? Function()? successOtp,
  }) {
    return failure?.call(errMsg);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function(String errMsg)? failure,
    TResult Function()? successForgot,
    TResult Function()? successOtp,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(errMsg);
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
    required TResult Function(_SuccessForgot value) successForgot,
    required TResult Function(_SuccessOtp value) successOtp,
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
    TResult? Function(_SuccessForgot value)? successForgot,
    TResult? Function(_SuccessOtp value)? successOtp,
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
    TResult Function(_SuccessForgot value)? successForgot,
    TResult Function(_SuccessOtp value)? successOtp,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class _Failure implements AuthState {
  const factory _Failure(final String errMsg) = _$FailureImpl;

  String get errMsg;

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FailureImplCopyWith<_$FailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SuccessForgotImplCopyWith<$Res> {
  factory _$$SuccessForgotImplCopyWith(
          _$SuccessForgotImpl value, $Res Function(_$SuccessForgotImpl) then) =
      __$$SuccessForgotImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SuccessForgotImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$SuccessForgotImpl>
    implements _$$SuccessForgotImplCopyWith<$Res> {
  __$$SuccessForgotImplCopyWithImpl(
      _$SuccessForgotImpl _value, $Res Function(_$SuccessForgotImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$SuccessForgotImpl implements _SuccessForgot {
  const _$SuccessForgotImpl();

  @override
  String toString() {
    return 'AuthState.successForgot()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SuccessForgotImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function(String errMsg) failure,
    required TResult Function() successForgot,
    required TResult Function() successOtp,
  }) {
    return successForgot();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? success,
    TResult? Function(String errMsg)? failure,
    TResult? Function()? successForgot,
    TResult? Function()? successOtp,
  }) {
    return successForgot?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function(String errMsg)? failure,
    TResult Function()? successForgot,
    TResult Function()? successOtp,
    required TResult orElse(),
  }) {
    if (successForgot != null) {
      return successForgot();
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
    required TResult Function(_SuccessForgot value) successForgot,
    required TResult Function(_SuccessOtp value) successOtp,
  }) {
    return successForgot(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Failure value)? failure,
    TResult? Function(_SuccessForgot value)? successForgot,
    TResult? Function(_SuccessOtp value)? successOtp,
  }) {
    return successForgot?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Failure value)? failure,
    TResult Function(_SuccessForgot value)? successForgot,
    TResult Function(_SuccessOtp value)? successOtp,
    required TResult orElse(),
  }) {
    if (successForgot != null) {
      return successForgot(this);
    }
    return orElse();
  }
}

abstract class _SuccessForgot implements AuthState {
  const factory _SuccessForgot() = _$SuccessForgotImpl;
}

/// @nodoc
abstract class _$$SuccessOtpImplCopyWith<$Res> {
  factory _$$SuccessOtpImplCopyWith(
          _$SuccessOtpImpl value, $Res Function(_$SuccessOtpImpl) then) =
      __$$SuccessOtpImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SuccessOtpImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$SuccessOtpImpl>
    implements _$$SuccessOtpImplCopyWith<$Res> {
  __$$SuccessOtpImplCopyWithImpl(
      _$SuccessOtpImpl _value, $Res Function(_$SuccessOtpImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$SuccessOtpImpl implements _SuccessOtp {
  const _$SuccessOtpImpl();

  @override
  String toString() {
    return 'AuthState.successOtp()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SuccessOtpImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function(String errMsg) failure,
    required TResult Function() successForgot,
    required TResult Function() successOtp,
  }) {
    return successOtp();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? success,
    TResult? Function(String errMsg)? failure,
    TResult? Function()? successForgot,
    TResult? Function()? successOtp,
  }) {
    return successOtp?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function(String errMsg)? failure,
    TResult Function()? successForgot,
    TResult Function()? successOtp,
    required TResult orElse(),
  }) {
    if (successOtp != null) {
      return successOtp();
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
    required TResult Function(_SuccessForgot value) successForgot,
    required TResult Function(_SuccessOtp value) successOtp,
  }) {
    return successOtp(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Failure value)? failure,
    TResult? Function(_SuccessForgot value)? successForgot,
    TResult? Function(_SuccessOtp value)? successOtp,
  }) {
    return successOtp?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Failure value)? failure,
    TResult Function(_SuccessForgot value)? successForgot,
    TResult Function(_SuccessOtp value)? successOtp,
    required TResult orElse(),
  }) {
    if (successOtp != null) {
      return successOtp(this);
    }
    return orElse();
  }
}

abstract class _SuccessOtp implements AuthState {
  const factory _SuccessOtp() = _$SuccessOtpImpl;
}
