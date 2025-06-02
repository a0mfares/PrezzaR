part of 'profile_bloc.dart';

@freezed
class ProfileEvent with _$ProfileEvent {
  const factory ProfileEvent.pickIMage(File logo) = _PickImage;
  const factory ProfileEvent.selectCategory(String cateogry) = _SelectCategory;
  const factory ProfileEvent.selectTime(bool isOpen, Duration duration) =
      _SelecteTime;
  const factory ProfileEvent.selectProviding(String providing) =
      _SelectProviding;
  const factory ProfileEvent.selectOpen24() = _SelectOpen24;
  const factory ProfileEvent.canBook() = _CanBook;
  const factory ProfileEvent.addBusinessDetails() = _AddBusinessDetails;
  const factory ProfileEvent.getUserInfo() = _GetUserInfo;
  const factory ProfileEvent.updateUserInfo() = _UpdateUserInfo;
  const factory ProfileEvent.changeStatus(String type) = _changeStatus;
  const factory ProfileEvent.updatePass() = _UpdatePass;
  const factory ProfileEvent.initBusiness() = _InitBusiness;

  const factory ProfileEvent.getBusinessDetails() = _GetBusinessDetails;
}
