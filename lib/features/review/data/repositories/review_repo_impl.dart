import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:prezza/core/helper/network.dart';
import 'package:prezza/core/helper/tools.dart';
import 'package:prezza/core/service/failure_services.dart';
import 'package:prezza/features/review/data/datasources/review_service.dart';
import 'package:prezza/features/review/data/models/review_model.dart';
import 'package:prezza/features/review/domain/entities/review_entity.dart';
import 'package:prezza/features/review/domain/repositories/review_repo.dart';

class ReviewRepoImpl implements ReviewRepo {
  final ReviewService _service;

  ReviewRepoImpl(this._service);

  @override
  Future<Either<FailureServices, void>> addProductReview(
      Map<String, dynamic> data) {
    return execute(() => _service.addReviewProduct(bearerToken, data));
  }

  @override
  Future<Either<FailureServices, List<ReviewEntity>>> getProductReviews(
      Map<String, dynamic> data) {
    return execute(() async {
      final result =
          await _service.getReviews(bearerToken, FormData.fromMap(data));
      return List<ReviewEntity>.from(result.data['data']
          .map((e) => ReviewEntity.fromModel(ReviewModel.fromMap(e))));
    });
  }
}
