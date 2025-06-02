part of 'auth_bloc.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState.initial() = _Initial;
  const factory AuthState.loading() = _Loading;
  const factory AuthState.success() = _Success;
  const factory AuthState.failure(String errMsg) = _Failure;
  const factory AuthState.successForgot() = _SuccessForgot;
  const factory AuthState.successOtp() = _SuccessOtp;
}
