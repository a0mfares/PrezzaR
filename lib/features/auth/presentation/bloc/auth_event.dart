part of 'auth_bloc.dart';

@freezed
class AuthEvent with _$AuthEvent {
  const factory AuthEvent.signin(String type) = _Signin;
  const factory AuthEvent.signup(String type) = _Signup;

  const factory AuthEvent.confirmSignup(String type) = _ConfirmSignup;
  const factory AuthEvent.resendOtp(String type) = _ResendOtp;
  const factory AuthEvent.forgotPass(String type) = _ForgotPass;
  const factory AuthEvent.createProfile() = _CreateProfile;
  const factory AuthEvent.chooseUserType() = _ChooseUserType;
  const factory AuthEvent.resetPassword() = _ResetPassword;
  const factory AuthEvent.getToken(String type) = _GetToken;
  const factory AuthEvent.getUserInfo() = _GetUserInfo;
}
