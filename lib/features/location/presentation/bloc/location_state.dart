part of 'location_bloc.dart';

@freezed
class LocationState with _$LocationState {
  const factory LocationState.initial() = _Initial;
  const factory LocationState.loading() = _Loading;
  const factory LocationState.success() = _Success;
  const factory LocationState.successPicked() = _SuccessPicked;
  const factory LocationState.successAdded() = _SuccessAdded;
  const factory LocationState.successUpdated() = _SuccessUpdated;
  const factory LocationState.successDelete() = _SuccessDelete;

  const factory LocationState.updatePicked() = _UpdatePicked;
  const factory LocationState.successAuth(bool isDelete) = _SuccessAuth;

  const factory LocationState.failure(String err) = _Failure;
}
