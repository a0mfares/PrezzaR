import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import '../../../../core/constants/urls.dart';

part 'favorite_service.g.dart';

@RestApi(baseUrl: Urls.baseUrl)
abstract class FavService {
  factory FavService(Dio dio) = _FavService;

  @POST(Urls.addFavvendor)
  Future<HttpResponse> addFavoriteVendor(
    @Header('Authorization') String token,
    @Queries() Map<String, dynamic> body,
  );
  @GET(Urls.getFavVendor)
  Future<HttpResponse> getFavoriteVendor(
    @Header('Authorization') String token,
  );
  @DELETE(Urls.deleteVendor)
  Future<HttpResponse> deleteFavoriteVendor(
    @Header('Authorization') String token,
    @Body() Map<String, dynamic> body,
  );
}
