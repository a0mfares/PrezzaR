import 'package:dartz/dartz.dart';
import 'package:prezza/core/helper/usecase_helper.dart';
import 'package:prezza/core/service/failure_services.dart';
import 'package:prezza/features/profile/domain/entities/businessdetails_entity.dart';
import 'package:prezza/features/profile/domain/repositories/profile_repo.dart';

import '../../../auth/domain/entities/user_entity.dart';

class AddBusinessDetailsUsecase implements UsecaseHelper<void> {
  final ProfileRepo _repo;

  AddBusinessDetailsUsecase(this._repo);

  @override
  Future<Either<FailureServices, void>> call(
      {Map<String, dynamic> parm = const {}}) async {
    return _repo.addBusinesDetails(parm);
  }
}

class UpdatePassUsecase implements UsecaseHelper<void> {
  final ProfileRepo _repo;

  UpdatePassUsecase(this._repo);

  @override
  Future<Either<FailureServices, void>> call(
      {Map<String, dynamic> parm = const {}}) async {
    return _repo.updatePass(parm);
  }
}

class GetBusinessDetailUsecase implements UsecaseHelper<BusinessDetailsEntity> {
  final ProfileRepo _repo;

  GetBusinessDetailUsecase(this._repo);

  @override
  Future<Either<FailureServices, BusinessDetailsEntity>> call(
      {Map<String, dynamic> parm = const {}}) async {
    return _repo.getBusinessDetails();
  }
}

class GetUserProfileUsecase implements UsecaseHelper<UserEntity> {
  final ProfileRepo _repo;

  GetUserProfileUsecase(this._repo);

  @override
  Future<Either<FailureServices, UserEntity>> call(
      {Map<String, dynamic> parm = const {}}) async {
    return _repo.getUserInfo();
  }
}

class UpdateUserInfoUsecase implements UsecaseHelper<User> {
  final ProfileRepo _repo;

  UpdateUserInfoUsecase(this._repo);

  @override
  Future<Either<FailureServices, User>> call(
      {Map<String, dynamic> parm = const {}}) async {
    return _repo.updateUserInfo(parm);
  }
}
