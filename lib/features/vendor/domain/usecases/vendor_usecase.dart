import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:prezza/core/helper/usecase_helper.dart';
import 'package:prezza/core/service/failure_services.dart';
import 'package:prezza/features/location/domain/entities/branche_entity.dart';
import 'package:prezza/features/vendor/domain/entities/mostordered_entity.dart';
import 'package:prezza/features/vendor/domain/entities/reviewa_entity.dart';
import 'package:prezza/features/vendor/domain/entities/vendorbalance_entity.dart';
import 'package:prezza/features/vendor/domain/repositories/vendor_repo.dart';

import '../entities/vendordetails_entity.dart';
import '../entities/vendordetailsbooking_entity.dart';
import '../entities/vendoritem_entity.dart';
import '../entities/orderstatuscount_entity.dart';

class GetOrderStatusUsecase extends UsecaseHelper<OrderStatusCountEntity> {
  final VendorRepo _repo;

  GetOrderStatusUsecase(this._repo);

  @override
  Future<Either<FailureServices, OrderStatusCountEntity>> call(
      {Map<String, dynamic> parm = const {}}) {
    return _repo.getOrderStatusCount();
  }
}

class GetReviewAUsecase extends UsecaseHelper<ReviewAEntity> {
  final VendorRepo _repo;

  GetReviewAUsecase(this._repo);

  @override
  Future<Either<FailureServices, ReviewAEntity>> call(
      {Map<String, dynamic> parm = const {}}) {
    return _repo.getReviewAnalysis();
  }
}

class GetVendorBalanceUsecase extends UsecaseHelper<VendorBalanceEntity> {
  final VendorRepo _repo;

  GetVendorBalanceUsecase(this._repo);

  @override
  Future<Either<FailureServices, VendorBalanceEntity>> call(
      {Map<String, dynamic> parm = const {}}) {
    return _repo.getVendorBalance();
  }
}

class GetMostOrderedUsecase extends UsecaseHelper<List<MostOrderedEntity>> {
  final VendorRepo _repo;

  GetMostOrderedUsecase(this._repo);

  @override
  Future<Either<FailureServices, List<MostOrderedEntity>>> call(
      {Map<String, dynamic> parm = const {}}) {
    return _repo.getMostOrderedProducts();
  }
}

class GetNearbyPlacesUsecase extends UsecaseHelper<List<VendorItemEntity>> {
  final VendorRepo _repo;

  GetNearbyPlacesUsecase(this._repo);

  @override
  Future<Either<FailureServices, List<VendorItemEntity>>> call(
      {Map<String, dynamic> parm = const {}}) {
    if (parm['type'] == 'booking') {
      return _repo.getNearbyPlacesBooking(parm);
    }
    return _repo.getNearbyPlaces(parm);
  }
}

class GetVendorByCategoryOrServiceUsecase
    extends UsecaseHelper<List<VendorItemEntity>> {
  final VendorRepo _repo;

  GetVendorByCategoryOrServiceUsecase(this._repo);

  @override
  Future<Either<FailureServices, List<VendorItemEntity>>> call(
      {Map<String, dynamic> parm = const {}}) {
    if (parm['type'] == 'booking') {
      return _repo.getVendorsByCategoryBooking(parm);
    }

    return _repo.getVendorsByCategory(parm);
  }
}

class GetVendorByFilterUsecase extends UsecaseHelper<List<VendorItemEntity>> {
  final VendorRepo _repo;

  GetVendorByFilterUsecase(this._repo);

  @override
  Future<Either<FailureServices, List<VendorItemEntity>>> call(
      {Map<String, dynamic> parm = const {}}) {
    log(parm.toString(), name: 'parm');
    if (parm['type'] == 'booking') {
      parm.remove('type');
      return _repo.getVendorsByFilterBooking(parm);
    }
    parm.remove('type');
    return _repo.getVendorsByFilter(parm);
  }
}

class GetVendorItemDetailsUsecase extends UsecaseHelper<VendorDetailsEntity> {
  final VendorRepo _repo;

  GetVendorItemDetailsUsecase(this._repo);

  @override
  Future<Either<FailureServices, VendorDetailsEntity>> call(
      {Map<String, dynamic> parm = const {}}) {
    return _repo.getVendorItemDetails(parm);
  }
}

class GetVendorItemDetailsBookingUsecase
    extends UsecaseHelper<VendorDetailsBookingEntity> {
  final VendorRepo _repo;

  GetVendorItemDetailsBookingUsecase(this._repo);

  @override
  Future<Either<FailureServices, VendorDetailsBookingEntity>> call(
      {Map<String, dynamic> parm = const {}}) {
    return _repo.getVendorItemDetailsBooking(parm);
  }
}

class GetVendorBranchesUsecase extends UsecaseHelper<List<BrancheEntity>> {
  final VendorRepo _repo;

  GetVendorBranchesUsecase(this._repo);

  @override
  Future<Either<FailureServices, List<BrancheEntity>>> call(
      {Map<String, dynamic> parm = const {}}) {
    return _repo.getVendorBranches(parm);
  }
}
