import 'package:dartz/dartz.dart';
import 'package:prezza/core/service/failure_services.dart';
import 'package:prezza/features/landing/data/datasources/landing_service.dart';
import 'package:prezza/features/landing/data/models/appreview_model.dart';
import 'package:prezza/features/landing/data/models/commonissue_model.dart';
import 'package:prezza/features/landing/data/models/downloadplatforms_model.dart';
import 'package:prezza/features/landing/data/models/faq_model.dart';
import 'package:prezza/features/landing/data/models/socialplatforms_model.dart';
import 'package:prezza/features/landing/domain/entities/appreview_entity.dart';
import 'package:prezza/features/landing/domain/entities/commonissue_entity.dart';
import 'package:prezza/features/landing/domain/entities/downloadplatforms_entity.dart';
import 'package:prezza/features/landing/domain/entities/faq_entity.dart';
import 'package:prezza/features/landing/domain/entities/socialplatforms_entity.dart';
import 'package:prezza/features/landing/domain/repositories/landing_repo.dart';

import '../../../../core/helper/network.dart';

class LandingRepoImpl extends LandingRepo {
  final LandingService _service;

  LandingRepoImpl(this._service);
  @override
  Future<Either<FailureServices, void>> addAppReview(
      Map<String, dynamic> body) {
    return execute(() => _service.addAppReview(body));
  }

  @override
  Future<Either<FailureServices, List<AppReviewEntity>>> getAppReviews() {
    return execute(() async {
      final result = await _service.getAppReviews();

      return List<AppReviewEntity>.from((result.data['data'] as List)
          .map((e) => AppReviewEntity.fromModel(AppReviewModel.fromMap(e))));
    });
  }

  @override
  Future<Either<FailureServices, List<CommonIssueEntity>>> getCommonIssues() {
    return execute(() async {
      final result = await _service.getCommonIssues();

      return List<CommonIssueEntity>.from((result.data['data'] as List).map(
          (e) => CommonIssueEntity.fromModel(CommonIssueModel.fromMap(e))));
    });
  }

  @override
  Future<Either<FailureServices, List<DownloadPlatformsEntity>>>
      getDownloadPlatforms() {
    return execute(() async {
      final result = await _service.getDownloadPlatforms();

      return List<DownloadPlatformsEntity>.from((result.data['data'] as List)
          .map((e) => DownloadPlatformsEntity.fromModel(
              DownloadPlatformsModel.fromMap(e))));
    });
  }

  @override
  Future<Either<FailureServices, List<FaqEntity>>> getFAQ() {
    return execute(() async {
      final result = await _service.getFAQ();

      return List<FaqEntity>.from((result.data['data'] as List)
          .map((e) => FaqEntity.fromModel(FaqModel.fromMap(e))));
    });
  }

  @override
  Future<Either<FailureServices, List<SocialPlatformsEntity>>>
      getSocialPlatforms() {
    return execute(() async {
      final result = await _service.getSocialPlatforms();

      return List<SocialPlatformsEntity>.from((result.data['data'] as List).map(
          (e) => SocialPlatformsEntity.fromModel(
              SocialPlatformsModel.fromMap(e))));
    });
  }
}
