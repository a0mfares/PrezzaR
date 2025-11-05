part of 'fav_bloc.dart';

@freezed
class FavEvent with _$FavEvent {
  const factory FavEvent.addFavVendor(String id) = _AddFavVendor;
  const factory FavEvent.deleteFavVendor(String id) = _DeleteFavVendor;
  const factory FavEvent.getFavVendors() = _GetFavVendors;
}
