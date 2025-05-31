import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:prezza/core/helper/network.dart';
import 'package:prezza/core/helper/tools.dart';
import 'package:prezza/core/service/failure_services.dart';
import 'package:prezza/features/category/data/models/category_model.dart';
import 'package:prezza/features/category/domain/entities/category_entity.dart';
import 'package:prezza/features/products/data/datasources/product_service.dart';
import 'package:prezza/features/products/data/models/productdetails_model.dart';
import 'package:prezza/features/products/data/models/productitem_model.dart';
import 'package:prezza/features/products/domain/entities/productdetails_entity.dart';
import 'package:prezza/features/products/domain/entities/productitem_entity.dart';
import 'package:prezza/features/products/domain/repositories/product_repo.dart';
import 'package:retrofit/dio.dart';

import '../../domain/entities/productsearch_entity.dart';
import '../models/productsearch_model.dart';

class ProductRepoImpl extends ProductRepo {
  final ProductService _service;

  ProductRepoImpl(this._service);

  @override
  Future<Either<FailureServices, void>> addProductCategory(
      Map<String, dynamic> body) {
    return execute(() => _service.addProductCategory(bearerToken, body));
  }

  @override
  Future<Either<FailureServices, void>> addProductDetails(
      Map<String, dynamic> body) {
    return execute(
      () => _service.addProductDetails(bearerToken, FormData.fromMap(body)),
    );
  }

  @override
  Future<Either<FailureServices, void>> addProductExtras(
      Map<String, dynamic> body) {
    return execute(() => _service.addProductExtra(bearerToken, body));
  }

  @override
  Future<Either<FailureServices, void>> addProductSideItem(
      Map<String, dynamic> body) {
    return execute(() => _service.addProductSideItem(bearerToken, body));
  }

  @override
  Future<Either<FailureServices, void>> addProductSize(
      Map<String, dynamic> body) {
    return execute(() => _service.addProductSize(bearerToken, body));
  }

  @override
  Future<Either<FailureServices, String>> createProductInstance() {
    return execute(() async =>
        (await _service.createProductInstance(bearerToken)).data['data']
            ['uuid']);
  }

  @override
  Future<Either<FailureServices, void>> deleteProduct(
      Map<String, dynamic> body) {
    return execute(() => _service.deleteProduct(bearerToken, body));
  }

  @override
  Future<Either<FailureServices, ProductDetailsEntity>> getProductById(
      String uuid) async {
    return execute(() async {
      final result = await _service.getProductById(bearerToken, uuid);
      return ProductDetailsEntity.fromModel(
          ProductDetailsModel.fromMap(result.data['data']));
    });
  }

  @override
  Future<Either<FailureServices, List<ProductItemEntity>>> getVendorProducts(
      Map<String, dynamic> body) {
    return execute(() async {
      final result = await _service.getProducts(bearerToken);

      return List<ProductItemEntity>.from(
        result.data['data'].map(
          (e) => ProductItemEntity.fromModel(
            ProductItemModel.fromMap(
              (e),
            ),
          ),
        ),
      );
    });
  }

  @override
  Future<Either<FailureServices, List<CategoryEntity>>> getProductCategories(
      Map<String, dynamic> queries) {
    if (queries['type'] == 'vendor') {
      return execute(() async {
        final result =
            await _service.getProductCategories(bearerToken, queries);
        return List<CategoryEntity>.from(result.data['data']
            .map((e) => CategoryEntity.fromModel(CategoryModel.fromMap(e))));
      });
    }
    return execute(() async {
      final result =
          await _service.getProductVendorCategories(bearerToken, queries);
      return List<CategoryEntity>.from(result.data['data']
          .map((e) => CategoryEntity.fromModel(CategoryModel.fromMap(e))));
    });
  }

  @override
  Future<Either<FailureServices, List<ProductItemEntity>>> getOftenProducts(
      Map<String, dynamic> query) {
    return execute(() async {
      final result = await _service.getOftenProducts(
          bearerToken, business.business_category.name);
      return List<ProductItemEntity>.from(result.data['data'].map(
          (e) => ProductItemEntity.fromModel(ProductItemModel.fromMap(e))));
    });
  }

  @override
  Future<Either<FailureServices, List<ProductItemEntity>>> getProductByVendorId(
      Map<String, dynamic> query) {
    return execute(() async {
      HttpResponse result;
      if (query['category_id'] != null) {
        result = await _service.getProductByVendorIdFilter(bearerToken, query);
      } else {
        result = await _service.getProductByVendorId(bearerToken, query);
      }
      return List<ProductItemEntity>.from(result.data['data'].map(
          (e) => ProductItemEntity.fromModel(ProductItemModel.fromMap(e))));
    });
  }

  @override
  Future<Either<FailureServices, List<ProductSearchEntity>>> searchProduct(
      Map<String, dynamic> queries) {
    return execute(() async {
      final result = await _service.productSearch(bearerToken, queries);
      return List<ProductSearchEntity>.from(result.data['data'].map((e) =>
          ProductSearchEntity.fromModel(ProductSearchModel.fromJson(e))));
    });
  }
}
