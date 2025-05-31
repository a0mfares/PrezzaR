import 'package:dartz/dartz.dart';
import 'package:prezza/core/helper/usecase_helper.dart';
import 'package:prezza/core/service/failure_services.dart';

import '../entities/favvendor_entity.dart';
import '../repositories/fav_repo.dart';

class GetFavVendorUsecase extends UsecaseHelper<List<FavVendorEntity>> {
  final FavRepo _repo;

  GetFavVendorUsecase(this._repo);

  @override
  Future<Either<FailureServices, List<FavVendorEntity>>> call(
      {Map<String, dynamic> parm = const {}}) {
    return _repo.getFavVendor();
  }
}

class AddFavVendorUsecase extends UsecaseHelper<void> {
  final FavRepo _repo;

  AddFavVendorUsecase(this._repo);

  @override
  Future<Either<FailureServices, void>> call(
      {Map<String, dynamic> parm = const {}}) {
    return _repo.addFavVendor(parm);
  }
}

class DeleteFavVendorUsecase extends UsecaseHelper<void> {
  final FavRepo _repo;

  DeleteFavVendorUsecase(this._repo);

  @override
  Future<Either<FailureServices, void>> call(
      {Map<String, dynamic> parm = const {}}) {
    return _repo.deleteFavVendor(parm);
  }
}
