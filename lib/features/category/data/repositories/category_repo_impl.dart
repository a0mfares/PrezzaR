import 'package:dartz/dartz.dart';
import 'package:prezza/core/helper/network.dart';
import 'package:prezza/core/service/failure_services.dart';
import 'package:prezza/features/category/data/datasources/category_service.dart';
import 'package:prezza/features/category/data/models/category_model.dart';
import 'package:prezza/features/category/data/models/sponsors_model.dart';
import 'package:prezza/features/category/domain/entities/category_entity.dart';
import 'package:prezza/features/category/domain/entities/sponsors_entity.dart';

import '../../domain/repositories/category_repo.dart';

class CategoryRepoImpl implements CategoryRepo {
  final CategoryServices _services;

  CategoryRepoImpl(this._services);

  @override
  Future<Either<FailureServices, List<CategoryEntity>>> getCategories() {
    return execute(() async {
      final result = await _services.getCategories();
      return List<CategoryEntity>.from(result.data['data']
          .map((e) => CategoryEntity.fromModel(CategoryModel.fromMap(e))));
    });
  }

  @override
  Future<Either<FailureServices, List<SponsorsEntity>>> getSponsors() {
    return execute(() async {
      final result = await _services.getSponsors();
      return List<SponsorsEntity>.from(result.data['data']
          .map((e) => SponsorsEntity.fromModel(SponsorsModel.fromJson(e))));
    });
  }

  @override
  Future<Either<FailureServices, List<CategoryEntity>>> getCategoriesBooking() {
    return execute(() async {
      final result = await _services.getCategoriesBooking();
      return List<CategoryEntity>.from(result.data['data']
          .map((e) => CategoryEntity.fromModel(CategoryModel.fromMap(e))));
    });
  }
}
