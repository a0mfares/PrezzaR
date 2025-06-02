import 'package:dartz/dartz.dart';
import 'package:prezza/core/helper/usecase_helper.dart';
import 'package:prezza/core/service/failure_services.dart';
import 'package:prezza/features/cart/domain/entities/cartdetails_entity.dart';
import 'package:prezza/features/cart/domain/repositories/cart_repo.dart';

import '../entities/productoftencart_entity.dart';
import '../entities/usercart_entity.dart';

class GetCartUsecase extends UsecaseHelper<List<UserCartEntity>> {
  final CartRepo _repo;

  GetCartUsecase(this._repo);

  @override
  Future<Either<FailureServices, List<UserCartEntity>>> call(
      {Map<String, dynamic> parm = const {}}) {
    return _repo.getUserCart();
  }
}

class GetOftenOrderedWithUsecase
    extends UsecaseHelper<List<ProductOftenCartEntity>> {
  final CartRepo _repo;

  GetOftenOrderedWithUsecase(this._repo);

  @override
  Future<Either<FailureServices, List<ProductOftenCartEntity>>> call(
      {Map<String, dynamic> parm = const {}}) {
    return _repo.getOftenOrderedWith(parm);
  }
}

class GetCartDetailsUsecase extends UsecaseHelper<CartDetailsEntity> {
  final CartRepo _repo;

  GetCartDetailsUsecase(this._repo);

  @override
  Future<Either<FailureServices, CartDetailsEntity>> call(
      {Map<String, dynamic> parm = const {}}) {
    return _repo.getCartDetails(parm);
  }
}

class ClearCartUsecase extends UsecaseHelper<void> {
  final CartRepo _repo;

  ClearCartUsecase(this._repo);

  @override
  Future<Either<FailureServices, void>> call(
      {Map<String, dynamic> parm = const {}}) {
    return _repo.clearCart(parm);
  }
}

class GetCartPreparingTimeUsecase extends UsecaseHelper<num> {
  final CartRepo _repo;

  GetCartPreparingTimeUsecase(this._repo);

  @override
  Future<Either<FailureServices, num>> call(
      {Map<String, dynamic> parm = const {}}) {
    return _repo.getCartPreparingTime(parm);
  }
}

class AddItemToCartUsecase extends UsecaseHelper<void> {
  final CartRepo _repo;

  AddItemToCartUsecase(this._repo);

  @override
  Future<Either<FailureServices, void>> call(
      {Map<String, dynamic> parm = const {}}) {
    return _repo.addItemToCart(parm);
  }
}

class UpdateItemQunUsecase extends UsecaseHelper<void> {
  final CartRepo _repo;

  UpdateItemQunUsecase(this._repo);

  @override
  Future<Either<FailureServices, void>> call(
      {Map<String, dynamic> parm = const {}}) {
    return _repo.updateItemQun(parm);
  }
}

class RemoveItemFromCartUsecase extends UsecaseHelper<void> {
  final CartRepo _repo;

  RemoveItemFromCartUsecase(this._repo);

  @override
  Future<Either<FailureServices, void>> call(
      {Map<String, dynamic> parm = const {}}) {
    return _repo.removeItemFromCart(parm);
  }
}

class AddOrUpdateCouponUsecase extends UsecaseHelper<void> {
  final CartRepo _repo;

  AddOrUpdateCouponUsecase(this._repo);

  @override
  Future<Either<FailureServices, void>> call(
      {Map<String, dynamic> parm = const {}}) {
    return _repo.addOrUpdateCoupon(parm);
  }
}
