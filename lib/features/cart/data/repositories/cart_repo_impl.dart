import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:prezza/core/helper/network.dart';
import 'package:prezza/core/helper/tools.dart';
import 'package:prezza/core/service/failure_services.dart';
import 'package:prezza/features/cart/data/datasources/cart_service.dart';
import 'package:prezza/features/cart/data/models/cartdetails_model.dart';
import 'package:prezza/features/cart/data/models/productoftencart_model.dart';
import 'package:prezza/features/cart/data/models/usercart_model.dart';
import 'package:prezza/features/cart/domain/entities/cartdetails_entity.dart';
import 'package:prezza/features/cart/domain/repositories/cart_repo.dart';

import '../../domain/entities/productoftencart_entity.dart';
import '../../domain/entities/usercart_entity.dart';

class CartRepoImpl implements CartRepo {
  final CartService _service;

  CartRepoImpl(this._service);

  @override
  Future<Either<FailureServices, void>> addItemToCart(
      Map<String, dynamic> body) {
    return execute(
        () => _service.addItemToCart(bearerToken, FormData.fromMap(body)));
  }

  @override
  Future<Either<FailureServices, void>> addOrUpdateCoupon(
      Map<String, dynamic> body) {
    return execute(() => _service.addOrUpdateCoupon(bearerToken, body));
  }

  @override
  Future<Either<FailureServices, void>> clearCart(Map<String, dynamic> body) {
    return execute(() => _service.clearCart(bearerToken, body));
  }

  @override
  Future<Either<FailureServices, CartDetailsEntity>> getCartDetails(
      Map<String, dynamic> queries) {
    return execute(() async {
      final result = await _service.getCartDetails(bearerToken, queries);

      return CartDetailsEntity.fromModel(
          CartDetailsModel.fromJson(result.data['data']));
    });
  }

  @override
  Future<Either<FailureServices, num>> getCartPreparingTime(
      Map<String, dynamic> queries) {
    return execute(() async =>
        (await _service.getCartPreparingTime(bearerToken, queries))
            .data['data']);
  }

  @override
  Future<Either<FailureServices, List<UserCartEntity>>> getUserCart() {
    return execute(() async {
      final result = await _service.getUserCart(bearerToken);

      return List<UserCartEntity>.from((result.data['data']
          .map((e) => UserCartEntity.fromModel(UserCartModel.fromJson(e)))));
    });
  }

  @override
  Future<Either<FailureServices, void>> removeItemFromCart(
      Map<String, dynamic> body) {
    return execute(() => _service.removeItemFromCart(bearerToken, body));
  }

  @override
  Future<Either<FailureServices, void>> updateItemQun(
      Map<String, dynamic> body) {
    return execute(() => _service.updateItemQun(bearerToken, body));
  }

  @override
  Future<Either<FailureServices, List<ProductOftenCartEntity>>>
      getOftenOrderedWith(Map<String, dynamic> queries) {
    return execute(() async {
      final result = await _service.getOftenOrderedWith(bearerToken, queries);

      return List<ProductOftenCartEntity>.from((result.data['data'].map((e) =>
              ProductOftenCartEntity.fromModel(
                  ProductOftenCartModel.fromJson(e)))))
          .where((e) => e.smallest_size_id != null)
          .toList();
    });

  }
  @override
  Future<Either<FailureServices, void>> closeCart(String uuid) {
    return execute(() => _service.closeCart(bearerToken, {"uuid": uuid}));
  } 
}
