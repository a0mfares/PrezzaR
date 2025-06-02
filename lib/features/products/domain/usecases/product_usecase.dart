import 'package:dartz/dartz.dart';
import 'package:prezza/core/helper/usecase_helper.dart';
import 'package:prezza/core/service/failure_services.dart';
import 'package:prezza/features/products/domain/entities/productdetails_entity.dart';
import 'package:prezza/features/products/domain/entities/productitem_entity.dart';
import 'package:prezza/features/products/domain/entities/productsearch_entity.dart';
import 'package:prezza/features/products/domain/repositories/product_repo.dart';

import '../../../category/domain/entities/category_entity.dart';

class AddProductDetailsUsecase extends UsecaseHelper<void> {
  final ProductRepo _repo;

  AddProductDetailsUsecase(this._repo);

  @override
  Future<Either<FailureServices, void>> call(
      {Map<String, dynamic> parm = const {}}) {
    return _repo.addProductDetails(parm);
  }
}

class CreateProductInstanceUsecase extends UsecaseHelper<String> {
  final ProductRepo _repo;

  CreateProductInstanceUsecase(this._repo);

  @override
  Future<Either<FailureServices, String>> call(
      {Map<String, dynamic> parm = const {}}) {
    return _repo.createProductInstance();
  }
}

class AddProductCategoryUsecase extends UsecaseHelper<void> {
  final ProductRepo _repo;

  AddProductCategoryUsecase(this._repo);

  @override
  Future<Either<FailureServices, void>> call(
      {Map<String, dynamic> parm = const {}}) {
    return _repo.addProductCategory(parm);
  }
}

class AddProductExtrasUsecase extends UsecaseHelper<void> {
  final ProductRepo _repo;

  AddProductExtrasUsecase(this._repo);

  @override
  Future<Either<FailureServices, void>> call(
      {Map<String, dynamic> parm = const {}}) {
    return _repo.addProductExtras(parm);
  }
}

class AddProductSideItemUsecase extends UsecaseHelper<void> {
  final ProductRepo _repo;

  AddProductSideItemUsecase(this._repo);

  @override
  Future<Either<FailureServices, void>> call(
      {Map<String, dynamic> parm = const {}}) {
    return _repo.addProductSideItem(parm);
  }
}

class AddProductSizeUsecase extends UsecaseHelper<void> {
  final ProductRepo _repo;

  AddProductSizeUsecase(this._repo);

  @override
  Future<Either<FailureServices, void>> call(
      {Map<String, dynamic> parm = const {}}) {
    return _repo.addProductSize(parm);
  }
}

class GetVendorProductsUsecase extends UsecaseHelper<List<ProductItemEntity>> {
  final ProductRepo _repo;

  GetVendorProductsUsecase(this._repo);

  @override
  Future<Either<FailureServices, List<ProductItemEntity>>> call(
      {Map<String, dynamic> parm = const {}}) {
    return _repo.getVendorProducts(parm);
  }
}

class GetProductByVendorIdUsecase
    extends UsecaseHelper<List<ProductItemEntity>> {
  final ProductRepo _repo;

  GetProductByVendorIdUsecase(this._repo);

  @override
  Future<Either<FailureServices, List<ProductItemEntity>>> call(
      {Map<String, dynamic> parm = const {}}) {
    return _repo.getProductByVendorId(parm);
  }
}

class GetProductByIdUsecase extends UsecaseHelper<ProductDetailsEntity> {
  final ProductRepo _repo;

  GetProductByIdUsecase(this._repo);

  @override
  Future<Either<FailureServices, ProductDetailsEntity>> call(
      {Map<String, dynamic> parm = const {}}) {
    return _repo.getProductById(parm['uuid']);
  }
}

class GetOftenProductsUsecase extends UsecaseHelper<List<ProductItemEntity>> {
  final ProductRepo _repo;

  GetOftenProductsUsecase(this._repo);

  @override
  Future<Either<FailureServices, List<ProductItemEntity>>> call(
      {Map<String, dynamic> parm = const {}}) {
    return _repo.getOftenProducts(parm);
  }
}

class DeleteProductUsecase extends UsecaseHelper<void> {
  final ProductRepo _repo;

  DeleteProductUsecase(this._repo);

  @override
  Future<Either<FailureServices, void>> call(
      {Map<String, dynamic> parm = const {}}) {
    return _repo.deleteProduct(parm);
  }
}

class GetProductCategories extends UsecaseHelper<List<CategoryEntity>> {
  final ProductRepo _repo;

  GetProductCategories(this._repo);

  @override
  Future<Either<FailureServices, List<CategoryEntity>>> call(
      {Map<String, dynamic> parm = const {}}) {
    return _repo.getProductCategories(parm);
  }
}

class SearchProductUsecase extends UsecaseHelper<List<ProductSearchEntity>> {
  final ProductRepo _repo;

  SearchProductUsecase(this._repo);

  @override
  Future<Either<FailureServices, List<ProductSearchEntity>>> call(
      {Map<String, dynamic> parm = const {}}) {
    return _repo.searchProduct(parm);
  }
}
