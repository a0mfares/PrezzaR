import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:prezza/features/notification/domain/entities/notify_entity.dart';
import 'package:prezza/features/notification/domain/usecases/notify_usecase.dart';

part 'notify_event.dart';
part 'notify_state.dart';
part 'notify_bloc.freezed.dart';

class NotifyBloc extends Bloc<NotifyEvent, NotifyState> {
  static NotifyBloc get(context) => BlocProvider.of(context);
  final GetAllNotifyUsecase _getAllNotifyUsecase;
  final MarkAllNotificationUsecase _markAllNotificationUsecase;
  final MarkNotificationUsecase _markNotificationUsecase;

  List<NotifyEntity> notifications = [];
  int numOfNotify = 10;
  NotifyBloc(this._getAllNotifyUsecase, this._markAllNotificationUsecase,
      this._markNotificationUsecase)
      : super(const _Initial()) {
    on<NotifyEvent>((event, emit) async {
      await event.maybeWhen(
        getAllNotifications: (type) async {
          emit(const NotifyState.loading());
          final result = await _getAllNotifyUsecase(parm: {
            'type': type,
            'numOfNotify': numOfNotify,
          });

          result.fold(
            (er) {
              emit(NotifyState.failure(er.getMsg));
            },
            (res) {
              notifications = res;
              emit(const NotifyState.success());
            },
          );
        },
        markAllNotify: () async {
          emit(const NotifyState.loading());
          final result = await _markAllNotificationUsecase();

          result.fold(
            (er) {
              emit(NotifyState.failure(er.getMsg));
            },
            (res) {
              emit(const NotifyState.success());
            },
          );
        },
        markNotifyRead: (id) async {
          emit(const NotifyState.loading());
          final result =
              await _markNotificationUsecase(parm: {'notification_id': id});

          result.fold(
            (er) {
              emit(NotifyState.failure(er.getMsg));
            },
            (res) {
              emit(const NotifyState.success());
            },
          );
        },
        orElse: () {},
      );
    });
  }
}
