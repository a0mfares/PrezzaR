import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import '../../../../core/constants/urls.dart';

part 'landing_service.g.dart';

@RestApi(baseUrl: Urls.baseUrl)
abstract class LandingService {
  factory LandingService(Dio dio) = _LandingService;

  @POST(Urls.appReview)
  Future<HttpResponse> addAppReview(
    @Body() Map<String, dynamic> body,
  );
  @GET(Urls.appReview)
  Future<HttpResponse> getAppReviews();
  @GET(Urls.getCommonIssues)
  Future<HttpResponse> getCommonIssues();
  @GET(Urls.faq)
  Future<HttpResponse> getFAQ();
  @GET(Urls.downloadPlatforms)
  Future<HttpResponse> getDownloadPlatforms();
  @GET(Urls.socialPlatforms)
  Future<HttpResponse> getSocialPlatforms();
}
