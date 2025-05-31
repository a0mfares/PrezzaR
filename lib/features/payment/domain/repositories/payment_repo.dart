import 'package:dartz/dartz.dart';
import 'package:prezza/core/service/failure_services.dart';
import 'package:prezza/features/payment/domain/entities/creditcard_entity.dart';
import 'package:prezza/features/payment/domain/entities/vendorcard_entity.dart';

abstract class PaymentRepo {
  Future<Either<FailureServices, VendorCardEntity>> getCardVendor(
      Map<String, dynamic> data);
  Future<Either<FailureServices, void>> addCardVendor(
      Map<String, dynamic> data);
  Future<Either<FailureServices, String>> getAccessToken();

  Future<Either<FailureServices, void>> addCardCustomer(
      Map<String, dynamic> data);
  Future<Either<FailureServices, List<CreditCardEntity>>> getCardCustomer();
  Future<Either<FailureServices, void>> deleteCardCustomer(
      Map<String, dynamic> data);
}
