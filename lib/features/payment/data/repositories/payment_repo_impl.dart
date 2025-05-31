import 'package:dartz/dartz.dart';
import 'package:prezza/core/helper/network.dart';
import 'package:prezza/core/helper/tools.dart';
import 'package:prezza/core/service/failure_services.dart';
import 'package:prezza/features/payment/data/datasources/payment_service.dart';
import 'package:prezza/features/payment/data/models/creditcard_model.dart';
import 'package:prezza/features/payment/data/models/vendorcard_model.dart';
import 'package:prezza/features/payment/domain/entities/creditcard_entity.dart';
import 'package:prezza/features/payment/domain/repositories/payment_repo.dart';

import '../../domain/entities/vendorcard_entity.dart';

class PaymentRepoImpl implements PaymentRepo {
  final PaymentService _service;

  PaymentRepoImpl(this._service);

  @override
  Future<Either<FailureServices, void>> addCardCustomer(
      Map<String, dynamic> data) async {
    return execute(() => _service.addCustomerCard(bearerToken, data));
  }

  @override
  Future<Either<FailureServices, List<CreditCardEntity>>> getCardCustomer() {
    return execute(() async {
      final result = await _service.getCustomerCard(bearerToken);
      return List<CreditCardEntity>.from(
          result.data['data'].map((e) => CreditCardModel.fromMap(e)));
    });
  }

  @override
  Future<Either<FailureServices, void>> addCardVendor(
      Map<String, dynamic> data) {
    return execute(() => _service.addBankCard(data));
  }

  @override
  Future<Either<FailureServices, void>> deleteCardCustomer(
      Map<String, dynamic> data) {
    return execute(() => _service.deleteCustomerCard(bearerToken, data));
  }

  @override
  Future<Either<FailureServices, VendorCardEntity>> getCardVendor(
      Map<String, dynamic> data) async {
    return execute(() async {
      final result = await _service.getPaymentCards(bearerToken, data);
      return VendorCardEntity.fromModel(
          VendorCardModel.fromMap(result.data['data']));
    });
  }

  @override
  Future<Either<FailureServices, String>> getAccessToken() {
    return execute(
        () async => (await _service.getAccessToken()).data['accessToken']);
  }
}
