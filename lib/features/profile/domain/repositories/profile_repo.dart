import 'package:dartz/dartz.dart';
import 'package:prezza/core/service/failure_services.dart';
import 'package:prezza/features/profile/domain/entities/businessdetails_entity.dart';

import '../../../auth/domain/entities/user_entity.dart';

abstract class ProfileRepo {
  Future<Either<FailureServices, void>> addBusinesDetails(
      Map<String, dynamic> data);
  Future<Either<FailureServices, UserEntity>> getUserInfo();
  Future<Either<FailureServices, User>> updateUserInfo(
      Map<String, dynamic> data);
  Future<Either<FailureServices, void>> updatePass(Map<String, dynamic> data);
  Future<Either<FailureServices, BusinessDetailsEntity>> getBusinessDetails();
  Future<Either<FailureServices, void>> addFavorites(Map<String, dynamic> data);
  Future<Either<FailureServices, void>> getFavorites(Map<String, dynamic> data);
  Future<Either<FailureServices, void>> deleteFavoritesItem(
      Map<String, dynamic> data);
}
