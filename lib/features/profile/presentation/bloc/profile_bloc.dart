import 'dart:async';
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
  File brandLogo = File('');
  Duration openTime = const Duration();
  Duration closeTime = const Duration();
  bool isOpen24 = false;
  bool canBook = false;
  bool fName = true;
  bool lName = true;
  bool username = true;

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
  final passwordRegex = RegExp(
      r'^(?=.*[A-Z])(?=.*[a-z])(?=.*\d)(?=.*[@$!%*?&])[A-Za-z\d@$!%*?&]{8,}$');
  File userImg = File('');

  BusinessDetailsEntity businessDetails = BusinessDetailsEntity.empty();
  static ProfileBloc get(context) => BlocProvider.of(context);
  ProfileBloc(
    this._addBusinessDetailsUsecase,
    this._getBusinessDetailUsecase,
    this._updateUserInfoUsecase,
    this._getUserProfileUsecase,
    this._updatePassUsecase,
  ) : super(const _Initial()) {
    on<ProfileEvent>((event, emit) async {
      await event.maybeWhen(
        initBusiness: () {
          emit(const ProfileState.updateUi());
          brandName.text = business.business_name;
          brandLogo = File(business.business_logo);
          yourRole.text = business.vendor_role;
          branche.text = business.branches.toString();
          selectedCategory = business.business_category.name;
          canBook = business.has_booking;
          descripBrand.text = business.description;
          selectedProviding = business.service;
          List<String> partsOpen = business.operating_hours_from.split(":");
          List<String> partsClose = business.operating_hours_to.split(":");

          openTime = Duration(
            hours: int.tryParse(partsOpen[0]) ?? 0,
            minutes: int.tryParse(partsOpen[1]) ?? 0,
          );
          closeTime = Duration(
            hours: int.tryParse(partsClose[0]) ?? 0,
            minutes: int.tryParse(partsClose[1]) ?? 0,
          );
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
            result.fold((err) {
              emit(ProfileState.failure(err.getMsg));
            }, (res) {
              emit(const ProfileState.successUpdated());
            });
          } catch (e) {
            emit(ProfileState.failure(e.toString()));
          }
        },
        getUserInfo: () async {
          emit(const ProfileState.loading());
          try {
            final result = await _getUserProfileUsecase();

            result.fold(
              (err) {
                emit(ProfileState.failure(err.getMsg));
              },
              (res) {
                //  final updatedData = usr.copyWith(res)
                emit(const ProfileState.success());
              },
            );
          } catch (e) {
            emit(ProfileState.failure(e.toString()));
          }
        },
        updateUserInfo: () async {
          if (!personalInfoForm.currentState!.validate()) {
            emit(ProfileState.failure(tr.enterValideData));
          }
          emit(!fName
              ? const ProfileState.loadingFName()
              : !lName
                  ? const ProfileState.loadingLName()
                  : !username
                      ? const ProfileState.loadingUserName()
                      : const ProfileState.loading());
          try {
            Object userI;
            if (userImg.path.isNotEmpty) {
              final Completer<MultipartFile> image = Completer();

              await MultipartFile.fromFile(userImg.path).then((v) {
                image.complete(v);
              });
              userI = await image.future;
            } else {
              userI = usr.user.profile_picture;
            }

            final result = await _updateUserInfoUsecase(parm: {
              'first_name': firstName.text,
              'last_name': lastName.text,
              'password': password.text,
              'profile_picture': [userI],
              'username': userName.text,
            });
            result.fold(
              (err) {
                emit(ProfileState.failure(err.getMsg));
              },
              (res) {
                password.clear();
                final updatedUser = usr.copyWith(user: res);
                HiveStorage.set<UserEntity>(kUser, updatedUser);
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
        selectTime: (isOpen, duration) async {
          return _selectTimeEvent(emit, isOpen, duration);
        },
        pickIMage: (logo) async {
          return _pickImageEvent(emit, logo);
        },
        selectCategory: (category) async {
          return _selectCategoryEvent(emit, category);
        },
        canBook: () async {
          return _canBookEvent(emit);
        },
        selectProviding: (providing) async {
          return _selectProvidingEvent(emit, providing);
        },
        selectOpen24: () async {
          return _selectOpen24Event(emit);
        },
        addBusinessDetails: () async {
          return _addBusinessDetailsEvent(emit);
        },
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
    if (isOpen24) {
      openTime = const Duration(hours: 0, minutes: 0);
      closeTime = const Duration(hours: 23, minutes: 59);
    } else {
      openTime = const Duration(hours: 0, minutes: 0);
      closeTime = const Duration(hours: 0, minutes: 0);
    }

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

  FutureOr<void> _addBusinessDetailsEvent(Emitter<ProfileState> emit) async {
    try {
      if (!businessForm.currentState!.validate()) return;
      if (brandLogo.path.isEmpty) {
        emit(ProfileState.failure(tr.urBrandLogo));
        return;
      }
      if (selectedProviding == '') {
        emit(ProfileState.failure(tr.providingPrompt));
        return;
      }
      emit(const ProfileState.loading());

      final Completer<MultipartFile> image = Completer();

      await MultipartFile.fromFile(brandLogo.path).then((v) {
        image.complete(v);
      });
      final brandL = await image.future;

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
          'files': [brandL],
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
        },
      );
    } catch (e) {
      emit(ProfileState.failure(e.toString()));
    }
  }
}
