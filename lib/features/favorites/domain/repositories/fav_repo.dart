import 'package:dartz/dartz.dart';
import 'package:prezza/core/service/failure_services.dart';
import 'package:prezza/features/favorites/domain/entities/favvendor_entity.dart';

abstract class FavRepo {
  Future<Either<FailureServices, void>> addFavVendor(Map<String, dynamic> data);
  Future<Either<FailureServices, void>> deleteFavVendor(
      Map<String, dynamic> data);
  Future<Either<FailureServices, List<FavVendorEntity>>> getFavVendor();
}
