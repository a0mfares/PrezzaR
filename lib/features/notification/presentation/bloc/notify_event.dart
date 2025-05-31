part of 'notify_bloc.dart';

@freezed
class NotifyEvent with _$NotifyEvent {
  const factory NotifyEvent.getAllNotifications(String type) =
      _GetAllNotifications;
  const factory NotifyEvent.markNotifyRead(String notifyId) = _MarkNotifyRead;
  const factory NotifyEvent.markAllNotify() = _MarkAllNotify;
}
