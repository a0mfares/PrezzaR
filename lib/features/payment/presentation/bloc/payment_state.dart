part of 'payment_bloc.dart';

@freezed
class PaymentState with _$PaymentState {
  const factory PaymentState.initial() = _Initial;
  const factory PaymentState.loading() = _Loading;
  const factory PaymentState.success() = _Success;
  const factory PaymentState.successAdded() = _SuccessAdded;
  const factory PaymentState.successUpdate() = _SuccessUpdate;
  const factory PaymentState.successDeleted() = _SuccessDeleted;

  const factory PaymentState.failure(String err) = _Failure;
}
