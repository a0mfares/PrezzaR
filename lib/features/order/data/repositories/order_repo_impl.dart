import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:prezza/core/helper/network.dart';
import 'package:prezza/core/helper/tools.dart';
import 'package:prezza/core/service/failure_services.dart';
import 'package:prezza/features/order/data/datasources/order_service.dart';
import 'package:prezza/features/order/data/models/orderbooking_model.dart';
import 'package:prezza/features/order/data/models/orderdelivery_model.dart';
import 'package:prezza/features/order/data/models/orderdetails_model.dart';
import 'package:prezza/features/order/data/models/orderitem_model.dart';
import 'package:prezza/features/order/data/models/orderpickup_model.dart';
import 'package:prezza/features/order/domain/entities/orderbooking_entity.dart';
import 'package:prezza/features/order/domain/entities/orderdelivery_entity.dart';
import 'package:prezza/features/order/domain/entities/orderdetails_entity.dart';
import 'package:prezza/features/order/domain/entities/orderitem_entity.dart';
import 'package:prezza/features/order/domain/entities/orderpickup_entity.dart';
import 'package:prezza/features/order/domain/repositories/order_repo.dart';

import '../../domain/entities/order_user_entity.dart';
import '../models/order_user_model.dart';

class OrderRepoImpl extends OrderRepo {
  final OrderService _service;

  OrderRepoImpl(this._service);

  @override
  Future<Either<FailureServices, List<OrderVendorItemEntity>>> getOrderByStatus(
      String status) {
    return execute(() async {
      final result = await _service.getOrdersByStatus(bearerToken, status);
      return List<OrderVendorItemEntity>.from(result.response.data['data'].map(
          (e) => OrderVendorItemEntity.fromModel(
              OrderVendorItemModel.fromMap(e))));
    });
  }

  @override
  Future<Either<FailureServices, List<OrderDetailsEntity>>> getOrderDetails(
      String orderId) {
    return execute(() async {
      final result = await _service.getOrderDetails(bearerToken, orderId);

      return List<OrderDetailsEntity>.from(
          (result.response.data['data'] as List).map((e) =>
              OrderDetailsEntity.fromModel(OrderDetailsModel.fromMap(e))));
    });
  }

  @override
  Future<Either<FailureServices, dynamic>> getOrderPickUpDelivery(
      String orderId) {
    return execute(() async {
      final result =
          await _service.getOrderPickupDelivery(bearerToken, orderId);
      if ((result.response.data['data'] as Map)
          .containsKey('delivery_address')) {
        return OrderDeliveryEntity.fromModel(
            OrderDeliveryModel.fromMap(result.response.data['data']));
      } else if ((result.response.data['data'] as Map)
          .containsKey('branch_info')) {
        return OrderBookingEntity.fromModel(
            OrderBookingModel.fromMap(result.response.data['data']));
      } else {
        return OrderPickupEntity.fromModel(
            OrderPickupModel.fromMap(result.response.data['data']));
      }
    });
  }

  @override
  Future<Either<FailureServices, void>> acceptOrder(Map<String, dynamic> body) {
    return execute(() => _service.acceptOrder(bearerToken, body));
  }

  @override
  Future<Either<FailureServices, void>> cancelOrder(String orderId) {
    return execute(() => _service.cancelOrder(bearerToken, {
          'uuid': orderId,
        }));
  }

  @override
  Future<Either<FailureServices, void>> doneOrder(Map<String, dynamic> body) {
    return execute(() => _service.doneOrder(bearerToken, body));
  }

  @override
  Future<Either<FailureServices, void>> rejectOrder(Map<String, dynamic> body) {
    return execute(() => _service.rejectOrder(bearerToken, body));
  }

  @override
  Future<Either<FailureServices, void>> addOrderDetails(
      Map<String, dynamic> body) {
    log(body.toString());
    return execute(() => _service.addOrderDetails(bearerToken, body));
  }

  @override
  Future<Either<FailureServices, String>> createOrderInstance(
      Map<String, dynamic> body) {
    return execute(() async =>
        (await _service.createOrder(bearerToken, body)).data['data']);
  }

  @override
  Future<Either<FailureServices, List<OrderUserItemEntity>>> getUserOrders(
      String status) {
    return execute(() async {
      final result = await _service.getUserOrders(bearerToken, status);
      return List<OrderUserItemEntity>.from(result.response.data['data'].map(
          (e) => OrderUserItemEntity.fromModel(OrderUserItemModel.fromMap(e))));
    });
  }
}
