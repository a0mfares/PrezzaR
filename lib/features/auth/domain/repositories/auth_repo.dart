import 'package:dartz/dartz.dart';

import '../../../../core/service/failure_services.dart';
import '../entities/user_entity.dart';

abstract class AuthRepo {
  Future<Either<FailureServices, String>> signupPhone(
      Map<String, dynamic> data);
  Future<Either<FailureServices, void>> createProfile(
      Map<String, dynamic> data);
  Future<Either<FailureServices, String>> registerPhone(
      Map<String, dynamic> data);
  Future<Either<FailureServices, UserEntity>> signinPhone(
      Map<String, dynamic> data);
  Future<Either<FailureServices, void>> forgotPassPhone(
      Map<String, dynamic> data);
  Future<Either<FailureServices, String>> confirmPhone(
      Map<String, dynamic> data);
  Future<Either<FailureServices, void>> confirmRegPhone(
      Map<String, dynamic> data);
  Future<Either<FailureServices, void>> resendOtpPhone(
      Map<String, dynamic> data);

  //!auth email
  Future<Either<FailureServices, UserEntity>> signinEmail(
      Map<String, dynamic> data);
  Future<Either<FailureServices, String>> signupEmail(
      Map<String, dynamic> data);
  Future<Either<FailureServices, void>> confirmOtpEmail(
      Map<String, dynamic> data);
  Future<Either<FailureServices, void>> resendOtpSignup(
      Map<String, dynamic> data);
  Future<Either<FailureServices, void>> chooseUserType(
      Map<String, dynamic> data);
  Future<Either<FailureServices, void>> deleteaccount(
 {required String authHeader}    );
  Future<Either<FailureServices, String>> refreshToken(
      Map<String, dynamic> data);
  Future<Either<FailureServices, void>> sendOtpResetPassEmail(
      Map<String, dynamic> data);
  Future<Either<FailureServices, String>> confirmOtpPassEmail(
      Map<String, dynamic> data);
  Future<Either<FailureServices, void>> resetPassword(
      Map<String, dynamic> data);
  Future<Either<FailureServices, void>> resendOtpPassEmail(
      Map<String, dynamic> data);
  Future<Either<FailureServices, UserEntity>> getUserInfo();
}
