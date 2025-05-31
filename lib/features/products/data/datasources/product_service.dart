import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import '../../../../core/constants/urls.dart';

part 'product_service.g.dart';

@RestApi(baseUrl: Urls.baseUrl)
abstract class ProductService {
  factory ProductService(Dio dio) = _ProductService;

  @POST(Urls.createProduct)
  Future<HttpResponse> createProductInstance(
    @Header('Authorization') String token,
  );
  @POST(Urls.addProductDetails)
  Future<HttpResponse> addProductDetails(
    @Header('Authorization') String token,
    @Body() FormData body,
  );
  @POST(Urls.addProductCategory)
  Future<HttpResponse> addProductCategory(
    @Header('Authorization') String token,
    @Body() Map<String, dynamic> body,
  );
  @POST(Urls.addProductSize)
  Future<HttpResponse> addProductSize(
    @Header('Authorization') String token,
    @Body() Map<String, dynamic> body,
  );
  @POST(Urls.addProductSideItems)
  Future<HttpResponse> addProductSideItem(
    @Header('Authorization') String token,
    @Body() Map<String, dynamic> body,
  );
  @POST(Urls.addProductExtra)
  Future<HttpResponse> addProductExtra(
    @Header('Authorization') String token,
    @Body() Map<String, dynamic> body,
  );

  @DELETE(Urls.deleteProduct)
  Future<HttpResponse> deleteProduct(
    @Header('Authorization') String token,
    @Body() Map<String, dynamic> body,
  );
  @GET(Urls.getCategoriesFBC)
  Future<HttpResponse> getProductCategories(
    @Header('Authorization') String token,
    @Queries() Map<String, dynamic> queries,
  );
  @GET(Urls.productSearch)
  Future<HttpResponse> productSearch(
    @Header('Authorization') String token,
    @Queries() Map<String, dynamic> queries,
  );
  @GET(Urls.getCategoriesVendorDetails)
  Future<HttpResponse> getProductVendorCategories(
    @Header('Authorization') String token,
    @Queries() Map<String, dynamic> queries,
  );
  @GET(Urls.getProducts)
  Future<HttpResponse> getProducts(
    @Header('Authorization') String token,
  );
  @GET(Urls.getProductById)
  Future<HttpResponse> getProductById(
    @Header('Authorization') String token,
    @Query('product_uuid') String productId,
    // @Body() Map<String, dynamic> body,
  );
  @GET(Urls.oftenProducts)
  Future<HttpResponse> getOftenProducts(
    @Header('Authorization') String token,
    @Query('product_uuid') String productId,
    // @Body() Map<String, dynamic> body,
  );
  @GET(Urls.getProductByVendorId)
  Future<HttpResponse> getProductByVendorId(
    @Header('Authorization') String token,
    @Queries() Map<String, dynamic> queries,
  );
  @GET(Urls.getProductByVendorIdFilter)
  Future<HttpResponse> getProductByVendorIdFilter(
    @Header('Authorization') String token,
    @Queries() Map<String, dynamic> queries,
  );
}
