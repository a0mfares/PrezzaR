import 'package:dartz/dartz.dart';
import 'package:prezza/core/helper/network.dart';
import 'package:prezza/core/helper/tools.dart';
import 'package:prezza/core/service/failure_services.dart';
import 'package:prezza/features/notification/data/datasources/notify_service.dart';
import 'package:prezza/features/notification/data/models/notify_model.dart';

import '../../domain/entities/notify_entity.dart';
import '../../domain/repositories/notify_repo.dart';

class NotifyRepoImpl extends NotifyRepo {
  final NotifyService _service;

  NotifyRepoImpl(this._service);

  @override
  Future<Either<FailureServices, List<NotifyEntity>>> getAllNotification(
      String type, int numOfNotify) {
    return execute(() async {
      final result = await _service.getNotifications(bearerToken, type, numOfNotify);
      return List<NotifyEntity>.from((result.data['data'] as List)
          .map((e) => NotifyEntity.fromModel(NotifyModel.fromMap(e))));
    });
  }

  @override
  Future<Either<FailureServices, void>> markAllkNotification() {
    return execute(() => _service.markAllNotification(bearerToken));
  }

  @override
  Future<Either<FailureServices, void>> markNotification(
      Map<String, dynamic> data) {
    return execute(() => _service.markNotificationRead(bearerToken, data));
  }
}
