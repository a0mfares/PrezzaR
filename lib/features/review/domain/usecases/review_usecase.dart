// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:dartz/dartz.dart';

import 'package:prezza/core/helper/usecase_helper.dart';
import 'package:prezza/core/service/failure_services.dart';
import 'package:prezza/features/review/domain/repositories/review_repo.dart';

import '../entities/review_entity.dart';

class GetProductReviewsUsecase extends UsecaseHelper<List<ReviewEntity>> {
  final ReviewRepo _repo;
  GetProductReviewsUsecase(this._repo);

  @override
  Future<Either<FailureServices, List<ReviewEntity>>> call(
      {Map<String, dynamic> parm = const {}}) {
    return _repo.getProductReviews(parm);
  }
}
class AddProductReviewUsecase extends UsecaseHelper<void> {
  final ReviewRepo _repo;
  AddProductReviewUsecase(this._repo);

  @override
  Future<Either<FailureServices,void>> call(
      {Map<String, dynamic> parm = const {}}) {
    return _repo.addProductReview(parm);
  }
}
