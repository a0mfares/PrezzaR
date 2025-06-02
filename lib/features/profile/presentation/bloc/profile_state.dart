part of 'profile_bloc.dart';

@freezed
class ProfileState with _$ProfileState {
  const factory ProfileState.initial() = _Initial;
  const factory ProfileState.success() = _Success;
  const factory ProfileState.successUi() = _SuccessUi;
  const factory ProfileState.successUpdated() = _SuccessUpdated;

  const factory ProfileState.loading() = _Loading;
  const factory ProfileState.loadingFName() = _LoadingFName;
  const factory ProfileState.loadingLName() = _LoadingLName;
  const factory ProfileState.loadingUserName() = _LoadingUserName;

  const factory ProfileState.updateUi() = _UpdateUi;
  const factory ProfileState.failure(String err) = _Failure;
  // const factory ProfileState.initial() = _Initial;
  // const factory ProfileState.initial() = _Initial;
}
