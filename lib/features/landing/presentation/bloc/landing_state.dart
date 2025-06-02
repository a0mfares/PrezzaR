part of 'landing_bloc.dart';

@freezed
class LandingState with _$LandingState {
  const factory LandingState.initial() = _Initial;
  const factory LandingState.loading() = _Loading;
  const factory LandingState.success() = _Success;
  const factory LandingState.failure(String err) = _Failure;
  const factory LandingState.succesUI() = _SuccesUI;
  const factory LandingState.updateUI() = _UpdateUI;
  
}
