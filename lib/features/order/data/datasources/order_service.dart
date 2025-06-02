
import 'package:dio/dio.dart';
import 'package:prezza/core/constants/urls.dart';
import 'package:retrofit/retrofit.dart';

part 'order_service.g.dart';

@RestApi(baseUrl: Urls.baseUrl)
abstract class OrderService {
  factory OrderService(Dio dio) = _OrderService;

  @GET(Urls.getOrderDatabByStatus)
  Future<HttpResponse> getOrdersByStatus(
    @Header('Authorization') String token,
    @Query('order_status') String status,
  );
  @GET(Urls.getOrderByStatus)
  Future<HttpResponse> getUserOrders(
    @Header('Authorization') String token,
    @Query('order_status') String status,
  );
  @GET(Urls.getOrderProducts)
  Future<HttpResponse> getOrderDetails(
    @Header('Authorization') String token,
    @Query('order_uuid') String status,
  );
  @GET(Urls.getDeliveryOrPickupOrderDetails)
  Future<HttpResponse> getOrderPickupDelivery(
    @Header('Authorization') String token,
    @Query('order_uuid') String status,
  );

  @POST(Urls.acceptOrder)
  Future<HttpResponse> acceptOrder(
    @Header('Authorization') String token,
    @Body() Map<String, dynamic> body,
  );
  @POST(Urls.rejectOrder)
  Future<HttpResponse> rejectOrder(
    @Header('Authorization') String token,
    @Body() Map<String, dynamic> body,
  );
  @POST(Urls.updateOrderToShipped)
  Future<HttpResponse> doneOrder(
    @Header('Authorization') String token,
    @Body() Map<String, dynamic> body,
  );

  @PATCH(Urls.cancelOrder)
  Future<HttpResponse> cancelOrder(
    @Header('Authorization') String token,
    @Body() Map<String, dynamic> body,
  );

  @POST(Urls.createOrder)
  Future<HttpResponse> createOrder(
    @Header('Authorization') String token,
    @Body() Map<String, dynamic> body,
  );
  @POST(Urls.addOrderDetails)
  Future<HttpResponse> addOrderDetails(
    @Header('Authorization') String token,
    @Body() Map<String, dynamic> body,
  );
}
