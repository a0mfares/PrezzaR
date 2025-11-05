import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import '../../../../core/constants/urls.dart';

part 'search_service.g.dart';

@RestApi(baseUrl: Urls.baseUrl)
abstract class SearchService {
  factory SearchService(Dio dio) = _SearchService;

  @GET(Urls.searchUsingName)
  Future<HttpResponse> searchUsingVendorName(
    @Queries() Map<String, dynamic> queries,
  );
}
