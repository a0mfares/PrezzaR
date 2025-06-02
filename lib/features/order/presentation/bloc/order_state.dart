part of 'order_bloc.dart';

@freezed
class OrderState with _$OrderState {
  const factory OrderState.initial() = _Initial;
  const factory OrderState.loading() = _Loading;
  const factory OrderState.success() = _Success;
  const factory OrderState.failure(String id) = _Failure;
  const factory OrderState.openPhoneInput() = _OpenPhoneInput;
  const factory OrderState.successOrdered() = _SuccessOrdered;
  const factory OrderState.successOrderDetails() = _SuccessOrderDetails;

  const factory OrderState.updateUi() = _UpdateUi;
  const factory OrderState.successUi() = _SuccessUi;
}
