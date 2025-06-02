import 'package:dartz/dartz.dart';
import 'package:prezza/core/service/failure_services.dart';
import 'package:prezza/features/category/domain/entities/category_entity.dart';
import 'package:prezza/features/category/domain/entities/sponsors_entity.dart';

abstract class CategoryRepo {
  Future<Either<FailureServices, List<CategoryEntity>>> getCategories();
  Future<Either<FailureServices, List<CategoryEntity>>> getCategoriesBooking();
  Future<Either<FailureServices, List<SponsorsEntity>>> getSponsors();
}
