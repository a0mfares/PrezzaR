part of 'search_bloc.dart';

@freezed
class SearchEvent with _$SearchEvent {
  const factory SearchEvent.searchUsingBusName() = _SearchUsingBusName;
  const factory SearchEvent.deleteRecentSearch(VendorSearchEntity key) =
      _DeleteRecentSearch;
}
