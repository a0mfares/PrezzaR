import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:prezza/core/helper/tools.dart';

import '../../../../core/service/hive_storage.dart';
import '../../domain/usecases/auth_usecases.dart';

part 'auth_event.dart';
part 'auth_state.dart';
part 'auth_bloc.freezed.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final TextEditingController email = TextEditingController();
  final TextEditingController phone = TextEditingController();
  final TextEditingController password = TextEditingController();
  final TextEditingController confirmPass = TextEditingController();
  final TextEditingController firstName = TextEditingController();
  final TextEditingController lastName = TextEditingController();
  String otp = '';

  bool recieveOffer = false;
  bool isVisable = false;
  bool isEmail = false;

  GlobalKey<FormState> loginForm = GlobalKey();
  GlobalKey<FormState> signupForm = GlobalKey();
  final GlobalKey<FormState> forgotPassForm = GlobalKey();
  GlobalKey<FormState> resendOtpSignUpForm = GlobalKey();
  GlobalKey<FormState> resendOtpPassForm = GlobalKey();
  GlobalKey<FormState> resetPassForm = GlobalKey();
  final emailRegex =
      RegExp(r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$');

  final passwordRegex = RegExp(
      r'^(?=.*[A-Z])(?=.*[a-z])(?=.*\d)(?=.*[@$!%*?&])[A-Za-z\d@$!%*?&]{8,}$');

  final qatarPhoneRegExp = RegExp(r'^(?:\+974|974)?[3567]\d{7}$');

  String selectedType = '';
  final SigninUsecase _signinUsecase;
  final SignUpUsecase _signupUsecase;
  final ConfirmSignUpUsecase _confirmSignUpUsecase;
  final ResendOtpUsecase _resendOtpUsecase;
  final ForgotPassUsecase _forgotPassUsecase;
  final GetTokenPassUsecase _getTokenUsecase;
  final CreateProfileUsecase _createProfileUsecase;
  final ResetPasswordUsecase _resetPasswordUsecase;
  final ChooseUserTypeUsecase _chooseUserTypeUsecase;
  final GetUserInfoUsecase _getUserInfoUsecase;
  final DeleteAcountUseCase _deleteAccountUseCase;
  static AuthBloc get(context) => BlocProvider.of(context);

  AuthBloc(
      this._signinUsecase,
      this._signupUsecase,
      this._confirmSignUpUsecase,
      this._resendOtpUsecase,
      this._forgotPassUsecase,
      this._getTokenUsecase,
      this._createProfileUsecase,
      this._resetPasswordUsecase,
      this._chooseUserTypeUsecase,
      this._deleteAccountUseCase,
      this._getUserInfoUsecase)
      : super(const _Initial()) {
    on<AuthEvent>((event, emit) async {
      await event.maybeWhen(
        signin: (type) async {
          if (!loginForm.currentState!.validate()) return;
          emit(const AuthState.loading());

          try {
            final result = await _signinUsecase(parm: {
              'type': type,
              'phone': phone.text.startsWith('+974')
                  ? phone.text.startsWith('974')
                      ? '+${phone.text}'
                      : '+974${phone.text}'
                  : '+974${phone.text}',
              'email': email.text,
              'password': password.text,
            });

            // Handle the result with proper async/await
            await result.fold(
              (failure) async {
                emit(AuthState.failure(failure.getMsg));
              },
              (success) async {
                // Await the storage operation to ensure token is saved
                await HiveStorage.set(kUser, success);

                if (ifNewUser) {
                  emit(const AuthState.failure('complete setup'));
                } else {
                  emit(const AuthState.success());
                }
              },
            );
          } catch (e) {
            emit(AuthState.failure(e.toString()));
          }
        },
        signup: (type) async {
          if (!signupForm.currentState!.validate()) return;
          emit(const AuthState.loading());
          try {
            final result = await _signupUsecase(
              parm: type == 'phone'
                  ? {
                      'type': type,
                      'phone': phone.text.startsWith('+974')
                          ? phone.text.startsWith('974')
                              ? '+${phone.text}'
                              : '+974${phone.text}'
                          : '+974${phone.text}',
                      'user_type': selectedType,
                    }
                  : {
                      'type': type,
                      'first_name': firstName.text,
                      'last_name': lastName.text,
                      'user_type': selectedType,
                      'confirm_password': confirmPass.text,
                      'password': password.text,
                      'accept_terms': true,
                      'email': email.text,
                      'invitaion_code': '',
                    },
            );

            result.fold((failure) {
              emit(AuthState.failure(failure.getMsg));
            }, (success) {
              HiveStorage.set(kUid, success);
              if (type == 'phone') {
                add(const AuthEvent.createProfile());
                return;
              }
              emit(const AuthState.success());
            });
          } catch (e) {
            emit(AuthState.failure(e.toString()));
          }
        },
        createProfile: () async {
          if (!signupForm.currentState!.validate()) return;
          emit(const AuthState.loading());
          try {
            final result = await _createProfileUsecase(
              parm: {
                'user_uuid': HiveStorage.get(kUid, defaultValue: ''),
                'first_name': firstName.text,
                'last_name': lastName.text,
                'confirm_password': confirmPass.text,
                'password': password.text,
                'accept_terms': true,
                'user_type': selectedType,
                'invitaion_code': '',
              },
            );

            result.fold((failure) {
              emit(AuthState.failure(failure.getMsg));
            }, (success) {
              emit(const AuthState.success());
            });
          } catch (e) {
            emit(AuthState.failure(e.toString()));
          }
        },
        confirmSignup: (type) async {
          if (otp.isEmpty) return;
          emit(const AuthState.loading());
          try {
            final result = await _confirmSignUpUsecase(parm: {
              'type': type,
              'user_uuid': HiveStorage.get(kUid, defaultValue: ''),
              'otp': otp,
            });

            result.fold((failure) {
              emit(AuthState.failure(failure.getMsg));
            }, (success) {
              emit(const AuthState.success());
            });
          } catch (e) {
            emit(AuthState.failure(e.toString()));
          }
        },
        resendOtp: (type) async {
          emit(const AuthState.loading());
          try {
            final result = await _resendOtpUsecase(parm: {
              'type': type,
              'phone': phone.text.startsWith('+974')
                  ? phone.text.startsWith('974')
                      ? '+${phone.text}'
                      : '+974${phone.text}'
                  : '+974${phone.text}',
              'email': email.text,
            });

            result.fold((failure) {
              emit(AuthState.failure(failure.getMsg));
            }, (success) {
              emit(const AuthState.successOtp());
            });
          } catch (e) {
            emit(AuthState.failure(e.toString()));
          }
        },
        forgotPass: (type) async {
          if (!forgotPassForm.currentState!.validate()) return;
          emit(const AuthState.loading());
          try {
            final result = await _forgotPassUsecase(parm: {
              'type': type,
              'phone': phone.text.startsWith('+974')
                  ? phone.text.startsWith('974')
                      ? '+${phone.text}'
                      : '+974${phone.text}'
                  : '+974${phone.text}',
              'email': email.text,
            });

            result.fold(
              (err) {
                emit(AuthState.failure(err.getMsg));
              },
              (res) {
                emit(const AuthState.successForgot());
              },
            );
          } catch (e) {
            emit(AuthState.failure(e.toString()));
          }
        },
        getToken: (type) async {
          if (otp.isEmpty) return;
          emit(const AuthState.loading());
          try {
            final result = await _getTokenUsecase(parm: {
              'type': type,
              'phone': phone.text.startsWith('+974')
                  ? phone.text.startsWith('974')
                      ? '+${phone.text}'
                      : '+974${phone.text}'
                  : '+974${phone.text}',
              'email': email.text,
              'otp': otp,
            });

            result.fold(
              (err) {
                emit(AuthState.failure(err.getMsg));
              },
              (res) {
                HiveStorage.set(kToken, res);
                emit(const AuthState.success());
              },
            );
          } catch (e) {
            emit(AuthState.failure(e.toString()));
          }
        },
        resetPassword: () async {
          emit(const AuthState.loading());
          try {
            final result = await _resetPasswordUsecase(parm: {
              'new_password': password.text,
              'confirm_password': confirmPass.text,
              'token': HiveStorage.get(kToken, defaultValue: '')
            });

            result.fold(
              (err) {
                emit(AuthState.failure(err.getMsg));
              },
              (res) {
                emit(const AuthState.success());
              },
            );
          } catch (e) {
            emit(AuthState.failure(e.toString()));
          }
        },
        chooseUserType: () async {
          emit(const AuthState.loading());
          try {
            final userId = HiveStorage.get(kUid, defaultValue: '');
            if (userId.isEmpty) {
              emit(const AuthState.failure('User ID not found'));
              return;
            }

            final result = await _chooseUserTypeUsecase(
                parm: {'user_type': selectedType, 'user_id': userId});

            result.fold(
              (err) {
                emit(AuthState.failure(err.getMsg));
              },
              (res) {
                HiveStorage.set(
                  kUser,
                  usr.copyWith(
                    user: usr.user.copyWith(user_type: selectedType),
                  ),
                );
                emit(const AuthState.success());
              },
            );
          } catch (e) {
            emit(AuthState.failure(e.toString()));
          }
        },
        getUserInfo: () async {
          emit(const AuthState.loading());
          try {
            final result = await _getUserInfoUsecase();

            result.fold(
              (err) {
                emit(AuthState.failure(err.getMsg));
              },
              (res) {
                HiveStorage.set(kUser, res);
                emit(const AuthState.success());
              },
            );
          } catch (e) {
            emit(AuthState.failure(e.toString()));
          }
        },
        deleteAccount: () async {
          emit(const AuthState.loading());
          try {
            final result = await _deleteAccountUseCase();

            result.fold(
              (err) {
                emit(AuthState.failure(err.getMsg));
              },
              (res) {
                HiveStorage.set(kUser, res);
                emit(const AuthState.success());
              },
            );
          } catch (e) {
            emit(AuthState.failure(e.toString()));
          }
        },
        orElse: () {},
      );
    });
  }
}
