import 'dart:async';
import 'dart:developer';
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:prezza/core/helper/tools.dart';
import 'package:prezza/core/service/hive_storage.dart';
import 'package:prezza/features/auth/domain/entities/user_entity.dart';
import 'package:prezza/features/profile/domain/entities/businessdetails_entity.dart';
import 'package:prezza/features/profile/domain/usecases/profile_usecase.dart';

part 'profile_event.dart';
part 'profile_state.dart';
part 'profile_bloc.freezed.dart';

class ProfileBloc extends Bloc<ProfileEvent, ProfileState> {
  String selectedProviding = '';
  String selectedCategory = '';
  File? brandLogo;
  String brandLogoUrl = '';
  Duration openTime = const Duration();
  Duration closeTime = const Duration();
  bool isOpen24 = false;
  bool canBook = false;
  bool fName = true;
  bool lName = true;
  bool username = true;
  bool editPhone = false;
  bool editEmail = false;
  bool get isChecked => isOpen24;
  final GlobalKey<FormState> businessForm = GlobalKey();
  final GlobalKey<FormState> personalInfoForm = GlobalKey();
  final GlobalKey<FormState> changePassForm = GlobalKey();
  final TextEditingController brandName = TextEditingController();
  final TextEditingController branche = TextEditingController();
  final TextEditingController yourRole = TextEditingController();
  final TextEditingController oldPass = TextEditingController();
  final TextEditingController pass = TextEditingController();
  final TextEditingController passConfirm = TextEditingController();
  final TextEditingController descripBrand = TextEditingController();
  final TextEditingController password = TextEditingController();
  final TextEditingController firstName =
      TextEditingController(text: usr.user.first_name);
  final TextEditingController lastName =
      TextEditingController(text: usr.user.last_name);
  final TextEditingController userName =
      TextEditingController(text: usr.user.username);
  final AddBusinessDetailsUsecase _addBusinessDetailsUsecase;
  final GetBusinessDetailUsecase _getBusinessDetailUsecase;
  final UpdateUserInfoUsecase _updateUserInfoUsecase;
  final UpdatePassUsecase _updatePassUsecase;
  final GetUserProfileUsecase _getUserProfileUsecase;
  final UpdateBusinessDetailsUsecase _updateBusinessDetailsUsecase;
  final passwordRegex = RegExp(
      r'^(?=.*[A-Z])(?=.*[a-z])(?=.*\d)(?=.*[@\$!%*?&])[A-Za-z\d@\$!%*?&]{8,}\$');
  File userImg = File('');

  BusinessDetailsEntity businessDetails = BusinessDetailsEntity.empty();
  static ProfileBloc get(context) => BlocProvider.of(context);

  ProfileBloc(
    this._addBusinessDetailsUsecase,
    this._getBusinessDetailUsecase,
    this._updateUserInfoUsecase,
    this._getUserProfileUsecase,
    this._updatePassUsecase,
    this._updateBusinessDetailsUsecase,
  ) : super(const _Initial()) {
    on<ProfileEvent>((event, emit) async {
      await event.maybeWhen(
        initBusiness: () {
          emit(const ProfileState.updateUi());
          brandName.text = business.business_name;
          brandLogoUrl = business.business_logo;
          brandLogo = null;
          yourRole.text = business.vendor_role;
          branche.text = business.branches.toString();
          selectedCategory = business.business_category.name;
          canBook = business.has_booking;
          descripBrand.text = business.description;
          selectedProviding = business.service;
          try {
            final partsOpen = business.operating_hours_from.split(":");
            final partsClose = business.operating_hours_to.split(":");

            if (partsOpen.length == 2 && partsClose.length == 2) {
              openTime = Duration(
                hours: int.tryParse(partsOpen[0]) ?? 0,
                minutes: int.tryParse(partsOpen[1]) ?? 0,
              );
              closeTime = Duration(
                hours: int.tryParse(partsClose[0]) ?? 0,
                minutes: int.tryParse(partsClose[1]) ?? 0,
              );
            } else {
              log('Invalid time format from backend.');
            }
          } catch (e) {
            log('Error parsing time: $e');
          }

          emit(const ProfileState.successUi());
        },
        changeStatus: (type) {
          emit(const ProfileState.updateUi());
          switch (type) {
            case 'fname':
              fName = !fName;
              break;
            case 'lname':
              lName = !lName;
              break;
            case 'username':
              username = !username;
              break;
          }
          emit(const ProfileState.successUi());
        },
        updatePass: () async {
          emit(const ProfileState.loading());
          try {
            final result = await _updatePassUsecase(parm: {
              'old_password': oldPass.text,
              'new_password': pass.text,
              'confirm_password': passConfirm.text,
            });
            result.fold(
              (err) => emit(ProfileState.failure(err.getMsg)),
              (res) => emit(const ProfileState.successUpdated()),
            );
          } catch (e) {
            emit(ProfileState.failure(e.toString()));
          }
        },
        getUserInfo: () async {
          emit(const ProfileState.loading());
          try {
            final result = await _getUserProfileUsecase();
            result.fold(
              (err) => emit(ProfileState.failure(err.getMsg)),
              (res) => emit(const ProfileState.success()),
            );
          } catch (e) {
            emit(ProfileState.failure(e.toString()));
          }
        },
        updateBusinessDetails: () async => _updateBusinessDetailsEvent(emit),
        updateUserInfo: () async {
          if (!personalInfoForm.currentState!.validate()) {
            emit(ProfileState.failure(tr.enterValideData));
            return;
          }

          // Track which field is being updated
          bool isUpdatingFName = !fName;
          bool isUpdatingLName = !lName;
          bool isUpdatingUsername = !username;

          emit(!fName
              ? const ProfileState.loadingFName()
              : !lName
                  ? const ProfileState.loadingLName()
                  : !username
                      ? const ProfileState.loadingUserName()
                      : const ProfileState.loading());
          try {
            dynamic userI = usr.user.profile_picture;
            if (userImg.path.isNotEmpty) {
              userI = await MultipartFile.fromFile(userImg.path);
            }

            final result = await _updateUserInfoUsecase(parm: {
              'first_name': firstName.text,
              'last_name': lastName.text,
              'password': password.text,
              'profile_picture': userI,
              'username': userName.text,
            });
            result.fold(
              (err) => emit(ProfileState.failure(err.getMsg)),
              (res) {
                password.clear();
                final updatedUser = usr.copyWith(user: res);

                // Update storage and global variable
                HiveStorage.set<UserEntity>(kUser, updatedUser);

                // Update controllers with new values
                firstName.text = res.first_name;
                lastName.text = res.last_name;
                userName.text = res.username;

                if (isUpdatingFName) fName = true;
                if (isUpdatingLName) lName = true;
                if (isUpdatingUsername) username = true;

                emit(const ProfileState.successUpdated());
                emit(const ProfileState.success());
              },
            );
          } catch (e) {
            emit(ProfileState.failure(e.toString()));
          }
        },
        getBusinessDetails: () async {
          emit(const ProfileState.loading());
          try {
            final result = await _getBusinessDetailUsecase();
            result.fold(
              (err) {
                HiveStorage.set(kBusiness, BusinessDetailsEntity.empty());
                emit(ProfileState.failure(err.getMsg));
              },
              (res) {
                HiveStorage.set(kBusiness, res);
                emit(const ProfileState.success());
              },
            );
          } catch (e) {
            emit(ProfileState.failure(e.toString()));
          }
        },
        selectTime: (isOpen, duration) async =>
            _selectTimeEvent(emit, isOpen, duration),
        pickIMage: (logo) async => _pickImageEvent(emit, logo),
        selectCategory: (category) async =>
            _selectCategoryEvent(emit, category),
        canBook: () async => _canBookEvent(emit),
        selectProviding: (providing) async =>
            _selectProvidingEvent(emit, providing),
        selectOpen24: () async => _selectOpen24Event(emit),
        addBusinessDetails: () async => _addBusinessDetailsEvent(emit),
        orElse: () {},
      );
    });
  }

  void _canBookEvent(Emitter<ProfileState> emit) {
    emit(const ProfileState.updateUi());
    canBook = !canBook;
    emit(const ProfileState.successUi());
  }

  void _selectOpen24Event(Emitter<ProfileState> emit) {
    emit(const ProfileState.updateUi());
    isOpen24 = !isOpen24;
    openTime =
        isOpen24 ? const Duration(hours: 0, minutes: 0) : const Duration();
    closeTime =
        isOpen24 ? const Duration(hours: 23, minutes: 59) : const Duration();
    emit(const ProfileState.successUi());
  }

  void _selectProvidingEvent(Emitter<ProfileState> emit, String providing) {
    emit(const ProfileState.updateUi());
    selectedProviding = providing;
    emit(const ProfileState.successUi());
  }

  void _selectCategoryEvent(Emitter<ProfileState> emit, String category) {
    emit(const ProfileState.updateUi());
    selectedCategory = category;
    emit(const ProfileState.successUi());
  }

  void _pickImageEvent(Emitter<ProfileState> emit, File logo) {
    emit(const ProfileState.updateUi());
    brandLogo = logo;
    emit(const ProfileState.successUi());
  }

  void _selectTimeEvent(
      Emitter<ProfileState> emit, bool isOpen, Duration duration) {
    emit(const ProfileState.updateUi());
    if (isOpen) {
      openTime = duration;
    } else {
      closeTime = duration;
    }
    emit(const ProfileState.successUi());
  }

  void enableEdit(String feild) {
    if (feild == "Phone") {
      editPhone = true;
    } else {
      editEmail = true;
    }
  }

  FutureOr<void> _updateBusinessDetailsEvent(Emitter<ProfileState> emit) async {
    try {
      if (!businessForm.currentState!.validate()) return;

      // Check if user provided a new logo OR if there's an existing logo URL
      if ((brandLogo == null || brandLogo!.path.isEmpty) &&
          brandLogoUrl.isEmpty) {
        emit(ProfileState.failure(tr.urBrandLogo));
        return;
      }

      if (selectedProviding.isEmpty) {
        emit(ProfileState.failure(tr.providingPrompt));
        return;
      }

      emit(const ProfileState.loading());

      // Determine what to send for business_logo
      dynamic businessLogoToSend;

      if (brandLogo != null && brandLogo!.path.isNotEmpty) {
        // User selected a new logo file
        businessLogoToSend = await MultipartFile.fromFile(brandLogo!.path);
      } else {
        // Keep the existing logo URL
        businessLogoToSend = brandLogoUrl;
      }

      final result = await _updateBusinessDetailsUsecase(
        parm: {
          'user_uuid': usr.user.uuid,
          'business_name': brandName.text,
          'business_type': selectedCategory,
          'branches': branche.text,
          'vendor_role': yourRole.text,
          'description': descripBrand.text,
          'operating_hours_from': formatDuration(openTime),
          'operating_hours_to': formatDuration(closeTime),
          'service': selectedProviding,
          'business_logo': businessLogoToSend,
          'has_booking': canBook ? 'True' : 'False',
        },
      );
      result.fold(
        (err) {
          emit(ProfileState.failure(err.getMsg));
          emit(const ProfileState.initial());
        },
        (res) {
          emit(const ProfileState.success());
          add(const ProfileEvent.getBusinessDetails());
        },
      );
    } catch (e) {
      emit(ProfileState.failure(e.toString()));
    }
  }

  FutureOr<void> _addBusinessDetailsEvent(Emitter<ProfileState> emit) async {
    try {
      if (!businessForm.currentState!.validate()) return;
      if (brandLogo!.path.isEmpty || brandLogo == null) {
        emit(ProfileState.failure(tr.urBrandLogo));
        return;
      }
      if (selectedProviding.isEmpty) {
        emit(ProfileState.failure(tr.providingPrompt));
        return;
      }
      emit(const ProfileState.loading());

      final brandL = await MultipartFile.fromFile(brandLogo!.path);

      debugPrint(
          'Selected Category: $selectedCategory, Selected Providing: $selectedProviding , Selected Open Time: $openTime, Selected Close Time: $closeTime , Brand Logo Path: ${brandL.filename}');

      final result = await _addBusinessDetailsUsecase(
        parm: {
          'user_uuid': usr.user.uuid,
          'business_name': brandName.text,
          'business_type': selectedCategory,
          'branches': branche.text,
          'vendor_role': yourRole.text,
          'description': descripBrand.text,
          'operating_hours_from': formatDuration(openTime),
          'operating_hours_to': formatDuration(closeTime),
          'service': selectedProviding,
          'business_logo': brandL,
          'has_booking': canBook ? 'True' : 'False',
        },
      );
      result.fold(
        (err) {
          emit(ProfileState.failure(err.getMsg));
          emit(const ProfileState.initial());
        },
        (res) => emit(const ProfileState.success()),
      );
    } catch (e) {
      emit(ProfileState.failure(e.toString()));
    }
  }
}
