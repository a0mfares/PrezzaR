import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import '../../../../core/constants/urls.dart';

part 'payment_service.g.dart';

@RestApi(baseUrl: Urls.baseUrl)
abstract class PaymentService {
  factory PaymentService(Dio dio) = _PaymentService;

  @POST(Urls.bankCard)
  Future<HttpResponse> addBankCard(
    @Body() Map<String, dynamic> data,
  );
  @POST(Urls.getAccessToken)
  Future<HttpResponse> getAccessToken();
  @POST(Urls.bankCardVendor)
  Future<HttpResponse> getPaymentCards(
    @Header('Authorization') auth,
    @Body() Map<String, dynamic> data,
  );

  @POST(Urls.paymentCards)
  Future<HttpResponse> addCustomerCard(
    @Header('Authorization') auth,
    @Body() Map<String, dynamic> data,
  );
  @GET(Urls.paymentCards)
  Future<HttpResponse> getCustomerCard(
    @Header('Authorization') auth,
  );
  @DELETE(Urls.paymentCards)
  Future<HttpResponse> deleteCustomerCard(
    @Header('Authorization') auth,
    @Body() Map<String, dynamic> data,
  );
}
