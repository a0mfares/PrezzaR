import 'dart:async';
import 'dart:developer';

import 'package:bot_toast/bot_toast.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:local_auth/local_auth.dart';
import 'package:prezza/core/helper/tools.dart';
import 'package:prezza/core/service/hive_storage.dart';
import 'package:prezza/features/payment/domain/entities/creditcard_entity.dart';
import 'package:prezza/features/payment/domain/usecases/payment_usecase.dart';
import 'package:sadadpay_flutter/config/env.dart';
import 'package:sadadpay_flutter/sadadpay.dart';

import '../../../../generated/l10n.dart';
import '../../../cart/presentation/bloc/cart_bloc.dart';
import '../../domain/entities/vendorcard_entity.dart';

part 'payment_event.dart';
part 'payment_state.dart';
part 'payment_bloc.freezed.dart';

class PaymentBloc extends Bloc<PaymentEvent, PaymentState> {
  final GetVendorCardsUsecase _getCreditCardsUsecase;
  final AddVendorCardUsecase _addCreditCardUsecase;
  final DeleteVendorCardUsecase _deleteVendorCard;
  final AddCardCustomerUsecase _addCardCustomerUsecase;
  final DeleteCardCustomerUsecase _deleteCardCustomerUsecase;
  final GetCardCustomerUsecase _getCardCustomerUsecase;
  final GetAccessTokenUsecase _getAccessTokenUsecase;
  SadadPay sadadPay = SadadPay(env: Environment.dev);
  bool isAuthenticated = false;
  String invoiceKey = '';
  static PaymentBloc get(context) => BlocProvider.of(context);
  final TextEditingController cardNumber = TextEditingController();
  final TextEditingController bankName = TextEditingController();
  final TextEditingController password = TextEditingController();
  final TextEditingController holderName = TextEditingController();
  final TextEditingController expirDate = TextEditingController();
  final TextEditingController cvv = TextEditingController();
  final LocalAuthentication _localAuth = LocalAuthentication();
  VendorCardEntity vendorCard = VendorCardEntity(
      bank_name: '', card_holder_name: '', card_last_four_digits: '');
  final GlobalKey<FormState> formCard = GlobalKey();
  List<CreditCardEntity> customerCard = [];
  PaymentBloc(
      this._getCreditCardsUsecase,
      this._addCreditCardUsecase,
      this._deleteVendorCard,
      this._addCardCustomerUsecase,
      this._deleteCardCustomerUsecase,
      this._getCardCustomerUsecase,
      this._getAccessTokenUsecase)
      : super(const _Initial()) {
    on<PaymentEvent>((event, emit) async {
      await event.maybeWhen(
        getCustomerCard: () async {
          emit(const PaymentState.loading());

          try {
            final result = await _getCardCustomerUsecase(
              parm: {
                'password': HiveStorage.get<String?>(kPass) ?? password.text,
              },
            );

            result.fold(
              (err) {
                emit(PaymentState.failure(err.getMsg));
              },
              (res) {
                customerCard = res;
                emit(const PaymentState.success());
              },
            );
          } catch (e) {
            emit(const PaymentState.loading());
          }
        },
        deleteCustomerCard: (id) async {
          emit(const PaymentState.loading());

          try {
            final result = await _deleteCardCustomerUsecase(parm: {'uuid': id});

            result.fold(
              (err) {
                emit(PaymentState.failure(err.getMsg));
              },
              (res) {
                emit(const PaymentState.successDeleted());
                add(const PaymentEvent.getCustomerCard());
              },
            );
          } catch (e) {
            emit(const PaymentState.loading());
          }
        },
        deleteVendorCard: (id) async {
          emit(const PaymentState.loading());

          try {
            final result = await _deleteVendorCard(parm: {'uuid': id});

            result.fold(
              (err) {
                emit(PaymentState.failure(err.getMsg));
              },
              (res) {
                emit(const PaymentState.successDeleted());
                add(const PaymentEvent.getCustomerCard());
              },
            );
          } catch (e) {
            emit(const PaymentState.loading());
          }
        },
        addCustomerCard: () async {
          if (!formCard.currentState!.validate()) {
            emit(PaymentState.failure(tr.enterValideCard));
            return;
          }
          emit(const PaymentState.loading());
          try {
            final result = await _addCardCustomerUsecase(parm: {
              'card_holder_name': holderName.text,
              'card_number': cardNumber.text,
              'expiry_month': expirDate.text.split('/').first,
              'expiry_year': expirDate.text.split('/').last,
              'cvv': cvv.text,
            });

            result.fold(
              (err) {
                emit(PaymentState.failure(err.getMsg));
              },
              (res) {
                holderName.clear();
                cardNumber.clear();
                expirDate.clear();
                cvv.clear();
                bankName.clear();

                emit(const PaymentState.successAdded());
                add(const PaymentEvent.getCustomerCard());
              },
            );
          } catch (e) {
            emit(const PaymentState.loading());
          }
        },
        getVendorCard: () async {
          emit(const PaymentState.loading());

          try {
            final result = await _getCreditCardsUsecase(
              parm: {
                'password': HiveStorage.get<String?>(kPass) ?? password.text,
              },
            );

            result.fold(
              (err) {
                emit(PaymentState.failure(err.getMsg));
              },
              (res) {
                vendorCard = res;
                password.clear();
                emit(const PaymentState.success());
              },
            );
          } catch (e) {
            emit(PaymentState.failure(e.toString()));
          }
        },
        auth: () async {
          try {
            bool canCheckBiometrics = await _localAuth.canCheckBiometrics;
            if (canCheckBiometrics) {
              isAuthenticated = await _localAuth.authenticate(
                localizedReason: tr.plsAuth,
                options: const AuthenticationOptions(
                  biometricOnly: false,
                  sensitiveTransaction: true,
                  useErrorDialogs: true,
                ),
              );
            }
          } catch (e) {
            log('Error during authentication: $e', name: "Payment Bloc");
          }

          if (isAuthenticated) {
            final savedPassword = HiveStorage.get<String?>(kPass);
            final enteredPassword = password.text.trim();

            if (savedPassword == null && enteredPassword.isNotEmpty) {
              HiveStorage.set<String>(kPass, enteredPassword);
            }

            if ((savedPassword ?? enteredPassword).isEmpty) {
              BotToast.showText(text: "Please Enter Password First");
              return;
            }

            // 🔒 Proceed with request
            add(const PaymentEvent.getVendorCard());
          }
        },
        addVendorCard: () async {
          emit(const PaymentState.loading());

          try {
            final result = await _addCreditCardUsecase(parm: {
              'user_uuid': usr.user.uuid,
              'bank_name': bankName.text,
              'card_holder_name': holderName.text,
              'card_number': cardNumber.text.trim(),
            });

            result.fold(
              (err) {
                emit(PaymentState.failure(err.getMsg));
              },
              (res) {
                holderName.clear();
                cardNumber.clear();
                bankName.clear();
                emit(const PaymentState.successAdded());
                add(const PaymentEvent.getVendorCard());
              },
            );
          } catch (e) {
            emit(const PaymentState.loading());
          }
        },
        processToPay: () async {},
        getAccessToken: () async {
          emit(const PaymentState.loading());
          try {
            final result = await _getAccessTokenUsecase();
            result.fold(
              (err) {
                emit(PaymentState.failure(err.getMsg));
              },
              (res) {
                emit(const PaymentState.success());
              },
            );
          } catch (e) {
            emit(const PaymentState.loading());
          }
        },
        orElse: () {},
      );
    });
  }

  FutureOr getCreditCardsEvent(emit) async {}

  FutureOr addCreditCardEvent(Emitter<PaymentState> emit) async {}
}
