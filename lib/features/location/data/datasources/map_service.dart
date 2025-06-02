import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import '../../../../core/constants/urls.dart';

part 'map_service.g.dart';

@RestApi(baseUrl: Urls.baseUrlMap)
abstract class MapService {
  factory MapService(Dio dio) = _MapService;

  @GET(Urls.arrivelTime)
  Future<HttpResponse> getArrivelTime(
    @Queries() Map<String, dynamic> query,
  );
}
