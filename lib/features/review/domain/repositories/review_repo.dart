import 'package:dartz/dartz.dart';
import 'package:prezza/core/service/failure_services.dart';
import 'package:prezza/features/review/domain/entities/review_entity.dart';

abstract class ReviewRepo {
  Future<Either<FailureServices, void>> addProductReview(
      Map<String, dynamic> data);
  Future<Either<FailureServices, List<ReviewEntity>>> getProductReviews(
      Map<String, dynamic> data);
}
