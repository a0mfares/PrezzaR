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
      await authorizationApi();
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
  try {
    // Get the token properly without converting to string
    final storedToken = HiveStorage.get(kCarApitoken);
    
    if (storedToken != null && storedToken.isNotEmpty) {
      log('Token exists, checking expiration');
      final isExpire = await FlutterSessionJwt.isTokenExpired();
      
      if (isExpire) {
        log('Token expired, refreshing');
        await _refreshAndSaveToken();
      }
    } else {
      log('No token found, getting new one');
      await _refreshAndSaveToken();
    }
  } catch (e) {
    log('Error in authorizationApi: $e');
    // Handle error appropriately
  }
}

Future<void> _refreshAndSaveToken() async {
  try {
    final response = await _service.authorizeCarApi(bearerToken);
    
    // Check the response structure before casting
    if (response.data != null && response.data['data'] != null) {
      final data = response.data['data'];
      
      String token;
      if (data is List) {
        token = data.join();
      } else if (data is String) {
        token = data;
      } else {
        throw Exception('Unexpected token format: ${data.runtimeType}');
      }
      
      // Save the token
      HiveStorage.set(kCarApitoken, token);
      await FlutterSessionJwt.saveToken(token);
      log('Token saved successfully', name: 'token');
    } else {
      throw Exception('Invalid response structure');
    }
  } catch (e) {
    log('Error refreshing token: $e');
    rethrow;
  }
}
}
