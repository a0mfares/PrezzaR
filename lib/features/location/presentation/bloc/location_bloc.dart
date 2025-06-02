import 'dart:async';

import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:local_auth/local_auth.dart';
import 'package:place_picker_google/place_picker_google.dart';
// import 'package:location/location.dart';
import 'package:prezza/core/helper/tools.dart';
import 'package:prezza/core/service/hive_storage.dart';
import 'package:prezza/features/location/domain/entities/branche_entity.dart';
import 'package:prezza/features/location/domain/usecases/location_usecase.dart';

import '../../domain/entities/address_entity.dart';

part 'location_event.dart';
part 'location_state.dart';
part 'location_bloc.freezed.dart';

class LocationBloc extends Bloc<LocationEvent, LocationState> {
  final AddBrancheUsecase _addBrancheUsecase;
  final GetBranchesUsecase _getBranchesUsecase;
  final UpdateBrancheUsecase _updateBrancheUsecase;
  final DeleteBrancheUsecase _deleteBrancheUsecase;
  final AddAddressUsecase _addAddressUsecase;
  final GetAddressesUsecase _getAddressesUsecase;
  final UpdateAddressUsecase _updateAddressUsecase;
  final DeleteAddressUsecase _deleteAddressUsecase;
  TextEditingController password = TextEditingController();
  TextEditingController brancheAddress = TextEditingController();
  TextEditingController brancheLandMark = TextEditingController();
  TextEditingController addressTitle = TextEditingController();
  bool isAuthenticated = false;
  LatLng initialLocation = const LatLng(0, 0);
  final LocalAuthentication _localAuth = LocalAuthentication();
  LocationResult resultPlace = LocationResult();
  static LocationBloc get(context) => BlocProvider.of(context);
  List<BrancheEntity> branches = [];
  List<AddressEntity> addresses = [];
  BrancheEntity selectedBranche = BrancheEntity(
      branch_address: '',
      branch_landmark: '',
      longitude: 0,
      latitude: 0,
      id: 0);

  AddressEntity selectedAdress =
      AddressEntity(uuid: '', address: '', landmark: '', title: '');
  LocationBloc(
      this._addBrancheUsecase,
      this._getBranchesUsecase,
      this._updateBrancheUsecase,
      this._deleteBrancheUsecase,
      this._addAddressUsecase,
      this._getAddressesUsecase,
      this._updateAddressUsecase,
      this._deleteAddressUsecase,
      )
      : super(const _Initial()) {
    on<LocationEvent>(
      (event, emit) async {
        await event.maybeWhen(
          
          initializeEditMode: () {
            emit(const LocationState.loading());
            if (!isCustomer) {
              brancheAddress =
                  TextEditingController(text: selectedBranche.branch_address);
              brancheLandMark =
                  TextEditingController(text: selectedBranche.branch_landmark);

              resultPlace = LocationResult(
                  latLng: LatLng(
                      selectedBranche.latitude, selectedBranche.longitude));

              initialLocation =
                  LatLng(selectedBranche.latitude, selectedBranche.longitude);
            } else {
              brancheAddress =
                  TextEditingController(text: selectedAdress.address);
              brancheLandMark =
                  TextEditingController(text: selectedAdress.landmark);
              addressTitle = TextEditingController(text: selectedAdress.title);
            }
            emit(const LocationState.success());
          },
          auth: (isEdit) async {
            try {
              // Check if biometrics are available on the device
              bool canCheckBiometrics = await _localAuth.canCheckBiometrics;
              if (canCheckBiometrics) {
                // Perform biometric authentication (Fingerprint or Face ID)
                isAuthenticated = await _localAuth.authenticate(
                  localizedReason: tr.plsAuth,
                  options: const AuthenticationOptions(
                    biometricOnly: false, // Only biometric authentication
                    sensitiveTransaction: true,
                    useErrorDialogs: true,
                  ),
                );
              }
            } catch (e) {
              print('Error during authentication: $e');
            }
            if (isAuthenticated) {
              if (HiveStorage.get(kPass) == null) {
                HiveStorage.set<String>(kPass, password.text);
              }
              emit(LocationState.successAuth(isEdit));
            }
          },
          addAddress: () async {
            emit(const LocationState.loading());
            try {
              final result = await _addAddressUsecase(
                parm: {
                  'address': brancheAddress.text,
                  'landmark': brancheLandMark.text,
                  'title': addressTitle.text,
                },
              );
              result.fold((err) {
                emit(LocationState.failure(err.getMsg));
              }, (res) {
                brancheAddress.clear();
                brancheLandMark.clear();
                addressTitle.clear();
                emit(const LocationState.successAdded());
                emit(const LocationState.success());
              });
            } catch (e) {
              emit(LocationState.failure(e.toString()));
            }
          },
          getAddresses: () async {
            emit(const LocationState.loading());
            try {
              final result = await _getAddressesUsecase();
              result.fold(
                (err) {
                  emit(LocationState.failure(err.getMsg));
                },
                (res) {
                  addresses = res;
                  emit(const LocationState.success());
                },
              );
            } catch (e) {
              emit(LocationState.failure(e.toString()));
            }
          },
          deleteAddress: (id) async {
            emit(const LocationState.loading());
            try {
              final result = await _deleteAddressUsecase(parm: {'uuid': id});
              result.fold((err) {
                emit(LocationState.failure(err.getMsg));
              }, (res) {
                emit(const LocationState.successDelete());
                add(const LocationEvent.getAddresses());
              });
            } catch (e) {
              emit(LocationState.failure(e.toString()));
            }
          },
          updateAddress: () async {
            emit(const LocationState.loading());
            try {
              final result = await _updateAddressUsecase(
                parm: {
                  'address': brancheAddress.text,
                  'landmark': brancheLandMark.text,
                  'title': addressTitle.text,
                  'uuid': selectedAdress.uuid,
                },
              );
              result.fold((err) {
                emit(LocationState.failure(err.getMsg));
              }, (res) {
                emit(const LocationState.successUpdated());
                add(const LocationEvent.getAddresses());
              });
            } catch (e) {
              emit(LocationState.failure(e.toString()));
            }
          },
          deleteBranche: (id) async {
            emit(const LocationState.loading());
            try {
              final result = await _deleteBrancheUsecase(parm: {
                'branche_id': id,
                'password': HiveStorage.get(kPass),
                'user_uuid': usr.user.uuid,
              });
              result.fold((err) {
                emit(LocationState.failure(err.getMsg));
              }, (res) {
                emit(const LocationState.successDelete());
                add(const LocationEvent.getBranches());
              });
            } catch (e) {
              emit(LocationState.failure(e.toString()));
            }
          },
          updateBranche: () async {
            emit(const LocationState.loading());
            try {
              final result = await _updateBrancheUsecase(
                parm: {
                  'branche_id': selectedBranche.id,
                  'user_uuid': usr.user.uuid,
                  'password': HiveStorage.get(kPass),
                  'branch_address': brancheAddress.text,
                  'branch_landmark': brancheLandMark.text,
                  'longitude': resultPlace.latLng!.longitude,
                  'latitude': resultPlace.latLng!.latitude,
                },
              );
              result.fold((err) {
                emit(LocationState.failure(err.getMsg));
              }, (res) {
                emit(const LocationState.successUpdated());
                add(const LocationEvent.getBranches());
              });
            } catch (e) {
              emit(LocationState.failure(e.toString()));
            }
          },
          addBranche: () async {
            emit(const LocationState.loading());
            try {
              final result = await _addBrancheUsecase(
                parm: {
                  'vendor_uuid': usr.user.uuid,
                  'branch_address': brancheAddress.text,
                  'branch_landmark': brancheLandMark.text,
                  'longitude': resultPlace.latLng!.longitude,
                  'latitude': resultPlace.latLng!.latitude,
                },
              );
              result.fold((err) {
                emit(LocationState.failure(err.getMsg));
              }, (res) {
                brancheAddress.clear();
                brancheLandMark.clear();
                add(const LocationEvent.getInitialLocation());
                resultPlace = LocationResult();
                emit(const LocationState.successAdded());
                add(const LocationEvent.getBranches());
              });
            } catch (e) {
              emit(LocationState.failure(e.toString()));
            }
          },
          getBranches: () async {
            emit(const LocationState.loading());
            try {
              final result = await _getBranchesUsecase();
              result.fold(
                (err) {
                  emit(LocationState.failure(err.getMsg));
                },
                (res) {
                  branches = res;
                  emit(const LocationState.success());
                },
              );
            } catch (e) {
              emit(LocationState.failure(e.toString()));
            }
          },
          onPickPlace: (result) {
            emit(const LocationState.loading());
            resultPlace = result;
            brancheLandMark = TextEditingController(text: resultPlace.name);
            brancheAddress =
                TextEditingController(text: resultPlace.formattedAddress);
            emit(const LocationState.success());
          },
          getInitialLocation: () async {
            emit(const LocationState.loading());
            try {
              bool serviceEnabled;
              LocationPermission permission;

              // Check if location services are enabled.
              serviceEnabled = await Geolocator.isLocationServiceEnabled();
              if (!serviceEnabled) {
                // Location services are not enabled, don't continue.
                // Optionally, prompt the user to enable the location services.
                return Future.error('Location services are disabled.');
              }

              permission = await Geolocator.checkPermission();
              if (permission == LocationPermission.denied) {
                permission = await Geolocator.requestPermission();
                if (permission == LocationPermission.denied) {
                  // Permissions are denied, next time you could try requesting permissions again.
                  return Future.error('Location permissions are denied');
                }
              }

              if (permission == LocationPermission.deniedForever) {
                // Permissions are denied forever, handle appropriately.
                emit(LocationState.failure(tr.locationErrorPerm));
              }

              final result = await Geolocator.getCurrentPosition();

              initialLocation = LatLng(result.latitude, result.longitude);
              emit(const LocationState.success());
            } catch (e) {
              emit(LocationState.failure(e.toString()));
            }
          },
          orElse: () {},
        );
      },
    );
  }
}
