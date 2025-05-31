import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import '../../../../core/constants/urls.dart';

part 'dashboard_services.g.dart';

@RestApi(baseUrl: Urls.baseUrl)
abstract class DashboardServices {
  factory DashboardServices(Dio dio) = _DashboardServices;
}
