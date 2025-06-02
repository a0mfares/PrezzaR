import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:prezza/core/helper/network.dart';
import 'package:prezza/core/helper/tools.dart';
import 'package:prezza/core/service/failure_services.dart';
import 'package:prezza/features/location/data/models/branche_model.dart';
import 'package:prezza/features/location/domain/entities/branche_entity.dart';
import 'package:prezza/features/vendor/data/datasources/vendor_service.dart';
import 'package:prezza/features/vendor/data/models/mostordered_model.dart';
import 'package:prezza/features/vendor/data/models/orderstatuscount_model.dart';
import 'package:prezza/features/vendor/data/models/reviewa_model.dart';
import 'package:prezza/features/vendor/data/models/vendorbalance_model.dart';
import 'package:prezza/features/vendor/data/models/vendordetailsbooking_model.dart';
import 'package:prezza/features/vendor/domain/entities/mostordered_entity.dart';
import 'package:prezza/features/vendor/domain/entities/vendoritem_entity.dart';
import 'package:prezza/features/vendor/domain/entities/orderstatuscount_entity.dart';
import 'package:prezza/features/vendor/domain/entities/reviewa_entity.dart';
import 'package:prezza/features/vendor/domain/entities/vendorbalance_entity.dart';
import 'package:prezza/features/vendor/domain/repositories/vendor_repo.dart';

import '../../domain/entities/vendordetails_entity.dart';
import '../../domain/entities/vendordetailsbooking_entity.dart';
import '../models/vendordetails_model.dart';
import '../models/vendoritem_model.dart';

class VendorRepoImpl implements VendorRepo {
  final VendorService _service;

  VendorRepoImpl(this._service);

  @override
  Future<Either<FailureServices, List<MostOrderedEntity>>>
      getMostOrderedProducts() {
    return execute(() async {
      final result = await _service.getMostOrderedProduct(bearerToken);
      return List<MostOrderedEntity>.from(result.data['data'].map(
          (e) => MostOrderedEntity.fromModel(MostOrderedModel.fromMap(e))));
    });
  }

  @override
  Future<Either<FailureServices, OrderStatusCountEntity>>
      getOrderStatusCount() {
    return execute(() async {
      final result = await _service.getOrderStatusCount(bearerToken);

      return OrderStatusCountEntity.fromModel(
          OrderStatusCountModel.fromMap(result.data['data']));
    });
  }

  @override
  Future<Either<FailureServices, ReviewAEntity>> getReviewAnalysis() {
    return execute(() async {
      final result = await _service.getReviewsAnalysis(bearerToken);
      final handledData = result.data['data'] as Map;
      final num totalReview = handledData['total_reviews'];
      final num averageStars = handledData['average_stars'] ?? 0;
      return ReviewAEntity.fromModel(ReviewAModel(
          total_reviews: totalReview, average_stars: averageStars));
    });
  }

  @override
  Future<Either<FailureServices, VendorBalanceEntity>> getVendorBalance() {
    return execute(() async {
      final result = await _service.getVendorBalance(bearerToken);

      return VendorBalanceEntity.fromModel(
          VendorBalanceModel.fromMap(result.data['data']));
    });
  }

  @override
  Future<Either<FailureServices, List<VendorItemEntity>>> getNearbyPlaces(
      Map<String, dynamic> queries) {
    return execute(() async {
      final result = await _service.getNearByPlaces(bearerToken, queries);
      return List<VendorItemEntity>.from(result.data['data']
          .map((e) => VendorItemEntity.fromModel(VendorItemModel.fromJson(e))));
    });
  }

  @override
  Future<Either<FailureServices, List<VendorItemEntity>>> getVendorsByFilter(
      Map<String, dynamic> queries) {
    log(queries.toString());
    return execute(() async {
      final result = await _service.filter(bearerToken, queries);
      return List<VendorItemEntity>.from(result.data['data']['data']
          .map((e) => VendorItemEntity.fromModel(VendorItemModel.fromJson(e))));
    });
  }

  @override
  Future<Either<FailureServices, VendorDetailsEntity>> getVendorItemDetails(
      Map<String, dynamic> queries) {
    return execute(() async {
      final result = await _service.getVendorDetails(bearerToken, queries);
      return VendorDetailsEntity.fromModel(
          VendorDetailsModel.fromJson(result.data['data']));
    });
  }

  @override
  Future<Either<FailureServices, List<VendorItemEntity>>> getVendorsByCategory(
      Map<String, dynamic> queries) {
    return execute(() async {
      final result =
          await _service.getVendorsByCategoryOrService(bearerToken, queries);
      return List<VendorItemEntity>.from(result.data['data']['data']
          .map((e) => VendorItemEntity.fromModel(VendorItemModel.fromJson(e))));
    });
  }

  @override
  Future<Either<FailureServices, List<VendorItemEntity>>>
      getNearbyPlacesBooking(Map<String, dynamic> queries) {
    return execute(() async {
      final result =
          await _service.getNearByPlacesBooking(bearerToken, queries);
      return List<VendorItemEntity>.from(result.data['data']
          .map((e) => VendorItemEntity.fromModel(VendorItemModel.fromJson(e))));
    });
  }

  @override
  Future<Either<FailureServices, VendorDetailsBookingEntity>>
      getVendorItemDetailsBooking(Map<String, dynamic> queries) {
    return execute(() async {
      final result = await _service.getVendorByIdBooking(bearerToken, queries);
      return VendorDetailsBookingEntity.fromModel(
          VendorDetailsBookingModel.fromJson(result.data['data']));
    });
  }

  @override
  Future<Either<FailureServices, List<VendorItemEntity>>>
      getVendorsByCategoryBooking(Map<String, dynamic> queries) {
    return execute(() async {
      final result =
          await _service.getAllVendorsByCategoryBooking(bearerToken, queries);
      return List<VendorItemEntity>.from(result.data['data']['data']
          .map((e) => VendorItemEntity.fromModel(VendorItemModel.fromJson(e))));
    });
  }

  @override
  Future<Either<FailureServices, List<VendorItemEntity>>>
      getVendorsByFilterBooking(Map<String, dynamic> queries) {
    return execute(() async {
      final result = await _service.filterBooking(bearerToken, queries);
      return List<VendorItemEntity>.from(result.data['data']['data']
          .map((e) => VendorItemEntity.fromModel(VendorItemModel.fromJson(e))));
    });
  }

  @override
  Future<Either<FailureServices, List<BrancheEntity>>> getVendorBranches(
      Map<String, dynamic> queries) {
    return execute(() async {
      final result = await _service.getVendorBranches(bearerToken, queries);
      return List<BrancheEntity>.from(result.data['data']
          .map((e) => BrancheEntity.fromModel(BrancheModel.fromMap(e))));
    });
  }
}
