import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import '../../../../core/constants/urls.dart';

part 'location_service.g.dart';

@RestApi(baseUrl: Urls.baseUrl)
abstract class LocationService {
  factory LocationService(Dio dio) = _LocationService;

  @GET(Urls.vendorBusinessBrances)
  Future<HttpResponse> getBranches(
    @Queries() Map<String, dynamic> data,
  );
  @DELETE(Urls.vendorBusinessBrances)
  Future<HttpResponse> deleteBranches(
    @Queries() Map<String, dynamic> data,
  );
  @PATCH(Urls.vendorBusinessBrances)
  Future<HttpResponse> updateBranches(
    @Queries() Map<String, dynamic> data,
  );
  @POST(Urls.vendorBusinessBrances)
  Future<HttpResponse> addBranch(
    @Body() Map<String, dynamic> data,
  );

  @POST(Urls.deliveryAddress)
  Future<HttpResponse> addDeliveryAddress(
    @Header('Authorization') auth,
    @Body() Map<String, dynamic> data,
  );
  @DELETE(Urls.deliveryAddress)
  Future<HttpResponse> deleteDeliveryAddress(
    @Header('Authorization') auth,
    @Body() Map<String, dynamic> data,
  );
  @GET(Urls.deliveryAddress)
  Future<HttpResponse> getDeliveryAddress(
    @Header('Authorization') auth,
  );
  @PATCH(Urls.deliveryAddress)
  Future<HttpResponse> updateDeliveryAddress(
    @Header('Authorization') auth,
    @Body() Map<String, dynamic> data,
  );
}
