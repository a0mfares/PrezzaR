part of 'notify_bloc.dart';

@freezed
class NotifyState with _$NotifyState {
  const factory NotifyState.initial() = _Initial;
  const factory NotifyState.loading() = _Loading;
  const factory NotifyState.success() = _Success;
  const factory NotifyState.failure(String err) = _Failure;
}
