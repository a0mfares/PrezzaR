import 'package:dartz/dartz.dart';
import 'package:prezza/core/service/failure_services.dart';
import 'package:prezza/features/cars/domain/entities/car_entity.dart';

abstract class CarRepo {
  Future<Either<FailureServices, List<String>>> getMakes(
    Map<String, dynamic> queries,
  );
  Future<Either<FailureServices, List<String>>> getModels(
    Map<String, dynamic> queries,
  );
  Future<Either<FailureServices, List<String>>> getTypes(
    Map<String, dynamic> queries,
  );
  Future<Either<FailureServices, List<String>>> getYeaser();
  Future<Either<FailureServices, List<CarEntity>>> getCars();
  Future<Either<FailureServices, void>> addCar(Map<String, dynamic> body);
  Future<Either<FailureServices, void>> deleteCar(Map<String, dynamic> body);
  Future<Either<FailureServices, void>> updateCar(Map<String, dynamic> body);
}
