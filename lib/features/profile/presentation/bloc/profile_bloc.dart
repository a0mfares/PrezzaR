import 'dart:async';
import 'dart:io';
import 'dart:developer';

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
  final TextEditingController firstName = TextEditingController(text: usr.user.first_name);
  final TextEditingController lastName = TextEditingController(text: usr.user.last_name);
  final TextEditingController userName = TextEditingController(text: usr.user.username);
  
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
  ) : super(const ProfileState.initial()) {
    on<ProfileEvent>((event, emit) async {
      await event.when(
        initBusiness: () async => _initBusinessEvent(emit),
        changeStatus: (type) async => _changeStatusEvent(emit, type),
        updatePass: () async => await _updatePassEvent(emit),
        getUserInfo: () async => await _getUserInfoEvent(emit),
        updateBusinessDetails: () async => await _updateBusinessDetailsEvent(emit),
        updateUserInfo: () async => await _updateUserInfoEvent(emit),
        getBusinessDetails: () async => await _getBusinessDetailsEvent(emit),
        selectTime: (isOpen, duration) async => _selectTimeEvent(emit, isOpen, duration),
        pickIMage: (logo) async => _pickImageEvent(emit, logo),
        selectCategory: (category) async => _selectCategoryEvent(emit, category),
        canBook: () async => _canBookEvent(emit),
        selectProviding: (providing) async => _selectProvidingEvent(emit, providing),
        selectOpen24: () async => _selectOpen24Event(emit),
        addBusinessDetails: () async => await _addBusinessDetailsEvent(emit),
        resetState: () async => _resetStateEvent(emit),
      );
    });
  }

  Future<void> _initBusinessEvent(Emitter<ProfileState> emit) async {
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
      }
    } catch (e) {
      log('Error parsing time: $e');
    }
    
    emit(const ProfileState.success());
  }

  Future<void> _changeStatusEvent(Emitter<ProfileState> emit, String type) async {
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
    emit(const ProfileState.optimisticUpdate());
  }

  Future<void> _updatePassEvent(Emitter<ProfileState> emit) async {
    emit(const ProfileState.loading());
    try {
      final result = await _updatePassUsecase(parm: {
        'old_password': oldPass.text,
        'new_password': pass.text,
        'confirm_password': passConfirm.text,
      }).timeout(
        const Duration(seconds: 30),
        onTimeout: () => throw TimeoutException('Request timeout', const Duration(seconds: 30)),
      );
      
      await result.fold(
        (err) async {
          emit(ProfileState.failure(error: err.getMsg));
        },
        (res) async {
          oldPass.clear();
          pass.clear();
          passConfirm.clear();
          emit(const ProfileState.successUpdated(message: 'Password updated successfully'));
        },
      );
    } on TimeoutException {
      emit(const ProfileState.failure(error: 'Request timed out. Please try again.'));
    } catch (e) {
      emit(ProfileState.failure(error: e.toString()));
    }
  }

  Future<void> _getUserInfoEvent(Emitter<ProfileState> emit) async {
    emit(const ProfileState.loading());
    try {
      final result = await _getUserProfileUsecase().timeout(
        const Duration(seconds: 30),
        onTimeout: () => throw TimeoutException('Request timeout', const Duration(seconds: 30)),
      );
      
      await result.fold(
        (err) async {
          emit(ProfileState.failure(error: err.getMsg));
        },
        (res) async {
          emit(const ProfileState.success());
        },
      );
    } on TimeoutException {
      emit(const ProfileState.failure(error: 'Request timed out. Please try again.'));
    } catch (e) {
      emit(ProfileState.failure(error: e.toString()));
    }
  }

  Future<void> _updateUserInfoEvent(Emitter<ProfileState> emit) async {
    if (!personalInfoForm.currentState!.validate()) {
      emit(ProfileState.failure(error: tr.enterValideData));
      return;
    }

    // Save original values for rollback
    final originalFirstName = usr.user.first_name;
    final originalLastName = usr.user.last_name;
    final originalUsername = usr.user.username;
    final originalProfilePic = usr.user.profile_picture;
    
    final rollbackData = {
      'first_name': originalFirstName,
      'last_name': originalLastName,
      'username': originalUsername,
      'profile_picture': originalProfilePic,
      'fName': fName,
      'lName': lName,
      'username_edit': username,
    };

    // Determine which field is being updated
    String fieldName = '';
    if (!fName) {
      fieldName = 'firstName';
    } else if (!lName) {
      fieldName = 'lastName';
    } else if (!username) {
      fieldName = 'username';
    }

    // Show loading for specific field
    emit(ProfileState.loadingField(fieldName: fieldName));
    
    // Update the global user entity optimistically
    final optimisticUser = usr.user.copyWith(
      first_name: firstName.text,
      last_name: lastName.text,
      username: userName.text,
    );
    final optimisticUserEntity = usr.copyWith(user: optimisticUser);
    await HiveStorage.set<UserEntity>(kUser, optimisticUserEntity);

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
      }).timeout(
        const Duration(seconds: 30),
        onTimeout: () => throw TimeoutException('Request timeout', const Duration(seconds: 30)),
      );
      
      await result.fold(
        (err) async {
          // Rollback on error
          await _rollbackUserInfo(rollbackData);
          emit(ProfileState.failure(
            error: err.getMsg,
            rollbackData: rollbackData,
          ));
        },
        (res) async {
          password.clear();
          
          // Update with actual server response
          final updatedUser = usr.copyWith(user: res);
          await HiveStorage.set<UserEntity>(kUser, updatedUser);

          firstName.text = res.first_name;
          lastName.text = res.last_name;
          userName.text = res.username;

          // Reset edit states
          if (!fName) fName = true;
          if (!lName) lName = true;
          if (!username) username = true;

          emit(const ProfileState.successUpdated(message: 'Profile updated successfully'));
        },
      );
    } on TimeoutException {
      // Handle timeout specifically
      await _rollbackUserInfo(rollbackData);
      emit(ProfileState.failure(
        error: 'Request timed out. Please try again.',
        rollbackData: rollbackData,
      ));
    } catch (e) {
      // Rollback on exception
      await _rollbackUserInfo(rollbackData);
      emit(ProfileState.failure(
        error: e.toString(),
        rollbackData: rollbackData,
      ));
    }
  }

  Future<void> _rollbackUserInfo(Map<String, dynamic> rollbackData) async {
    // Restore original values
    final originalUser = usr.user.copyWith(
      first_name: rollbackData['first_name'],
      last_name: rollbackData['last_name'],
      username: rollbackData['username'],
      profile_picture: rollbackData['profile_picture'],
    );
    final restoredUserEntity = usr.copyWith(user: originalUser);
    await HiveStorage.set<UserEntity>(kUser, restoredUserEntity);
    
    // Restore controllers
    firstName.text = rollbackData['first_name'];
    lastName.text = rollbackData['last_name'];
    userName.text = rollbackData['username'];
    
    // Restore edit states
    fName = rollbackData['fName'];
    lName = rollbackData['lName'];
    username = rollbackData['username_edit'];
  }

  Future<void> _getBusinessDetailsEvent(Emitter<ProfileState> emit) async {
    emit(const ProfileState.loading());
    try {
      final result = await _getBusinessDetailUsecase().timeout(
        const Duration(seconds: 30),
        onTimeout: () => throw TimeoutException('Request timeout', const Duration(seconds: 30)),
      );
      
      await result.fold(
        (err) async {
          await HiveStorage.set(kBusiness, BusinessDetailsEntity.empty());
          emit(ProfileState.failure(error: err.getMsg));
        },
        (res) async {
          await HiveStorage.set(kBusiness, res);
          emit(const ProfileState.success());
        },
      );
    } on TimeoutException {
      emit(const ProfileState.failure(error: 'Request timed out. Please try again.'));
    } catch (e) {
      emit(ProfileState.failure(error: e.toString()));
    }
  }

  Future<void> _canBookEvent(Emitter<ProfileState> emit) async {
    canBook = !canBook;
    emit(const ProfileState.optimisticUpdate());
  }

  Future<void> _selectOpen24Event(Emitter<ProfileState> emit) async {
    isOpen24 = !isOpen24;
    openTime = isOpen24 ? const Duration(hours: 0, minutes: 0) : const Duration();
    closeTime = isOpen24 ? const Duration(hours: 23, minutes: 59) : const Duration();
    emit(const ProfileState.optimisticUpdate());
  }

  Future<void> _selectProvidingEvent(Emitter<ProfileState> emit, String providing) async {
    selectedProviding = providing;
    emit(const ProfileState.optimisticUpdate());
  }

  Future<void> _selectCategoryEvent(Emitter<ProfileState> emit, String category) async {
    selectedCategory = category;
    emit(const ProfileState.optimisticUpdate());
  }

  Future<void> _pickImageEvent(Emitter<ProfileState> emit, File logo) async {
    brandLogo = logo;
    emit(const ProfileState.optimisticUpdate());
  }

  Future<void> _selectTimeEvent(Emitter<ProfileState> emit, bool isOpen, Duration duration) async {
    if (isOpen) {
      openTime = duration;
    } else {
      closeTime = duration;
    }
    emit(const ProfileState.optimisticUpdate());
  }

  void enableEdit(String field) {
    if (field == "Phone") {
      editPhone = true;
    } else {
      editEmail = true;
    }
  }

  Future<void> _updateBusinessDetailsEvent(Emitter<ProfileState> emit) async {
    try {
      if (!businessForm.currentState!.validate()) return;

      if ((brandLogo == null || brandLogo!.path.isEmpty) && brandLogoUrl.isEmpty) {
        emit(ProfileState.failure(error: tr.urBrandLogo));
        return;
      }

      if (selectedProviding.isEmpty) {
        emit(ProfileState.failure(error: tr.providingPrompt));
        return;
      }

      // Save original values for rollback
      final originalBusiness = business;
      final rollbackData = {
        'business': originalBusiness,
        'brandLogoUrl': brandLogoUrl,
        'brandLogo': brandLogo,
      };

      emit(const ProfileState.loading());

      dynamic businessLogoToSend;
      if (brandLogo != null && brandLogo!.path.isNotEmpty) {
        businessLogoToSend = await MultipartFile.fromFile(brandLogo!.path);
      } else {
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
      ).timeout(
        const Duration(seconds: 30),
        onTimeout: () => throw TimeoutException('Request timeout', const Duration(seconds: 30)),
      );
      
      await result.fold(
        (err) async {
          emit(ProfileState.failure(error: err.getMsg, rollbackData: rollbackData));
        },
        (res) async {
          emit(const ProfileState.successUpdated(message: 'Business details updated successfully'));
          add(const ProfileEvent.getBusinessDetails());
        },
      );
    } on TimeoutException {
      emit(const ProfileState.failure(error: 'Request timed out. Please try again.'));
    } catch (e) {
      emit(ProfileState.failure(error: e.toString()));
    }
  }

  Future<void> _addBusinessDetailsEvent(Emitter<ProfileState> emit) async {
    try {
      if (!businessForm.currentState!.validate()) return;
      
      if (brandLogo == null || brandLogo!.path.isEmpty) {
        emit(ProfileState.failure(error: tr.urBrandLogo));
        return;
      }
      
      if (selectedProviding.isEmpty) {
        emit(ProfileState.failure(error: tr.providingPrompt));
        return;
      }
      
      emit(const ProfileState.loading());

      final brandL = await MultipartFile.fromFile(brandLogo!.path);

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
      ).timeout(
        const Duration(seconds: 30),
        onTimeout: () => throw TimeoutException('Request timeout', const Duration(seconds: 30)),
      );
      
      await result.fold(
        (err) async {
          emit(ProfileState.failure(error: err.getMsg));
        },
        (res) async {
          emit(const ProfileState.successUpdated(message: 'Business details added successfully'));
        },
      );
    } on TimeoutException {
      emit(const ProfileState.failure(error: 'Request timed out. Please try again.'));
    } catch (e) {
      emit(ProfileState.failure(error: e.toString()));
    }
  }

  Future<void> _resetStateEvent(Emitter<ProfileState> emit) async {
    emit(const ProfileState.initial());
  }
}