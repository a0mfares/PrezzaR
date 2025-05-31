import 'package:dartz/dartz.dart';
import 'package:prezza/core/service/failure_services.dart';
import 'package:prezza/features/category/domain/entities/category_entity.dart';

import '../entities/productdetails_entity.dart';
import '../entities/productitem_entity.dart';
import '../entities/productsearch_entity.dart';

abstract class ProductRepo {
  Future<Either<FailureServices, String>> createProductInstance();
  Future<Either<FailureServices, void>> addProductDetails(
      Map<String, dynamic> body);
  Future<Either<FailureServices, void>> addProductSize(
      Map<String, dynamic> body);
  Future<Either<FailureServices, void>> addProductSideItem(
      Map<String, dynamic> body);
  Future<Either<FailureServices, void>> addProductExtras(
      Map<String, dynamic> body);
  Future<Either<FailureServices, void>> addProductCategory(
      Map<String, dynamic> body);
  Future<Either<FailureServices, void>> deleteProduct(
      Map<String, dynamic> body);
  Future<Either<FailureServices, List<ProductItemEntity>>> getVendorProducts(
      Map<String, dynamic> body);
  Future<Either<FailureServices, List<ProductSearchEntity>>> searchProduct(
      Map<String, dynamic> queries);
  Future<Either<FailureServices, ProductDetailsEntity>> getProductById(
      String uuid);
  Future<Either<FailureServices, List<CategoryEntity>>> getProductCategories(
      Map<String, dynamic> queries);
  Future<Either<FailureServices, List<ProductItemEntity>>> getOftenProducts(
      Map<String, dynamic> query);
  Future<Either<FailureServices, List<ProductItemEntity>>> getProductByVendorId(
      Map<String, dynamic> query);
}
