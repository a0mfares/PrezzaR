import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import '../../../../core/constants/urls.dart';

part 'car_service.g.dart';

@RestApi(baseUrl: Urls.baseUrl)
abstract class CarService {
  factory CarService(Dio dio) = _CarService;

  @POST(Urls.userCars)
  Future<HttpResponse> addCar(
    @Header('Authorization') auth,
    @Body() FormData data,
  );
  @PATCH(Urls.userCars)
  Future<HttpResponse> updateCar(
    @Header('Authorization') auth,
    @Body() FormData data,
  );
  @GET(Urls.userCars)
  Future<HttpResponse> getCars(
    @Header('Authorization') auth,
  );
  @DELETE(Urls.userCars)
  Future<HttpResponse> deleteCars(
    @Header('Authorization') auth,
    @Body() Map<String, dynamic> data,
  );
  @GET(Urls.loginCarApi)
  Future<HttpResponse> authorizeCarApi(
    @Header('Authorization') auth,
  );
}
