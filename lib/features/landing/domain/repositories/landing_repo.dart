import 'package:dartz/dartz.dart';
import 'package:prezza/core/service/failure_services.dart';
import 'package:prezza/features/landing/domain/entities/appreview_entity.dart';
import 'package:prezza/features/landing/domain/entities/commonissue_entity.dart';
import 'package:prezza/features/landing/domain/entities/downloadplatforms_entity.dart';
import 'package:prezza/features/landing/domain/entities/faq_entity.dart';
import 'package:prezza/features/landing/domain/entities/socialplatforms_entity.dart';

abstract class LandingRepo {
  Future<Either<FailureServices, void>> addAppReview(
    Map<String, dynamic> body,
  );
  Future<Either<FailureServices, List<AppReviewEntity>>> getAppReviews();
  Future<Either<FailureServices, List<CommonIssueEntity>>> getCommonIssues();
  Future<Either<FailureServices, List<FaqEntity>>> getFAQ();
  Future<Either<FailureServices, List<DownloadPlatformsEntity>>>
      getDownloadPlatforms();
  Future<Either<FailureServices, List<SocialPlatformsEntity>>>
      getSocialPlatforms();
}
