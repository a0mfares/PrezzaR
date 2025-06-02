import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:prezza/features/cart/domain/entities/cartdetails_entity.dart';
import 'package:prezza/features/cart/domain/entities/usercart_entity.dart';
import 'package:prezza/features/cart/domain/usecases/cart_usecase.dart';

import '../../domain/entities/productoftencart_entity.dart';

part 'cart_event.dart';
part 'cart_state.dart';
part 'cart_bloc.freezed.dart';

class CartBloc extends Bloc<CartEvent, CartState> {
  static CartBloc get(context) => BlocProvider.of(context);
  final GetCartUsecase _getCartUsecase;
  final GetCartDetailsUsecase _getCartDetailsUsecase;
  final ClearCartUsecase _clearCartUsecase;
  final GetCartPreparingTimeUsecase _getCartPreparingTimeUsecase;
  final AddItemToCartUsecase _addItemToCartUsecase;
  final RemoveItemFromCartUsecase _removeItemFromCartUsecase;
  final UpdateItemQunUsecase _updateItemQunUsecase;
  final AddOrUpdateCouponUsecase _addOrUpdateCoponUsecase;
  final GetOftenOrderedWithUsecase _getOftenOrderedWithUsecase;
  CartDetailsEntity cartDetails = CartDetailsEntity.empty();
  List<UserCartEntity> userCart = [];
  String cartId = '';
  String businessId = '';
  List<ProductOftenCartEntity> products = [];
  List<Map<String, dynamic>> cartItems = [];
  int cartLength = 0;
  num preparingTime = 0;
  CartBloc(
      this._getCartUsecase,
      this._getCartDetailsUsecase,
      this._clearCartUsecase,
      this._getCartPreparingTimeUsecase,
      this._addItemToCartUsecase,
      this._removeItemFromCartUsecase,
      this._updateItemQunUsecase,
      this._addOrUpdateCoponUsecase,
      this._getOftenOrderedWithUsecase)
      : super(const _Initial()) {
    on<CartEvent>((event, emit) async {
      await event.maybeWhen(
        getCartLength: () async {
          // emit(const _Loading());
          // try {
          //   final result = await _getCartUsecase();
          //   result.fold(
          //     (l) => emit(_Failure(l.getMsg)),
          //     (r) async {
          //       userCart = r;
          //       for (var item in r) {
          //         try {
          //           final result = await _getCartDetailsUsecase(parm: {
          //             'uuid': item.uuid,
          //           });
          //           result.fold(
          //             (l) => emit(_Failure(l.getMsg)),
          //             (r) {
          //               cartLength += r.cart_items.length;
          //             },
          //           );
          //         } catch (e) {
          //           emit(_Failure(e.toString()));
          //         }
          //         emit(const CartState.success());
          //       }
          //     },
          //   );
          // } catch (e) {
          //   emit(_Failure(e.toString()));
          // }
        },
        getOftenOrderdWith: () async {
          emit(const _Loading());
          try {
            final result = await _getOftenOrderedWithUsecase(parm: {
              'uuid': cartId,
            });
            result.fold(
              (l) => emit(_FailureGetOftenProductCart(l.getMsg)),
              (r) {
                products = r;
                emit(const CartState.success());
              },
            );
          } catch (e) {
            emit(_Failure(e.toString()));
          }
        },
        getUserCart: () async {
          emit(const _Loading());
          try {
            final result = await _getCartUsecase();
            result.fold(
              (l) => emit(_FailureGetUserCart(l.getMsg)),
              (r) {
                userCart = r;
                emit(const CartState.success());
                // add(const CartEvent.getCartDetails());
              },
            );
          } catch (e) {
            emit(_Failure(e.toString()));
          }
        },
        getCartDetails: () async {
          emit(const _Loading());
          try {
            final result = await _getCartDetailsUsecase(parm: {
              'uuid': cartId,
            });
            result.fold(
              (l) => emit(_FailureGetCartDetails(l.getMsg)),
              (r) {
                cartDetails = r;
                add(const CartEvent.getPreparingTime());
              },
            );
          } catch (e) {
            emit(_Failure(e.toString()));
          }
        },
        clearCart: () async {
          emit(const _Loading());
          try {
            final result = await _clearCartUsecase(parm: {
              'uuid': cartId,
            });
            result.fold(
              (l) => emit(_FailureClearCart(l.getMsg)),
              (r) {
                add(const CartEvent.getUserCart());
              },
            );
          } catch (e) {
            emit(_Failure(e.toString()));
          }
        },
        getPreparingTime: () async {
          emit(const _Loading());
          try {
            final result = await _getCartPreparingTimeUsecase(parm: {
              'uuid': cartId,
            });
            result.fold(
              (l) => emit(_FailurePreparingTIme(l.getMsg)),
              (r) {
                preparingTime = r;
                add(const CartEvent.getOftenOrderdWith());
              },
            );
          } catch (e) {
            emit(_Failure(e.toString()));
          }
        },
        addItemToCart: (item) async {
          emit(const _Loading());

          try {
            final result = await _addItemToCartUsecase(parm: {
              'product_uuid': item['product_uuid'],
              'quantity': item['qun'],
              'size_id': item['size_id'],
              'extras': item['extras'],
              'side_items': item['side_items'],
              'special_request': item['special_request'],
            });
            result.fold(
              (l) => emit(_FailureAddItem(l.getMsg)),
              (r) {
                emit(const CartState.successAdded());
                add(const CartEvent.getUserCart());
              },
            );
          } catch (e) {
            emit(_Failure(e.toString()));
          }
        },
        removeItemFromCart: (uuid) async {
          emit(const _Loading());
          try {
            final result = await _removeItemFromCartUsecase(parm: {
              'uuid': uuid,
            });
            result.fold(
              (l) => emit(_FailureRemoveItem(l.getMsg)),
              (r) {
                add(const CartEvent.getCartDetails());
              },
            );
          } catch (e) {
            emit(_Failure(e.toString()));
          }
        },
        updateItemQun: (itemId, operation) async {
          emit(const _Loading());
          try {
            final result = await _updateItemQunUsecase(parm: {
              'uuid': itemId,
              'process': operation,
            });
            result.fold(
              (l) => emit(_FailureUpdateItem(l.getMsg)),
              (r) {
                add(const CartEvent.getCartDetails());
              },
            );
          } catch (e) {
            emit(_Failure(e.toString()));
          }
        },
        addOrUpdateCoupon: () async {
          emit(const _Loading());
          try {
            final result = await _addOrUpdateCoponUsecase();
            result.fold(
              (l) => emit(_FailureAddCoupon(l.getMsg)),
              (r) => emit(const _Success()),
            );
          } catch (e) {
            emit(_Failure(e.toString()));
          }
        },
        orElse: () {},
      );
    });
  }
}
