import 'package:dartz/dartz.dart';
import 'package:prezza/features/location/domain/entities/branche_entity.dart';

import '../../../../core/service/failure_services.dart';
import '../entities/address_entity.dart';

abstract class LocationRepo {
  Future<Either<FailureServices, void>> addDeliveryAddress(
      Map<String, dynamic> data);
  Future<Either<FailureServices, void>> updateDeliveryAddress(
      Map<String, dynamic> data);
  Future<Either<FailureServices, void>> deleteDeliveryAddress(
      Map<String, dynamic> data);
  Future<Either<FailureServices, List<AddressEntity>>> getDeliveryAddress();
  Future<Either<FailureServices, List<BrancheEntity>>> getBranches();
  Future<Either<FailureServices, void>> addBranche(Map<String, dynamic> data);
  Future<Either<FailureServices, void>> deleteBranche(
      Map<String, dynamic> data);
  Future<Either<FailureServices, void>> updateBranche(
      Map<String, dynamic> data);

  Future<Either<FailureServices, String>> getArrivelTime(
      Map<String, dynamic> query);
}
