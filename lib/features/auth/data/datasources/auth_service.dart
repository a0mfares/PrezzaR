import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import '../../../../core/constants/urls.dart';
part 'auth_service.g.dart';

@RestApi(baseUrl: Urls.baseUrl)
abstract class AuthService {
  factory AuthService(Dio dio) = _AuthService;

  @POST(Urls.signupPhone)
  Future<HttpResponse> registerPhone(
    @Body() Map<String, dynamic> body,
  );

  @POST(Urls.confirmPhone)
  Future<HttpResponse> confirmRegPhone(
    @Body() Map<String, dynamic> body,
  );
  @POST(Urls.loginUsingPhone)
  Future<HttpResponse> signinPhone(
    @Body() Map<String, dynamic> body,
  );
  @POST(Urls.forgotPassPhone)
  Future<HttpResponse> forgotPassPhone(
    @Body() Map<String, dynamic> body,
  );
  @POST(Urls.getRestPassToken)
  Future<HttpResponse> confirmPhone(
    @Body() Map<String, dynamic> body,
  );
  @POST(Urls.resendTokenPhone)
  Future<HttpResponse> resendOtpPhone(
    @Body() Map<String, dynamic> body,
  );

  //* auth email
  @POST(Urls.signinEmail)
  Future<HttpResponse> signinEmail(
    @Body() Map<String, dynamic> body,
  );
  @POST(Urls.signupEmail)
  Future<HttpResponse> signupEmail(
    @Body() Map<String, dynamic> body,
  );
  @POST(Urls.signupPhone)
  Future<HttpResponse> signupPhone(
    @Body() Map<String, dynamic> body,
  );
  @POST(Urls.completeUserPhone)
  Future<HttpResponse> createProfile(
    @Body() Map<String, dynamic> body,
  );
  @POST(Urls.confirmOtp)
  Future<HttpResponse> confirmOtp(
    @Body() Map<String, dynamic> body,
  );
  @POST(Urls.resendOtp)
  Future<HttpResponse> resendOtpSignup(
    @Body() Map<String, dynamic> body,
  );
  @POST(Urls.chooseUserType)
  Future<HttpResponse> chooseUserType(
    @Body() Map<String, dynamic> body,
  );
  @POST(Urls.refreshToken)
  Future<HttpResponse> refreshToken(
    @Body() Map<String, dynamic> body,
  );
  @POST(Urls.forgotPass)
  Future<HttpResponse> sendOtpResetPass(
    @Body() Map<String, dynamic> body,
  );
  @POST(Urls.confirmOtPass)
  Future<HttpResponse> confirmOtpPass(
    @Body() Map<String, dynamic> body,
  );
  @POST(Urls.resetPass)
  Future<HttpResponse> resetPassword(
    @Body() Map<String, dynamic> body,
  );
  @POST(Urls.forgotPass)
  Future<HttpResponse> resendOtpPass(
    @Body() Map<String, dynamic> body,
  );
  @GET(Urls.userInfo)
  Future<HttpResponse> getUserInfo(@Header('Authorization') auth);
}
