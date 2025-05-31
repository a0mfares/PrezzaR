part of 'category_bloc.dart';

@freezed
class CategoryEvent with _$CategoryEvent {
  const factory CategoryEvent.getCategories([bool? isBooking]) = _GetCategories;
  const factory CategoryEvent.getSponsors() = _GetSponsors;
}
