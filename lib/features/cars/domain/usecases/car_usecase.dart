import 'package:dartz/dartz.dart';
import 'package:prezza/core/helper/usecase_helper.dart';
import 'package:prezza/core/service/failure_services.dart';
import 'package:prezza/features/cars/domain/entities/car_entity.dart';
import 'package:prezza/features/cars/domain/repositories/car_repo.dart';

class GetCarsUsecase extends UsecaseHelper<List<CarEntity>> {
  final CarRepo _repo;

  GetCarsUsecase(this._repo);
  @override
  Future<Either<FailureServices, List<CarEntity>>> call(
      {Map<String, dynamic> parm = const {}}) {
    return _repo.getCars();
  }
}

class GetMakesUsecase extends UsecaseHelper<List<String>> {
  final CarRepo _repo;

  GetMakesUsecase(this._repo);
  @override
  Future<Either<FailureServices, List<String>>> call(
      {Map<String, dynamic> parm = const {}}) {
    return _repo.getMakes(parm);
  }
}

class GetModelsUsecase extends UsecaseHelper<List<String>> {
  final CarRepo _repo;

  GetModelsUsecase(this._repo);
  @override
  Future<Either<FailureServices, List<String>>> call(
      {Map<String, dynamic> parm = const {}}) {
    return _repo.getModels(parm);
  }
}

class GetTypesUsecase extends UsecaseHelper<List<String>> {
  final CarRepo _repo;

  GetTypesUsecase(this._repo);
  @override
  Future<Either<FailureServices, List<String>>> call(
      {Map<String, dynamic> parm = const {}}) {
    return _repo.getTypes(parm);
  }
}

class AddCarUsecase extends UsecaseHelper<void> {
  final CarRepo _repo;

  AddCarUsecase(this._repo);
  @override
  Future<Either<FailureServices, void>> call(
      {Map<String, dynamic> parm = const {}}) {
    return _repo.addCar(parm);
  }
}

class DeleteCarUsecase extends UsecaseHelper<void> {
  final CarRepo _repo;

  DeleteCarUsecase(this._repo);
  @override
  Future<Either<FailureServices, void>> call(
      {Map<String, dynamic> parm = const {}}) {
    return _repo.deleteCar(parm);
  }
}

class UpdateCarUsecase extends UsecaseHelper<void> {
  final CarRepo _repo;

  UpdateCarUsecase(this._repo);
  @override
  Future<Either<FailureServices, void>> call(
      {Map<String, dynamic> parm = const {}}) {
    return _repo.updateCar(parm);
  }
}
