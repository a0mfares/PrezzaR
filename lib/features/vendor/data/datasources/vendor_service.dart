import 'package:dio/dio.dart';
import 'package:prezza/core/constants/urls.dart';
import 'package:retrofit/retrofit.dart';

part 'vendor_service.g.dart';

@RestApi(baseUrl: Urls.baseUrl)
abstract class VendorService {
  factory VendorService(Dio dio) = _VendorService;

  @GET(Urls.reviewsAnalysis)
  Future<HttpResponse> getReviewsAnalysis(
      @Header('Authorization') String toekn);
  @GET(Urls.vendorBalance)
  Future<HttpResponse> getVendorBalance(@Header('Authorization') String toekn);
  @GET(Urls.getOrderStatusCount)
  Future<HttpResponse> getOrderStatusCount(
      @Header('Authorization') String toekn);

  @GET(Urls.getMostOrderedProducts)
  Future<HttpResponse> getMostOrderedProduct(
      @Header('Authorization') String toekn);

  @GET(Urls.nearbyPlaces)
  Future<HttpResponse> getNearByPlaces(
    @Header('Authorization') String toekn,
    @Queries() Map<String, dynamic> queries,
  );
  @GET(Urls.allVendorsByCategoryAndSerivce)
  Future<HttpResponse> getVendorsByCategoryOrService(
    @Header('Authorization') String toekn,
    @Queries() Map<String, dynamic> queries,
  );
  @GET(Urls.getVendorDetails)
  Future<HttpResponse> getVendorDetails(
    @Header('Authorization') String toekn,
    @Queries() Map<String, dynamic> queries,
  );
  @GET(Urls.filter)
  Future<HttpResponse> filter(
    @Header('Authorization') String toekn,
    @Queries() Map<String, dynamic> queries,
  );
  @GET(Urls.nearbyPlacesBooking)
  Future<HttpResponse> getNearByPlacesBooking(
    @Header('Authorization') String toekn,
    @Queries() Map<String, dynamic> queries,
  );
  @GET(Urls.getAllVendorsByCategoryBooking)
  Future<HttpResponse> getAllVendorsByCategoryBooking(
    @Header('Authorization') String toekn,
    @Queries() Map<String, dynamic> queries,
  );
  @GET(Urls.getVendorByIdBooking)
  Future<HttpResponse> getVendorByIdBooking(
    @Header('Authorization') String toekn,
    @Queries() Map<String, dynamic> queries,
  );
  @GET(Urls.getVendorByFilterBooking)
  Future<HttpResponse> filterBooking(
    @Header('Authorization') String toekn,
    @Queries() Map<String, dynamic> queries,
  );
  @GET(Urls.getVendorBranches)
  Future<HttpResponse> getVendorBranches(
    @Header('Authorization') String toekn,
    @Queries() Map<String, dynamic> queries,
  );
}
