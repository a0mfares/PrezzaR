import 'package:dartz/dartz.dart';
import 'package:prezza/core/service/failure_services.dart';
import 'package:prezza/features/search/data/datasources/search_service.dart';
import 'package:prezza/features/search/data/models/vendorsearch_model.dart';
import 'package:prezza/features/search/domain/repositories/search_repo.dart';

import '../../../../core/helper/network.dart';
import '../../domain/entities/vendorsearch_entity.dart';

class SearchRepoImpl implements SearchRepo {
  final SearchService _service;

  SearchRepoImpl(this._service);

  @override
  Future<Either<FailureServices, List<VendorSearchEntity>>> searchByVendorName(
      Map<String, dynamic> queries) {
    return execute(() async {
      final result = await _service.searchUsingVendorName(queries);
      return List<VendorSearchEntity>.from(result.data['data'].map(
          (e) => VendorSearchEntity.fromModel(VendorSearchModel.fromJson(e))));
    });
  }
}
