part of 'fav_bloc.dart';

@freezed
class FavState with _$FavState {
  const factory FavState.initial() = _Initial;
  const factory FavState.loading() = _Loading;
  const factory FavState.success() = _Success;
  const factory FavState.vendorLoading(String vendorId) = _VendorLoading;
  const factory FavState.successAdded(String vendorId) = _SuccessAdded;
  const factory FavState.successDeleted(String vendorId) = _SuccessDeleted;
  const factory FavState.failure(String err) = _Failure;
}
