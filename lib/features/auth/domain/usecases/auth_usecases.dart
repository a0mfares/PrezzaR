import 'package:dartz/dartz.dart';
import 'package:prezza/core/helper/usecase_helper.dart';
import 'package:prezza/features/auth/domain/repositories/auth_repo.dart';

import '../../../../core/service/failure_services.dart';
import '../entities/user_entity.dart';

class SigninUsecase implements UsecaseHelper<UserEntity> {
  final AuthRepo _repo;

  SigninUsecase(this._repo);
  @override
  Future<Either<FailureServices, UserEntity>> call(
      {Map<String, dynamic> parm = const {}}) async {
    if (parm['type'] == 'phone') {
      parm.remove('type');
      parm.remove('email');
      return _repo.signinPhone(parm);
    }
    parm.remove('type');
    parm.remove('phone');
    return _repo.signinEmail(parm);
  }
}

class SignUpUsecase implements UsecaseHelper<String> {
  final AuthRepo _repo;

  SignUpUsecase(this._repo);

  @override
  Future<Either<FailureServices, String>> call(
      {Map<String, dynamic> parm = const {}}) async {
    if (parm['type'] == 'phone') {
      parm.remove('type');
      return await _repo.signupPhone(parm);
    }
    parm.remove('type');
    return await _repo.signupEmail(parm);
  }
}

class CreateProfileUsecase implements UsecaseHelper<void> {
  final AuthRepo _repo;

  CreateProfileUsecase(this._repo);
  @override
  Future<Either<FailureServices, void>> call(
      {Map<String, dynamic> parm = const {}}) async {
    return _repo.createProfile(parm);
    // HiveStorage.set(kUser, user);
    // return /uui;
  }
}

class ConfirmSignUpUsecase implements UsecaseHelper<void> {
  final AuthRepo _repo;

  ConfirmSignUpUsecase(this._repo);
  @override
  Future<Either<FailureServices, void>> call(
      {Map<String, dynamic> parm = const {}}) async {
    if (parm['type'] == 'phone') {
      parm.remove('type');
      return _repo.confirmRegPhone(parm);
    }
    parm.remove('type');
    return _repo.confirmOtpEmail(parm);
  }
}

class ResendOtpUsecase implements UsecaseHelper<void> {
  final AuthRepo _repo;

  ResendOtpUsecase(this._repo);
  @override
  Future<Either<FailureServices, void>> call(
      {Map<String, dynamic> parm = const {}}) async {
    if (parm['type'] == 'phone') {
      parm.remove('type');
      parm.remove('email');
      return _repo.resendOtpPhone(parm);
    }
    parm.remove('type');
    parm.remove('phone');
    return _repo.resendOtpSignup(parm);
  }
}

class ChooseUserTypeUsecase implements UsecaseHelper<void> {
  final AuthRepo _repo;

  ChooseUserTypeUsecase(this._repo);
  @override
  Future<Either<FailureServices, void>> call(
      {Map<String, dynamic> parm = const {}}) async {
    return _repo.chooseUserType(parm);
  }
}

class RefereshTokenUsecase implements UsecaseHelper<String> {
  final AuthRepo _repo;

  RefereshTokenUsecase(this._repo);
  @override
  Future<Either<FailureServices, String>> call(
      {Map<String, dynamic> parm = const {}}) async {
    return await _repo.refreshToken(parm);
  }
}

class GetUserInfoUsecase implements UsecaseHelper<UserEntity> {
  final AuthRepo _repo;

  GetUserInfoUsecase(this._repo);
  @override
  Future<Either<FailureServices, UserEntity>> call(
      {Map<String, dynamic> parm = const {}}) async {
    return await _repo.getUserInfo();
  }
}

class ForgotPassUsecase implements UsecaseHelper<void> {
  final AuthRepo _repo;

  ForgotPassUsecase(this._repo);
  @override
  Future<Either<FailureServices, void>> call(
      {Map<String, dynamic> parm = const {}}) async {
    if (parm['type'] == 'phone') {
      parm.remove('type');
      parm.remove('email');
      return _repo.forgotPassPhone(parm);
    }
    parm.remove('type');
    parm.remove('phone');
    return _repo.sendOtpResetPassEmail(parm);
  }
}

class GetTokenPassUsecase implements UsecaseHelper<String> {
  final AuthRepo _repo;

  GetTokenPassUsecase(this._repo);
  @override
  Future<Either<FailureServices, String>> call(
      {Map<String, dynamic> parm = const {}}) async {
    if (parm['type'] == 'phone') {
      parm.remove('type');
      parm.remove('email');
      return _repo.confirmPhone(parm);
    }
    parm.remove('type');
    parm.remove('phone');
    return _repo.confirmOtpPassEmail(parm);
  }
}

class ResetPasswordUsecase implements UsecaseHelper<void> {
  final AuthRepo _repo;

  ResetPasswordUsecase(this._repo);
  @override
  Future<Either<FailureServices, void>> call(
      {Map<String, dynamic> parm = const {}}) async {
    return _repo.resetPassword(parm);
  }
}
