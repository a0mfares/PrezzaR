import 'package:dio/dio.dart';
import 'package:prezza/core/constants/urls.dart';
import 'package:retrofit/retrofit.dart';

part 'notify_service.g.dart';

@RestApi(baseUrl: Urls.baseUrl)
abstract class NotifyService {
  factory NotifyService(Dio dio) = _NotifyService;

  @GET(Urls.getAllNotification)
  Future<HttpResponse> getNotifications(
    @Header('Authorization') String token,
    @Query('notification_type') String notifyType,
    @Query('number_of_notifications') int numOfNotify,
  );
  @POST(Urls.markAllNotification)
  Future<HttpResponse> markNotificationRead(
    @Header('Authorization') String token,
    @Body() Map<String, dynamic> body,
  );
  @POST(Urls.markNotification)
  Future<HttpResponse> markAllNotification(
    @Header('Authorization') String token,
  );
}
