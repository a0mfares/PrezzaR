part of 'vendor_bloc.dart';

@freezed
class VendorEvent with _$VendorEvent {
  const factory VendorEvent.getOrdersStatus() = _GetOrderStatus;
  const factory VendorEvent.getReviewAnalysis() = _GetReviewAnalysis;
  const factory VendorEvent.getVendorBalnace() = _GetVendorBalance;
  const factory VendorEvent.getMostOrdered() = _getMostOrdered;
  const factory VendorEvent.getNearbyPlaces(String type) = _GetNearbyPlaces;
  const factory VendorEvent.getVendorByFilter(String id, String type) =
      _GetVendorByFilter;

  const factory VendorEvent.selectedLocation(LocationResult loc) =
      _SelectedLocation;

  const factory VendorEvent.getBranches(String id) = _GetBranches;

  const factory VendorEvent.selecteSort(String sortBy, type) = _SelecteSort;

  const factory VendorEvent.getVendorByCategory(String id, String type) =
      _GetVendorByCategory;
  const factory VendorEvent.getVendorDetails(String vendorId) =
      _GetVendorDetails;

  const factory VendorEvent.selectOperatingHour(String operating, String type) =
      _SelectOperatingHour;
  const factory VendorEvent.selectDistance(String distance, String type) =
      _SelectDistance;

  const factory VendorEvent.getVendorDetailsBooking(String vendorId) =
      _GetVendorDetailsBooking;
}
