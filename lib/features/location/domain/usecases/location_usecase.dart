// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:dartz/dartz.dart';

import 'package:prezza/core/helper/usecase_helper.dart';
import 'package:prezza/core/service/failure_services.dart';
import 'package:prezza/features/location/domain/entities/address_entity.dart';
import 'package:prezza/features/location/domain/repositories/location_repo.dart';

import '../entities/branche_entity.dart';

class GetBranchesUsecase extends UsecaseHelper<List<BrancheEntity>> {
  final LocationRepo _repo;

  GetBranchesUsecase(this._repo);

  @override
  Future<Either<FailureServices, List<BrancheEntity>>> call(
      {Map<String, dynamic> parm = const {}}) {
    return _repo.getBranches();
  }
}

class GetAddressesUsecase extends UsecaseHelper<List<AddressEntity>> {
  final LocationRepo _repo;

  GetAddressesUsecase(this._repo);

  @override
  Future<Either<FailureServices, List<AddressEntity>>> call(
      {Map<String, dynamic> parm = const {}}) {
    return _repo.getDeliveryAddress();
  }
}

class AddBrancheUsecase extends UsecaseHelper<void> {
  final LocationRepo _repo;

  AddBrancheUsecase(this._repo);

  @override
  Future<Either<FailureServices, void>> call(
      {Map<String, dynamic> parm = const {}}) {
    return _repo.addBranche(parm);
  }
}

class AddAddressUsecase extends UsecaseHelper<void> {
  final LocationRepo _repo;

  AddAddressUsecase(this._repo);

  @override
  Future<Either<FailureServices, void>> call(
      {Map<String, dynamic> parm = const {}}) {
    return _repo.addDeliveryAddress(parm);
  }
}

class DeleteBrancheUsecase extends UsecaseHelper<void> {
  final LocationRepo _repo;

  DeleteBrancheUsecase(this._repo);

  @override
  Future<Either<FailureServices, void>> call(
      {Map<String, dynamic> parm = const {}}) {
    return _repo.deleteBranche(parm);
  }
}

class DeleteAddressUsecase extends UsecaseHelper<void> {
  final LocationRepo _repo;

  DeleteAddressUsecase(this._repo);

  @override
  Future<Either<FailureServices, void>> call(
      {Map<String, dynamic> parm = const {}}) {
    return _repo.deleteDeliveryAddress(parm);
  }
}

class UpdateBrancheUsecase extends UsecaseHelper<void> {
  final LocationRepo _repo;

  UpdateBrancheUsecase(this._repo);

  @override
  Future<Either<FailureServices, void>> call(
      {Map<String, dynamic> parm = const {}}) {
    return _repo.updateBranche(parm);
  }
}

class UpdateAddressUsecase extends UsecaseHelper<void> {
  final LocationRepo _repo;

  UpdateAddressUsecase(this._repo);

  @override
  Future<Either<FailureServices, void>> call(
      {Map<String, dynamic> parm = const {}}) {
    return _repo.updateDeliveryAddress(parm);
  }
}

class GetArrivelTimeUsecase extends UsecaseHelper<Duration> {
  final LocationRepo _repo;
  GetArrivelTimeUsecase(this._repo);

  @override
  Future<Either<FailureServices, Duration>> call(
      {Map<String, dynamic> parm = const {}}) {
    return _repo.getArrivelTime(parm);
  }
}
