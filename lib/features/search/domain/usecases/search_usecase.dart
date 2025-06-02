import 'package:dartz/dartz.dart';
import 'package:prezza/core/helper/usecase_helper.dart';
import 'package:prezza/features/search/domain/repositories/search_repo.dart';

import '../../../../core/service/failure_services.dart';
import '../entities/vendorsearch_entity.dart';

class SearchUsingVendorNameUsecase
    extends UsecaseHelper<List<VendorSearchEntity>> {
  final SearchRepo _repo;

  SearchUsingVendorNameUsecase(this._repo);

  @override
  Future<Either<FailureServices, List<VendorSearchEntity>>> call(
      {Map<String, dynamic> parm = const {}}) {
    return _repo.searchByVendorName(parm);
  }
}
