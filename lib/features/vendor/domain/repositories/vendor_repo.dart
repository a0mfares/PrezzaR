import 'package:dartz/dartz.dart';
import 'package:prezza/core/service/failure_services.dart';
import 'package:prezza/features/location/domain/entities/branche_entity.dart';
import 'package:prezza/features/vendor/domain/entities/vendordetails_entity.dart';
import 'package:prezza/features/vendor/domain/entities/vendoritem_entity.dart';
import 'package:prezza/features/vendor/domain/entities/orderstatuscount_entity.dart';
import 'package:prezza/features/vendor/domain/entities/reviewa_entity.dart';
import 'package:prezza/features/vendor/domain/entities/vendorbalance_entity.dart';

import '../entities/mostordered_entity.dart';
import '../entities/vendordetailsbooking_entity.dart';

abstract class VendorRepo {
  Future<Either<FailureServices, ReviewAEntity>> getReviewAnalysis();
  Future<Either<FailureServices, OrderStatusCountEntity>> getOrderStatusCount();
  Future<Either<FailureServices, VendorBalanceEntity>> getVendorBalance();
  Future<Either<FailureServices, List<MostOrderedEntity>>>
      getMostOrderedProducts();
  Future<Either<FailureServices, List<VendorItemEntity>>> getNearbyPlaces(
      Map<String, dynamic> queries);

  Future<Either<FailureServices, List<VendorItemEntity>>> getVendorsByFilter(
      Map<String, dynamic> queries);
  Future<Either<FailureServices, List<BrancheEntity>>> getVendorBranches(
      Map<String, dynamic> queries);
  Future<Either<FailureServices, List<VendorItemEntity>>> getVendorsByCategory(
      Map<String, dynamic> queries);
  Future<Either<FailureServices, VendorDetailsEntity>> getVendorItemDetails(
      Map<String, dynamic> queries);
  Future<Either<FailureServices, List<VendorItemEntity>>>
      getNearbyPlacesBooking(Map<String, dynamic> queries);

  Future<Either<FailureServices, List<VendorItemEntity>>>
      getVendorsByFilterBooking(Map<String, dynamic> queries);
  Future<Either<FailureServices, List<VendorItemEntity>>>
      getVendorsByCategoryBooking(Map<String, dynamic> queries);
  Future<Either<FailureServices, VendorDetailsBookingEntity>>
      getVendorItemDetailsBooking(Map<String, dynamic> queries);
}
