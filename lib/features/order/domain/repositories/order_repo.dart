import 'package:dartz/dartz.dart';
import 'package:prezza/core/service/failure_services.dart';
import 'package:prezza/features/order/domain/entities/order_tracking_details_entity.dart';
import 'package:prezza/features/order/domain/entities/orderdetails_entity.dart';
import 'package:prezza/features/order/domain/entities/orderitem_entity.dart';

import '../entities/order_user_entity.dart';

abstract class OrderRepo {
  Future<Either<FailureServices, dynamic>> getOrderPickUpDelivery(
    String orderId,
  );
  Future<Either<FailureServices, List<OrderVendorItemEntity>>> getOrderByStatus(
    String status,
  );
  Future<Either<FailureServices, List<OrderUserItemEntity>>> getUserOrders(
    String status,
  );
  Future<Either<FailureServices, List<OrderDetailsEntity>>> getOrderDetails(
    String orderId,
  );
  Future<Either<FailureServices, OrderTrackingDetailsEntity>> trackOrder(Map<String, dynamic> body);
  Future<Either<FailureServices, void>> acceptOrder(Map<String, dynamic> body);
  Future<Either<FailureServices, void>> rejectOrder(Map<String, dynamic> body);
  Future<Either<FailureServices, void>> doneOrder(Map<String, dynamic> body);
  Future<Either<FailureServices, void>> cancelOrder(String orderId);
  Future<Either<FailureServices, String>> createOrderInstance(
      Map<String, dynamic> body);
  Future<Either<FailureServices, void>> addOrderDetails(
      Map<String, dynamic> body);
}
