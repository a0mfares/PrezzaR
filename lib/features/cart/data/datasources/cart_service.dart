import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import '../../../../core/constants/urls.dart';

part 'cart_service.g.dart';

@RestApi(baseUrl: Urls.baseUrl)
abstract class CartService {
  factory CartService(Dio dio) = _CartService;

  @GET(Urls.getUserCart)
  Future<HttpResponse> getUserCart(@Header('Authorization') String token);

  @GET(Urls.cart)
  Future<HttpResponse> getCartDetails(
    @Header('Authorization') String token,
    @Queries() Map<String, dynamic> queries,
  );

  @DELETE(Urls.cart)
  Future<HttpResponse> clearCart(
    @Header('Authorization') String token,
    @Body() Map<String, dynamic> body,
  );

  @GET(Urls.getPrepareTime)
  Future<HttpResponse> getCartPreparingTime(
    @Header('Authorization') String token,
    @Queries() Map<String, dynamic> queries,
  );
  @GET(Urls.getOftenOrderdWith)
  Future<HttpResponse> getOftenOrderedWith(
    @Header('Authorization') String token,
    @Queries() Map<String, dynamic> queries,
  );

  @POST(Urls.addItemToCart)
  Future<HttpResponse> addItemToCart(
    @Header('Authorization') String token,
    @Body() FormData body,
  );

  @PATCH(Urls.updateItemQun)
  Future<HttpResponse> updateItemQun(
    @Header('Authorization') String token,
    @Body() Map<String, dynamic> body,
  );

  @DELETE(Urls.removeItemFromCart)
  Future<HttpResponse> removeItemFromCart(
    @Header('Authorization') String token,
    @Queries() Map<String, dynamic> body,
  );

  @POST(Urls.addOrUpdateCopon)
  Future<HttpResponse> addOrUpdateCoupon(
    @Header('Authorization') String token,
    @Body() Map<String, dynamic> body,
  );
}
