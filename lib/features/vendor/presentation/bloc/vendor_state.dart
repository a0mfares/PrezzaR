part of 'vendor_bloc.dart';

@freezed
class VendorState with _$VendorState {
  const factory VendorState.initial() = _Initial;
  const factory VendorState.success() = _Success;
  const factory VendorState.loading() = _Loading;
  const factory VendorState.updateUi() = _UpdateUi;
  
  const factory VendorState.failure(String err) = _Failure;
}
