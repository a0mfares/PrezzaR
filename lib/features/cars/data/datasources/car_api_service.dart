import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import '../../../../core/constants/urls.dart';

part 'car_api_service.g.dart';

@RestApi(baseUrl: Urls.baseUrlCars)
abstract class CarApiService {
  factory CarApiService(Dio dio) = _CarApiService;

  @GET(Urls.makes)
  Future<HttpResponse> getMakes(
    @Header('Authorization') auth,
    @Queries() Map<String, dynamic> data,
  );
  @GET(Urls.bodies)
  Future<HttpResponse> getTypes(
    @Header('Authorization') auth,
    @Queries() Map<String, dynamic> data,
  );
  @GET(Urls.models)
  Future<HttpResponse> getModels(
    @Header('Authorization') auth,
    @Queries() Map<String, dynamic> data,
  );
  @GET(Urls.years)
  Future<HttpResponse> getYears(
    @Header('Authorization') auth,
  );
 
}
