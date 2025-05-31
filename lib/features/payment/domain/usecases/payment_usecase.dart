import 'package:dartz/dartz.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:prezza/core/helper/usecase_helper.dart';
import 'package:prezza/core/service/failure_services.dart';
import 'package:prezza/features/payment/domain/entities/vendorcard_entity.dart';
import 'package:prezza/features/payment/domain/repositories/payment_repo.dart';

import '../entities/creditcard_entity.dart';

class GetVendorCardsUsecase implements UsecaseHelper<VendorCardEntity> {
  final PaymentRepo _repo;

  GetVendorCardsUsecase(this._repo);

  @override
  Future<Either<FailureServices, VendorCardEntity>> call(
      {Map<String, dynamic> parm = const {}}) {
    return _repo.getCardVendor(parm);
  }
}

class GetAccessTokenUsecase implements UsecaseHelper<void> {
  final PaymentRepo _repo;

  GetAccessTokenUsecase(this._repo);

  @override
  Future<Either<FailureServices, void>> call(
      {Map<String, dynamic> parm = const {}}) async {
    const storage = FlutterSecureStorage();
    final result = await _repo.getAccessToken();
    result.fold(
      (err) {},
      (res) {
        storage.write(key: 'sadad-pay', value: res);
      },
    );
    return result;
  }
}

class AddVendorCardUsecase implements UsecaseHelper<void> {
  final PaymentRepo _repo;

  AddVendorCardUsecase(this._repo);

  @override
  Future<Either<FailureServices, void>> call(
      {Map<String, dynamic> parm = const {}}) {
    return _repo.addCardVendor(parm);
  }
}

class DeleteVendorCardUsecase implements UsecaseHelper<void> {
  final PaymentRepo _repo;

  DeleteVendorCardUsecase(this._repo);

  @override
  Future<Either<FailureServices, void>> call(
      {Map<String, dynamic> parm = const {}}) {
    return _repo.deleteCardCustomer(parm);
  }
}

class AddCardCustomerUsecase implements UsecaseHelper<void> {
  final PaymentRepo _repo;

  AddCardCustomerUsecase(this._repo);

  @override
  Future<Either<FailureServices, void>> call(
      {Map<String, dynamic> parm = const {}}) {
    return _repo.addCardCustomer(parm);
  }
}

class DeleteCardCustomerUsecase implements UsecaseHelper<void> {
  final PaymentRepo _repo;

  DeleteCardCustomerUsecase(this._repo);

  @override
  Future<Either<FailureServices, void>> call(
      {Map<String, dynamic> parm = const {}}) {
    return _repo.deleteCardCustomer(parm);
  }
}

class GetCardCustomerUsecase implements UsecaseHelper<List<CreditCardEntity>> {
  final PaymentRepo _repo;

  GetCardCustomerUsecase(this._repo);

  @override
  Future<Either<FailureServices, List<CreditCardEntity>>> call(
      {Map<String, dynamic> parm = const {}}) {
    return _repo.getCardCustomer();
  }
}
