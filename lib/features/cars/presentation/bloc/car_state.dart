part of 'car_bloc.dart';

@freezed
class CarState with _$CarState {
  const factory CarState.initial() = _Initial;
  const factory CarState.loading() = _Loading;
  const factory CarState.success() = _Success;
  const factory CarState.successAdded() = _SuccessAdded;
  const factory CarState.successDelete() = _SuccessDelete;
  const factory CarState.successUpdated() = _SuccessUpdated;
  
  const factory CarState.updateUi() = _UpdateUi;
  const factory CarState.successUI() = _SuccessUI;
  
  const factory CarState.failure(String err) = _Failure;
  
}
