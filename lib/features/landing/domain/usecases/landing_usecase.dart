import 'package:dartz/dartz.dart';
import 'package:prezza/core/helper/usecase_helper.dart';
import 'package:prezza/core/service/failure_services.dart';
import 'package:prezza/features/landing/domain/entities/appreview_entity.dart';
import 'package:prezza/features/landing/domain/entities/commonissue_entity.dart';
import 'package:prezza/features/landing/domain/entities/downloadplatforms_entity.dart';
import 'package:prezza/features/landing/domain/entities/faq_entity.dart';
import 'package:prezza/features/landing/domain/entities/socialplatforms_entity.dart';
import 'package:prezza/features/landing/domain/repositories/landing_repo.dart';

class AddAppReviewUsecase extends UsecaseHelper<void> {
  final LandingRepo _repo;

  AddAppReviewUsecase(this._repo);

  @override
  Future<Either<FailureServices, void>> call(
      {Map<String, dynamic> parm = const {}}) {
    return _repo.addAppReview(parm);
  }
}

class GetAppReviewUsecase extends UsecaseHelper<List<AppReviewEntity>> {
  final LandingRepo _repo;

  GetAppReviewUsecase(this._repo);

  @override
  Future<Either<FailureServices, List<AppReviewEntity>>> call(
      {Map<String, dynamic> parm = const {}}) {
    return _repo.getAppReviews();
  }
}

class GetCommonIssuesUsecase extends UsecaseHelper<List<CommonIssueEntity>> {
  final LandingRepo _repo;

  GetCommonIssuesUsecase(this._repo);

  @override
  Future<Either<FailureServices, List<CommonIssueEntity>>> call(
      {Map<String, dynamic> parm = const {}}) {
    return _repo.getCommonIssues();
  }
}

class GetFAQUsecase extends UsecaseHelper<List<FaqEntity>> {
  final LandingRepo _repo;

  GetFAQUsecase(this._repo);

  @override
  Future<Either<FailureServices, List<FaqEntity>>> call(
      {Map<String, dynamic> parm = const {}}) {
    return _repo.getFAQ();
  }
}

class GetDownloadPlatformsUsecase
    extends UsecaseHelper<List<DownloadPlatformsEntity>> {
  final LandingRepo _repo;

  GetDownloadPlatformsUsecase(this._repo);

  @override
  Future<Either<FailureServices, List<DownloadPlatformsEntity>>> call(
      {Map<String, dynamic> parm = const {}}) {
    return _repo.getDownloadPlatforms();
  }
}

class GetSocialPlatformsUsecase
    extends UsecaseHelper<List<SocialPlatformsEntity>> {
  final LandingRepo _repo;

  GetSocialPlatformsUsecase(this._repo);

  @override
  Future<Either<FailureServices, List<SocialPlatformsEntity>>> call(
      {Map<String, dynamic> parm = const {}}) {
    return _repo.getSocialPlatforms();
  }
}
