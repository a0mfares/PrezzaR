import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:prezza/core/helper/usecase_helper.dart';
import 'package:prezza/core/service/failure_services.dart';
import 'package:prezza/features/order/domain/entities/orderdetails_entity.dart';
import 'package:prezza/features/order/domain/repositories/order_repo.dart';

import '../entities/order_user_entity.dart';
import '../entities/orderitem_entity.dart';

class GetVendorOrdersUsecase
    extends UsecaseHelper<List<OrderVendorItemEntity>> {
  final OrderRepo _repo;

  GetVendorOrdersUsecase(this._repo);

  @override
  Future<Either<FailureServices, List<OrderVendorItemEntity>>> call(
      {Map<String, dynamic> parm = const {}}) {
    return _repo.getOrderByStatus(parm['status']);
  }
}

class GetUserOrdersUsecase extends UsecaseHelper<List<OrderUserItemEntity>> {
  final OrderRepo _repo;

  GetUserOrdersUsecase(this._repo);

  @override
  Future<Either<FailureServices, List<OrderUserItemEntity>>> call(
      {Map<String, dynamic> parm = const {}}) {
    return _repo.getUserOrders(parm['status']);
  }
}

class GetOrderDetailsUsecase extends UsecaseHelper<List<OrderDetailsEntity>> {
  final OrderRepo _repo;

  GetOrderDetailsUsecase(this._repo);

  @override
  Future<Either<FailureServices, List<OrderDetailsEntity>>> call(
      {Map<String, dynamic> parm = const {}}) {
    return _repo.getOrderDetails(parm['order_uuid']);
  }
}

class GetOrderPickupDeliveryUsecase extends UsecaseHelper<dynamic> {
  final OrderRepo _repo;

  GetOrderPickupDeliveryUsecase(this._repo);

  @override
  Future<Either<FailureServices, dynamic>> call(
      {Map<String, dynamic> parm = const {}}) {
    return _repo.getOrderPickUpDelivery(parm['order_uuid']);
  }
}

class AcceptOrderUsecase extends UsecaseHelper<void> {
  final OrderRepo _repo;

  AcceptOrderUsecase(this._repo);

  @override
  Future<Either<FailureServices, void>> call(
      {Map<String, dynamic> parm = const {}}) {
    return _repo.rejectOrder(parm);
  }
}

class RejectOrderUsecase extends UsecaseHelper<void> {
  final OrderRepo _repo;

  RejectOrderUsecase(this._repo);

  @override
  Future<Either<FailureServices, void>> call(
      {Map<String, dynamic> parm = const {}}) {
    return _repo.rejectOrder(parm);
  }
}

class CreateOrderInstaceUsecase extends UsecaseHelper<String> {
  final OrderRepo _repo;

  CreateOrderInstaceUsecase(this._repo);

  @override
  Future<Either<FailureServices, String>> call(
      {Map<String, dynamic> parm = const {}}) {
    return _repo.createOrderInstance(parm);
  }
}

class AddOrderDetailsUsecase extends UsecaseHelper<void> {
  final OrderRepo _repo;

  AddOrderDetailsUsecase(this._repo);

  @override
  Future<Either<FailureServices, void>> call(
      {Map<String, dynamic> parm = const {}}) {
    log(parm.toString());
    return _repo.addOrderDetails(parm);
  }
}

class CancelOrderUsecase extends UsecaseHelper<void> {
  final OrderRepo _repo;

  CancelOrderUsecase(this._repo);

  @override
  Future<Either<FailureServices, void>> call(
      {Map<String, dynamic> parm = const {}}) {
    return _repo.cancelOrder(parm['orderId']);
  }
}

class DoneOrderUsecase extends UsecaseHelper<void> {
  final OrderRepo _repo;

  DoneOrderUsecase(this._repo);

  @override
  Future<Either<FailureServices, void>> call(
      {Map<String, dynamic> parm = const {}}) {
    return _repo.doneOrder(parm);
  }
}
