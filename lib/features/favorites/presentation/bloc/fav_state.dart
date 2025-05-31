part of 'fav_bloc.dart';

@freezed
class FavState with _$FavState {
  const factory FavState.initial() = _Initial;
  const factory FavState.loading() = _Loading;
  const factory FavState.success() = _Success;
  const factory FavState.successAdded() = _SuccessAdded;
  const factory FavState.successDeleted() = _SuccessDeleted;
  const factory FavState.failure(String err) = _Failure;
}
