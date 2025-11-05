import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import '../../../../core/constants/urls.dart';

part 'review_service.g.dart';

@RestApi(baseUrl: Urls.baseUrl)
abstract class ReviewService {
  factory ReviewService(Dio dio) = _ReviewService;

  @POST(Urls.reviews)
  Future<HttpResponse> addReviewProduct(
    @Header('Authorization') String totken,
    @Body() Map<String, dynamic> body,
  );
  @GET(Urls.reviews)
  Future<HttpResponse> getReviews(
    @Header('Authorization') String totken,
    @Body() FormData body,
  );
}
