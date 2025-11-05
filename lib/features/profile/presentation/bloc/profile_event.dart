part of 'profile_bloc.dart';

@freezed
class ProfileEvent with _$ProfileEvent {
  const factory ProfileEvent.initBusiness() = _InitBusiness;
  const factory ProfileEvent.changeStatus(String type) = _ChangeStatus;
  const factory ProfileEvent.updatePass() = _UpdatePass;
  const factory ProfileEvent.getUserInfo() = _GetUserInfo;
  const factory ProfileEvent.updateBusinessDetails() = _UpdateBusinessDetails;
  const factory ProfileEvent.updateUserInfo() = _UpdateUserInfo;
  const factory ProfileEvent.getBusinessDetails() = _GetBusinessDetails;
  const factory ProfileEvent.selectTime(bool isOpen, Duration duration) = _SelectTime;
  const factory ProfileEvent.pickIMage(File logo) = _PickImage;
  const factory ProfileEvent.selectCategory(String category) = _SelectCategory;
  const factory ProfileEvent.canBook() = _CanBook;
  const factory ProfileEvent.selectProviding(String providing) = _SelectProviding;
  const factory ProfileEvent.selectOpen24() = _SelectOpen24;
  const factory ProfileEvent.addBusinessDetails() = _AddBusinessDetails;
  const factory ProfileEvent.resetState() = _ResetState;
}