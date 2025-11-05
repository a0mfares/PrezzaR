import 'dart:developer';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:place_picker_google/place_picker_google.dart';
import 'package:prezza/core/service/hive_storage.dart';
import 'package:prezza/features/location/domain/entities/current_location_entity.dart';
import 'package:prezza/features/vendor/domain/entities/orderstatuscount_entity.dart';
import 'package:prezza/features/vendor/domain/entities/reviewa_entity.dart';
import 'package:prezza/features/vendor/domain/entities/vendorbalance_entity.dart';
import 'package:prezza/features/vendor/domain/usecases/vendor_usecase.dart';

import '../../../../core/helper/tools.dart';
import '../../../location/domain/entities/branche_entity.dart';
import '../../domain/entities/mostordered_entity.dart';
import '../../domain/entities/vendordetails_entity.dart';
import '../../domain/entities/vendordetailsbooking_entity.dart';
import '../../domain/entities/vendoritem_entity.dart';

part 'vendor_event.dart';
part 'vendor_state.dart';
part 'vendor_bloc.freezed.dart';

class VendorBloc extends Bloc<VendorEvent, VendorState> {
  final GetOrderStatusUsecase _getOrderStatusUsecase;
  final GetReviewAUsecase _getReviewAUsecase;
  final GetVendorBalanceUsecase _getVendorBalanceUsecase;
  final GetMostOrderedUsecase _getMostOrderedUsecase;
  final GetVendorBranchesUsecase _gteVendorBranchesUsecase;
  final GetVendorByFilterUsecase _getVendorByFilterUsecase;
  final GetNearbyPlacesUsecase _getNearbyPlacesUsecase;
  final GetVendorItemDetailsBookingUsecase _getVendorItemDetailsBookingUsecase;
  final GetVendorByCategoryOrServiceUsecase
      _getVendorByCategoryOrServiceUsecase;
  final GetVendorItemDetailsUsecase _getVendorItemDetailsUsecase;
  OrderStatusCountEntity orderStatusCount =
      OrderStatusCountEntity(pending_orders: 0, running_orders: 0);
  ReviewAEntity reviewAnalysis =
      ReviewAEntity(total_reviews: 0, average_stars: 0);
  List<MostOrderedEntity> mostOrdered = [];
  VendorBalanceEntity vendorBalance =
      VendorBalanceEntity(curr_balance: 0, total_balance: 0);
  List<VendorItemEntity> vendorItem = [];
  String cusines = 'c4,c1';
  String operatingHours = 'open_now';
  String distance = '50';
  String sort = 'All';
  num stars = 1;
  String categoryId = '';
  String selectedService = 'Pickup only';
  VendorDetailsEntity vendorDetails = VendorDetailsEntity.empty();
  VendorDetailsBookingEntity vendorDetailsBooking =
      VendorDetailsBookingEntity.empty();
  List<BrancheEntity> branches = [];
  LocationResult selectedLoc = LocationResult(
      latLng: LatLng(currentLoc.latitude, currentLoc.longitude),
      formattedAddress: currentLoc.locationName);
  static VendorBloc get(context) => BlocProvider.of(context);
  VendorBloc(
      this._getOrderStatusUsecase,
      this._getReviewAUsecase,
      this._getVendorBalanceUsecase,
      this._getMostOrderedUsecase,
      this._getNearbyPlacesUsecase,
      this._getVendorByCategoryOrServiceUsecase,
      this._getVendorItemDetailsUsecase,
      this._getVendorByFilterUsecase,
      this._gteVendorBranchesUsecase,
      this._getVendorItemDetailsBookingUsecase)
      : super(const _Initial()) {
    on<VendorEvent>((event, emit) async {
      await event.maybeWhen(
        selectDistance: (dis, type) {
          emit(const VendorState.loading());
          distance = dis;
          add(VendorEvent.getVendorByFilter(categoryId, type));
        },
        selectOperatingHour: (hour, type) {
          emit(const VendorState.loading());
          operatingHours = hour;
          add(VendorEvent.getVendorByFilter(categoryId, type));
        },
        getBranches: (id) async {
          emit(const VendorState.loading());
          try {
            final result = await _gteVendorBranchesUsecase(parm: {'id': id});
            result.fold(
              (err) {
                emit(VendorState.failure(err.getMsg));
                log(err.getMsg, name: 'getVendorBranches');
              },
              (res) {
                branches = res;
                emit(const VendorState.success());
              },
            );
          } catch (e) {
            emit(VendorState.failure(e.toString()));
          }
        },
        selecteSort: (sortBy, type) {
          emit(const VendorState.loading());
          sort = sortBy;
          add(VendorEvent.getVendorByFilter(categoryId, type));
        },
        selectedLocation: (loc) {
          emit(const VendorState.loading());
          selectedLoc = loc;
          emit(const VendorState.success());
        },
        getVendorByFilter: (id, type) async {
          emit(const VendorState.loading());
          try {
            final result = await _getVendorByFilterUsecase(
              parm: {
                'type': type,
                'business_category_id': id,
                'service': selectedService,
                'user_latitude': selectedLoc.latLng!.latitude,
                'user_longitude': selectedLoc.latLng!.longitude,
                // 'cuisines': cusines,
                'stars': stars.toInt(),
                'operating_hours': operationHourByKey[operatingHours],
                'distance': distance.split(' ')[0],
                'sort': sortKey(sort),
                'page': 1,
              },
            );
            result.fold(
              (err) {
                emit(VendorState.failure(err.getMsg));
                log(err.getMsg, name: 'getVendorByFilter');
              },
              (res) {
                vendorItem = res;
                emit(const VendorState.success());
              },
            );
          } catch (e) {
            emit(VendorState.failure(e.toString()));
            log(e.toString(), name: 'getVendorByFilter');
          }
        },
        getVendorDetails: (id) async {
          emit(const VendorState.loading());
          try {
            final result = await _getVendorItemDetailsUsecase(
              parm: {
                'id': id,
                'user_latitude': HiveStorage.get<CurrentLocationEntity>(
                        kCurLocation,
                        defaultValue: CurrentLocationEntity.empty())
                    .latitude,
                'user_longitude': HiveStorage.get<CurrentLocationEntity>(
                        kCurLocation,
                        defaultValue: CurrentLocationEntity.empty())
                    .longitude,
              },
            );
            result.fold(
              (err) {
                emit(VendorState.failure(err.getMsg));
                log(err.getMsg, name: 'getVendorItemDetails');
              },
              (res) {
                vendorDetails = res;
                log(vendorDetails.business_name);
                // nearbyPlaces = res;
                emit(const VendorState.success());
              },
            );
          } catch (e) {
            emit(VendorState.failure(e.toString()));
          }
        },
        getVendorDetailsBooking: (id) async {
          emit(const VendorState.loading());
          try {
            final result = await _getVendorItemDetailsBookingUsecase(parm: {
              'id': id,
              'user_latitude': HiveStorage.get<CurrentLocationEntity>(
                      kCurLocation,
                      defaultValue: CurrentLocationEntity.empty())
                  .latitude,
              'user_longitude': HiveStorage.get<CurrentLocationEntity>(
                      kCurLocation,
                      defaultValue: CurrentLocationEntity.empty())
                  .longitude,
            });
            result.fold(
              (err) {
                emit(VendorState.failure(err.getMsg));
                log(err.getMsg, name: 'getVendorItemDetailsBooking');
              },
              (res) {
                vendorDetailsBooking = res;
                // nearbyPlaces = res;
                emit(const VendorState.success());
              },
            );
          } catch (e) {
            emit(VendorState.failure(e.toString()));
          }
        },
        getVendorByCategory: (id, type) async {
          emit(const VendorState.loading());
          try {
            final result = await _getVendorByCategoryOrServiceUsecase(parm: {
              'type': type,
              'business_category_id': id,
              'service': selectedService,
              'user_latitude': HiveStorage.get<CurrentLocationEntity>(
                      kCurLocation,
                      defaultValue: CurrentLocationEntity.empty())
                  .latitude,
              'user_longitude': HiveStorage.get<CurrentLocationEntity>(
                      kCurLocation,
                      defaultValue: CurrentLocationEntity.empty())
                  .longitude,
            });
            result.fold(
              (err) {
                emit(VendorState.failure(err.getMsg));
                log(err.getMsg, name: 'getVendorByCategory');
              },
              (res) {
                vendorItem = res;
                emit(const VendorState.success());
              },
            );
          } catch (e) {
            emit(VendorState.failure(e.toString()));
            log(e.toString(), name: 'getVendorByCategory');
          }
        },
        getNearbyPlaces: (type) async {
          emit(const VendorState.loading());
          try {
            final result = await _getNearbyPlacesUsecase(parm: {
              'type': type,
              'user_latitude': HiveStorage.get<CurrentLocationEntity>(
                      kCurLocation,
                      defaultValue: CurrentLocationEntity.empty())
                  .latitude,
              'user_longitude': HiveStorage.get<CurrentLocationEntity>(
                      kCurLocation,
                      defaultValue: CurrentLocationEntity.empty())
                  .longitude,
            });

            result.fold(
              (err) {
                emit(VendorState.failure(err.getMsg));
                log(err.getMsg, name: 'getNearbyPlaces');
              },
              (res) {
                vendorItem = res;
                emit(const VendorState.success());
              },
            );
          } catch (e) {
            emit(VendorState.failure(e.toString()));
          }
        },
        getOrdersStatus: () async {
          emit(const VendorState.loading());
          final result = await _getOrderStatusUsecase();
          result.fold(
            (err) {
              emit(VendorState.failure(err.getMsg));
              log(err.getMsg, name: 'getOrder');
            },
            (res) {
              orderStatusCount = res;
              add(const VendorEvent.getReviewAnalysis());
            },
          );
          try {} catch (e) {
            emit(VendorState.failure(e.toString()));
          }
        },
        getReviewAnalysis: () async {
          emit(const VendorState.loading());
          try {
            final result = await _getReviewAUsecase();
            result.fold(
              (err) {
                emit(VendorState.failure(err.getMsg));
                log(err.getMsg, name: 'getReviewAnalysis');
              },
              (res) {
                reviewAnalysis = res;
                add(const VendorEvent.getVendorBalnace());
              },
            );
          } catch (e) {
            emit(VendorState.failure(e.toString()));
          }
        },
        getVendorBalnace: () async {
          emit(const VendorState.loading());
          try {
            final result = await _getVendorBalanceUsecase();
            result.fold(
              (err) {
                emit(VendorState.failure(err.getMsg));
                log(err.getMsg, name: 'getVendorBalnace');
              },
              (res) {
                vendorBalance = res;
                add(const VendorEvent.getMostOrdered());
              },
            );
          } catch (e) {
            emit(VendorState.failure(e.toString()));
          }
        },
        getMostOrdered: () async {
          emit(const VendorState.loading());
          try {
            final result = await _getMostOrderedUsecase();
            result.fold(
              (err) {
                emit(VendorState.failure(err.getMsg));
                log(err.getMsg, name: 'getMostOrdered');
              },
              (res) {
                mostOrdered = res;
                emit(const VendorState.success());
              },
            );
          } catch (e) {
            emit(VendorState.failure(e.toString()));
          }
        },
        orElse: () {},
      );
    });
  }
}
