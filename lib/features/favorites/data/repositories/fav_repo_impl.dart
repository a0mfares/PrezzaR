import 'package:dartz/dartz.dart';
import 'package:prezza/core/helper/network.dart';
import 'package:prezza/core/helper/tools.dart';
import 'package:prezza/core/service/failure_services.dart';
import 'package:prezza/features/favorites/data/datasources/favorite_service.dart';
import 'package:prezza/features/favorites/domain/entities/favvendor_entity.dart';
import 'package:prezza/features/favorites/domain/repositories/fav_repo.dart';

import '../models/favvendor_model.dart';

class FavRepoImpl implements FavRepo {
  final FavService _service;

  FavRepoImpl(this._service);

  @override
  Future<Either<FailureServices, void>> addFavVendor(
      Map<String, dynamic> data) {
    return execute(() => _service.addFavoriteVendor(bearerToken, data));
  }

  @override
  Future<Either<FailureServices, void>> deleteFavVendor(
      Map<String, dynamic> data) {
    return execute(() => _service.deleteFavoriteVendor(bearerToken, data));
  }

  @override
  Future<Either<FailureServices, List<FavVendorEntity>>> getFavVendor() {
    return execute(() async {
      final result = await _service.getFavoriteVendor(bearerToken);
      return List<FavVendorEntity>.from(result.data['data']
          .map((e) => FavVendorEntity.fromModel(FavVendorModel.fromJson(e))));
    });
  }
}
