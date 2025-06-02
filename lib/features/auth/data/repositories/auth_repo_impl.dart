import 'package:dartz/dartz.dart';
import 'package:prezza/core/helper/network.dart';
import 'package:prezza/core/helper/tools.dart';
import 'package:prezza/core/service/failure_services.dart';
import 'package:prezza/features/auth/data/datasources/auth_service.dart';
import 'package:prezza/features/auth/domain/repositories/auth_repo.dart';

import '../../domain/entities/user_entity.dart';
import '../models/user_model.dart';

class AuthRepoImpl implements AuthRepo {
  final AuthService _auth;

  AuthRepoImpl(this._auth);

  @override
  Future<Either<FailureServices, void>> chooseUserType(
      Map<String, dynamic> data) {
    return execute(() => _auth.chooseUserType(data));
  }

  @override
  Future<Either<FailureServices, void>> confirmOtpEmail(
      Map<String, dynamic> data) {
    return execute(() => _auth.confirmOtp(data));
  }

  @override
  Future<Either<FailureServices, String>> confirmOtpPassEmail(
      Map<String, dynamic> data) {
    return execute(() async {
      final result = await _auth.confirmOtpPass(data);
      return result.data['token'];
    });
  }

  @override
  Future<Either<FailureServices, void>> createProfile(
      Map<String, dynamic> data) {
    return execute(() => _auth.createProfile(data));
  }

  @override
  Future<Either<FailureServices, String>> refreshToken(
      Map<String, dynamic> data) {
    return execute(() async {
      final result = await _auth.refreshToken(data);

      return result.data['access'];
    });
  }

  @override
  Future<Either<FailureServices, void>> resendOtpPassEmail(
      Map<String, dynamic> data) {
    return execute(() => _auth.resendOtpPass(data));
  }

  @override
  Future<Either<FailureServices, void>> resendOtpSignup(
      Map<String, dynamic> data) {
    return execute(() => _auth.resendOtpSignup(data));
  }

  @override
  Future<Either<FailureServices, void>> resetPassword(
      Map<String, dynamic> data) {
    return execute(() => _auth.resetPassword(data));
  }

  @override
  Future<Either<FailureServices, void>> sendOtpResetPassEmail(
      Map<String, dynamic> data) {
    return execute(() => _auth.sendOtpResetPass(data));
  }

  @override
  Future<Either<FailureServices, UserEntity>> signinEmail(
      Map<String, dynamic> data) async {
    return execute(() async {
      final result = await _auth.signinEmail(data);
      return UserEntity.fromModel(UserModel.fromMap(result.data));
    });
  }

  @override
  Future<Either<FailureServices, String>> signupEmail(
      Map<String, dynamic> data) async {
    return execute(() async {
      final result = await _auth.signupEmail(data);

      return result.data['user']['uuid'];
    });
  }

  @override
  Future<Either<FailureServices, String>> signupPhone(
      Map<String, dynamic> data) {
    return execute(() async {
      final result = await _auth.signupPhone(data);
      return result.data['user_id'];
    });
  }

  @override
  Future<Either<FailureServices, UserEntity>> getUserInfo() async {
    return execute(() async {
      final result = await _auth.getUserInfo(bearerToken);
      return UserEntity.fromModel(UserModel.fromMap(result.data['data']));
    });
  }

  @override
  Future<Either<FailureServices, String>> confirmPhone(
      Map<String, dynamic> data) {
    return execute(() async {
      final result = await _auth.confirmPhone(data);
      return result.data['token'];
    });
  }

  @override
  Future<Either<FailureServices, void>> forgotPassPhone(
      Map<String, dynamic> data) {
    return execute(() => _auth.forgotPassPhone(data));
  }

  @override
  Future<Either<FailureServices, String>> registerPhone(
      Map<String, dynamic> data) {
    return execute(() async {
      final result = await _auth.confirmPhone(data);
      return result.data['user_id'];
    });
  }

  @override
  Future<Either<FailureServices, void>> resendOtpPhone(
      Map<String, dynamic> data) {
    return execute(() => _auth.resendOtpPhone(data));
  }

  @override
  Future<Either<FailureServices, UserEntity>> signinPhone(
      Map<String, dynamic> data) {
    return execute(() async {
      final result = await _auth.signinPhone(data);
      return UserEntity.fromModel(UserModel.fromMap(result.data));
    });
  }

  @override
  Future<Either<FailureServices, void>> confirmRegPhone(
      Map<String, dynamic> data) {
    return execute(() => _auth.confirmRegPhone(data));
  }
}
