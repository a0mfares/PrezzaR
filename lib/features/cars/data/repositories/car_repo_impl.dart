import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:flutter_session_jwt/flutter_session_jwt.dart';
import 'package:prezza/core/helper/network.dart';
import 'package:prezza/core/service/failure_services.dart';
import 'package:prezza/core/service/hive_storage.dart';
import 'package:prezza/features/cars/data/datasources/car_api_service.dart';
import 'package:prezza/features/cars/data/datasources/car_service.dart';
import 'package:prezza/features/cars/data/models/car_model.dart';
import 'package:prezza/features/cars/domain/entities/car_entity.dart';
import 'package:prezza/features/cars/domain/repositories/car_repo.dart';

import '../../../../core/helper/tools.dart';

class CarRepoImpl implements CarRepo {
  final CarService _service;
  final CarApiService _apiService;

  CarRepoImpl(this._service, this._apiService);

  @override
  Future<Either<FailureServices, void>> addCar(Map<String, dynamic> body) {
    return execute(() => _service.addCar(bearerToken, FormData.fromMap(body)));
  }

  @override
  Future<Either<FailureServices, void>> deleteCar(Map<String, dynamic> body) {
    return execute(() => _service.deleteCars(bearerToken, body));
  }

  @override
  Future<Either<FailureServices, List<CarEntity>>> getCars() {
    return execute(() async {
      final result = await _service.getCars(bearerToken);

      return List<CarEntity>.from(result.data['data']
          .map((e) => CarEntity.fromModel(CarModel.fromMap(e))));
    });
  }

  @override
  Future<Either<FailureServices, void>> updateCar(Map<String, dynamic> body) {
    return execute(
        () => _service.updateCar(bearerToken, FormData.fromMap(body)));
  }

  @override
  Future<Either<FailureServices, List<String>>> getMakes(
      Map<String, dynamic> queries) async {
    await authorizationApi();
    return execute(() async {
      final result = await _apiService.getMakes(bearerTokenCarApi, queries);

      return List<String>.from(result.data['data'].map((e) => e['name']));
    });
  }

  @override
  Future<Either<FailureServices, List<String>>> getModels(
      Map<String, dynamic> queries) async {
    await authorizationApi();
    return execute(() async {
      final result = await _apiService.getModels(bearerTokenCarApi, queries);

      return List<String>.from(result.data['data'].map((e) => e['name']));
    });
  }

  @override
  Future<Either<FailureServices, List<String>>> getYeaser() {
    // TODO: implement getYeaser
    throw UnimplementedError();
  }

  @override
  Future<Either<FailureServices, List<String>>> getTypes(
      Map<String, dynamic> queries) async {
    await authorizationApi();
    return execute(() async {
      final result = await _apiService.getTypes(bearerTokenCarApi, queries);

      return List<String>.from(result.data['data'].map((e) => e['type']))
          .toSet()
          .toList();
    });
  }

  Future<void> authorizationApi() async {
    if (HiveStorage.get(kCarApitoken) != null) {
      log('is not empty token');
      final isExpire = await FlutterSessionJwt.isTokenExpired();
      if (isExpire) {
        final token =
            ((await _service.authorizeCarApi(bearerToken)).data['data'] as List)
                .join();
        HiveStorage.set(kCarApitoken, token);
        final t = await FlutterSessionJwt.saveToken(token);
        log(t, name: 'token');
      }
    } else {
      log('is empty token');
      final token =
          ((await _service.authorizeCarApi(bearerToken)).data['data'] as List)
              .join();
      HiveStorage.set(kCarApitoken, token);
      await FlutterSessionJwt.saveToken(token);
    }
  }
}
