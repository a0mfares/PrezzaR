part of 'location_bloc.dart';

@freezed
class LocationEvent with _$LocationEvent {
  const factory LocationEvent.getBranches() = _GetBranche;
  const factory LocationEvent.addBranche() = _AddBranche;
  const factory LocationEvent.deleteBranche(String id) = _DeleteBranche;
  const factory LocationEvent.updateBranche() = _UpdateBranche;
  const factory LocationEvent.getAddresses() = _GetAddresses;
  const factory LocationEvent.deleteAddress(String id) = _DeleteAddress;
  const factory LocationEvent.updateAddress() = _UpdateAddress;
  const factory LocationEvent.addAddress() = _AddAddress;

  const factory LocationEvent.auth(bool isDelete) = _Auth;

  const factory LocationEvent.initializeEditMode() = _InitializeEditMode;

  const factory LocationEvent.onPickPlace(LocationResult result) = _OnPickPlace;

  const factory LocationEvent.getInitialLocation() = _GetInitialLocation;

  const factory LocationEvent.getArrivelTime() = _GetArrivelTime;
  
}

