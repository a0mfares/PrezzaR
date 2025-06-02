import 'package:dartz/dartz.dart';
import 'package:prezza/core/service/failure_services.dart';
import 'package:prezza/features/cart/domain/entities/cartdetails_entity.dart';
import 'package:prezza/features/cart/domain/entities/usercart_entity.dart';

import '../entities/productoftencart_entity.dart';

abstract class CartRepo {
  Future<Either<FailureServices, List<UserCartEntity>>> getUserCart();
  Future<Either<FailureServices, CartDetailsEntity>> getCartDetails(
      Map<String, dynamic> queries);
  Future<Either<FailureServices, void>> clearCart(Map<String, dynamic> body);
  Future<Either<FailureServices, num>> getCartPreparingTime(
      Map<String, dynamic> queries);
  Future<Either<FailureServices, void>> addItemToCart(
      Map<String, dynamic> queries);
  Future<Either<FailureServices, List<ProductOftenCartEntity>>> getOftenOrderedWith(
      Map<String, dynamic> queries);
  Future<Either<FailureServices, void>> updateItemQun(
      Map<String, dynamic> body);
  Future<Either<FailureServices, void>> removeItemFromCart(
      Map<String, dynamic> body);
  Future<Either<FailureServices, void>> addOrUpdateCoupon(
      Map<String, dynamic> body);
}
