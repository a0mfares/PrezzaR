import 'package:dartz/dartz.dart';
import 'package:prezza/core/helper/network.dart';
import 'package:prezza/core/helper/tools.dart';
import 'package:prezza/features/location/data/datasources/location_service.dart';
import 'package:prezza/features/location/data/datasources/map_service.dart';
import 'package:prezza/features/location/data/models/address_model.dart';
import 'package:prezza/features/location/data/models/branche_model.dart';
import 'package:prezza/features/location/domain/entities/address_entity.dart';
import 'package:prezza/features/location/domain/entities/branche_entity.dart';
import 'package:prezza/features/location/domain/repositories/location_repo.dart';

import '../../../../core/service/failure_services.dart';

class LocationRepoImpl implements LocationRepo {
  final LocationService _service;
  final MapService _mapService;
  LocationRepoImpl(this._service, this._mapService);

  @override
  Future<Either<FailureServices, void>> addBranche(Map<String, dynamic> data) {
    return execute(() => _service.addBranch(data));
  }

  @override
  Future<Either<FailureServices, void>> deleteBranche(
      Map<String, dynamic> data) {
    return execute(() async {
      await _service.deleteBranches(data);
    });
  }

  @override
  Future<Either<FailureServices, List<BrancheEntity>>> getBranches() {
    return execute(() async {
      final result = await _service.getBranches({'user_uuid': usr.user.uuid});
      return List<BrancheEntity>.from(
          result.data['data'].map((e) => BrancheModel.fromMap(e)));
    });
  }

  @override
  Future<Either<FailureServices, void>> updateBranche(
      Map<String, dynamic> data) {
    return execute(() => _service.updateBranches(data));
  }

  @override
  Future<Either<FailureServices, void>> addDeliveryAddress(
      Map<String, dynamic> data) {
    return execute(() => _service.addDeliveryAddress(bearerToken, data));
  }

  @override
  Future<Either<FailureServices, void>> deleteDeliveryAddress(
      Map<String, dynamic> data) {
    return execute(() => _service.deleteDeliveryAddress(bearerToken, data));
  }

  @override
  Future<Either<FailureServices, List<AddressEntity>>> getDeliveryAddress() {
    return execute(() async {
      final result = await _service.getDeliveryAddress(bearerToken);
      return List<AddressEntity>.from(result.data['data']
          .map((e) => AddressEntity.fromModel(AddressModel.fromMap(e))));
    });
  }

  @override
  Future<Either<FailureServices, void>> updateDeliveryAddress(
      Map<String, dynamic> data) {
    return execute(() => _service.updateDeliveryAddress(bearerToken, data));
  }

  @override
  Future<Either<FailureServices, Duration>> getArrivelTime(
      Map<String, dynamic> query) {
    return execute(() async {
      final res = await _mapService.getArrivelTime(query);
      final arrivel =
          res.data['routes'][0]['legs'][0]['duration']['value'] as int;

     Duration arrivalTime = Duration(seconds: arrivel);
      return arrivalTime;
    });
  }
}
