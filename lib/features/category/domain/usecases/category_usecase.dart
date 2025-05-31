import 'package:dartz/dartz.dart';
import 'package:prezza/core/helper/usecase_helper.dart';
import 'package:prezza/core/service/failure_services.dart';
import 'package:prezza/features/category/domain/repositories/category_repo.dart';

import '../entities/category_entity.dart';
import '../entities/sponsors_entity.dart';

class GetCategoriesUsecase implements UsecaseHelper<List<CategoryEntity>> {
  final CategoryRepo _repo;

  GetCategoriesUsecase(this._repo);

  @override
  Future<Either<FailureServices, List<CategoryEntity>>> call(
      {Map<String, dynamic> parm = const {}}) {
    if (parm['booking'] == true) {
      return _repo.getCategoriesBooking();
    }
    return _repo.getCategories();
  }
}

class GetSponsorsUsecase implements UsecaseHelper<List<SponsorsEntity>> {
  final CategoryRepo _repo;

  GetSponsorsUsecase(this._repo);

  @override
  Future<Either<FailureServices, List<SponsorsEntity>>> call(
      {Map<String, dynamic> parm = const {}}) {
    return _repo.getSponsors();
  }
}
