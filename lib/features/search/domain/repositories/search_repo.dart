import 'package:dartz/dartz.dart';
import 'package:prezza/core/service/failure_services.dart';
import 'package:prezza/features/search/domain/entities/vendorsearch_entity.dart';

abstract class SearchRepo {
  Future<Either<FailureServices, List<VendorSearchEntity>>> searchByVendorName(
      Map<String, dynamic> queries);
}
