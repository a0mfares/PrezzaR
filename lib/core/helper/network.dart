import 'dart:io';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:prezza/core/service/hive_storage.dart';

import '../service/failure_services.dart';

Future<Either<FailureServices, T>> execute<T>(
    Future<T> Function() function) async {
  var connectivityResult = await Connectivity().checkConnectivity();
  if (!connectivityResult.contains(ConnectivityResult.none)) {
    final res = await Dio(BaseOptions(
      connectTimeout: const Duration(seconds: 5),
      sendTimeout: const Duration(seconds: 5),
      receiveTimeout: const Duration(seconds: 5),
    )).get('https://www.google.com');
    if (res.statusCode == HttpStatus.ok) {
      try {
        final result = await function();
        return Right(result);
      } on DioException catch (e) {
        if (e.response!.statusCode! == HttpStatus.forbidden) {
          HiveStorage.set(kUid, e.response!.data['user_id']);
        }
        return Left(FailureServices(e.response?.data));
      } catch (e) {
        print(e);
        return Left(FailureServices(e));
      }
    }
    return Left(FailureServices('internet-not-working'));
  }
  return Left(FailureServices('no-connection'));
}
