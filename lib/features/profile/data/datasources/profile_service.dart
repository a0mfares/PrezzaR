import 'package:dio/dio.dart';
import 'package:prezza/core/constants/urls.dart';
import 'package:retrofit/retrofit.dart';

part 'profile_service.g.dart';

@RestApi(baseUrl: Urls.baseUrl)
abstract class ProfileService {
  factory ProfileService(Dio dio) = _ProfileService;

  @POST(Urls.bussinessDetails)
  Future<HttpResponse> addBusinesDetails(
    @Body() FormData data,
  );
  @GET(Urls.bussinessDetails)
  Future<HttpResponse> getVendorDetails(
    @Header('Authorization') auth,
  );

  @POST(Urls.favoritesVendors)
  Future<HttpResponse> addFavorites(
    @Header('Authorization') auth,
    @Body() Map<String, dynamic> data,
  );
  @PUT(Urls.userInfo)
  Future<HttpResponse> updateUserInfo(
    @Header('Authorization') auth,
    @Body() FormData data,
  );
  @POST(Urls.updatePass)
  Future<HttpResponse> updatePass(
    @Header('Authorization') auth,
    @Body() Map<String, dynamic> data,
  );
  @GET(Urls.userInfo)
  Future<HttpResponse> getUserInfo(
    @Header('Authorization') auth,
  );
  @GET(Urls.favoritesVendors)
  Future<HttpResponse> getFavorites(
    @Header('Authorization') auth,
    @Body() Map<String, dynamic> data,
  );
  @DELETE(Urls.favoritesVendors)
  Future<HttpResponse> deleteFavoritesItem(
    @Header('Authorization') auth,
    @Body() Map<String, dynamic> data,
  );
  @PUT(Urls.updateBusinessDetails)
  Future<HttpResponse> updateBusinessDetails(
    @Header('Authorization') auth,
    @Body() FormData data,
  );
}
