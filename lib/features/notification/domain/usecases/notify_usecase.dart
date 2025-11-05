import 'package:dartz/dartz.dart';
import 'package:prezza/core/helper/usecase_helper.dart';
import 'package:prezza/core/service/failure_services.dart';
import 'package:prezza/features/notification/domain/repositories/notify_repo.dart';

import '../entities/notify_entity.dart';

class GetAllNotifyUsecase extends UsecaseHelper<List<NotifyEntity>> {
  final NotifyRepo _repo;

  GetAllNotifyUsecase(this._repo);

  @override
  Future<Either<FailureServices, List<NotifyEntity>>> call(
      {Map<String, dynamic> parm = const {}}) {
    return _repo.getAllNotification(parm['type'], parm['numOfNotify']);
  }
}

class MarkAllNotificationUsecase extends UsecaseHelper<void> {
  final NotifyRepo _repo;

  MarkAllNotificationUsecase(this._repo);

  @override
  Future<Either<FailureServices, void>> call(
      {Map<String, dynamic> parm = const {}}) {
    return _repo.markAllkNotification();
  }
}

class MarkNotificationUsecase extends UsecaseHelper<void> {
  final NotifyRepo _repo;

  MarkNotificationUsecase(this._repo);

  @override
  Future<Either<FailureServices, void>> call(
      {Map<String, dynamic> parm = const {}}) {
    return _repo.markNotification(parm);
  }
}
