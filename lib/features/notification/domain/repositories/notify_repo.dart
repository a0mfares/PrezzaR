import 'package:dartz/dartz.dart';
import 'package:prezza/core/service/failure_services.dart';
import 'package:prezza/features/notification/domain/entities/notify_entity.dart';

abstract class NotifyRepo {
  Future<Either<FailureServices, void>> markNotification(
      Map<String, dynamic> data);
  Future<Either<FailureServices, void>> markAllkNotification();
  Future<Either<FailureServices, List<NotifyEntity>>> getAllNotification(
      String type, int numOfNotify);
}
