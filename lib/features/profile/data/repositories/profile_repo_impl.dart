import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:prezza/core/helper/network.dart';
import 'package:prezza/core/helper/tools.dart';
import 'package:prezza/core/service/failure_services.dart';
import 'package:prezza/features/auth/data/models/user_model.dart';
import 'package:prezza/features/auth/domain/entities/user_entity.dart';
import 'package:prezza/features/profile/data/datasources/profile_service.dart';
import 'package:prezza/features/profile/data/models/businessdetails_model.dart';
import 'package:prezza/features/profile/domain/entities/businessdetails_entity.dart';
import 'package:prezza/features/profile/domain/repositories/profile_repo.dart';

class ProfileRepoImpl implements ProfileRepo {
  final ProfileService _service;

  ProfileRepoImpl(this._service);

  @override
  Future<Either<FailureServices, void>> addBusinesDetails(
      Map<String, dynamic> data) {
    return execute(() async =>
        (await _service.addBusinesDetails(FormData.fromMap(data))).data);
  }

  @override
  Future<Either<FailureServices, void>> addFavorites(
      Map<String, dynamic> data) {
    return execute(() => _service.addFavorites(bearerToken, data));
  }

  @override
  Future<Either<FailureServices, void>> deleteFavoritesItem(
      Map<String, dynamic> data) {
    return execute(() => _service.deleteFavoritesItem(bearerToken, data));
  }

  @override
  Future<Either<FailureServices, void>> getFavorites(
      Map<String, dynamic> data) {
    return execute(() => _service.getFavorites(bearerToken, data));
  }

  @override
  Future<Either<FailureServices, BusinessDetailsEntity>> getBusinessDetails() {
    return execute(() async {
      final result = await _service.getVendorDetails(bearerToken);
      return BusinessDetailsEntity.fromModel(
          BusinessDetailsModel.fromMpa(result.data['data']));
    });
  }

  @override
  Future<Either<FailureServices, UserEntity>> getUserInfo() {
    return execute(() async {
      final result = await _service.getUserInfo(bearerToken);
      return UserEntity.fromModel(UserModel.fromMap(result.data['data']));
    });
  }

  @override
  Future<Either<FailureServices, User>> updateUserInfo(
      Map<String, dynamic> data) {
    return execute(() async {
      final result =
          await _service.updateUserInfo(bearerToken, FormData.fromMap(data));

      return User.fromMap(result.data);
    });
  }

  @override
  Future<Either<FailureServices, void>> updatePass(Map<String, dynamic> data) {
    return execute(() => _service.updatePass(bearerToken, data));
  }
}
