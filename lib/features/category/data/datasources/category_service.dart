import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import '../../../../core/constants/urls.dart';

part 'category_service.g.dart';

@RestApi(baseUrl: Urls.baseUrl)
abstract class CategoryServices {
  factory CategoryServices(Dio dio) = _CategoryServices;

  @GET(Urls.categories)
  Future<HttpResponse> getCategories();
  @GET(Urls.categoryBooking)
  Future<HttpResponse> getCategoriesBooking();

  @GET(Urls.sponsors)
  Future<HttpResponse> getSponsors();
}
