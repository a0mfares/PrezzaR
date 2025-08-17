import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:prezza/core/helper/tools.dart';
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

  // State variables
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
    this._getOftenOrderedWithUsecase,
  ) : super(const CartState.initial()) {
    on<_GetUserCart>(_onGetUserCart);
    on<_GetCartDetails>(_onGetCartDetails);
    on<_ClearCart>(_onClearCart);
    on<_GetCartLength>(_onGetCartLength);
    on<_GetPreparingTime>(_onGetPreparingTime);
    on<_AddItemToCart>(_onAddItemToCart);
    on<_RemoveItemFromCart>(_onRemoveItemFromCart);
    on<_UpdateItemQun>(_onUpdateItemQun);
    on<_GetOftenOrderdWith>(_onGetOftenOrderdWith);
    on<_AddOrUpdateCoupon>(_onAddOrUpdateCoupon);
  }

  Future<void> _onGetUserCart(
      _GetUserCart event, Emitter<CartState> emit) async {
    emit(const CartState.loading());

    try {
      final result = await _getCartUsecase();

      result.fold(
        (failure) => emit(CartState.failureGetUserCart(failure.getMsg)),
        (carts) {
          userCart = carts;

          // Only proceed if we have carts
          if (carts.isNotEmpty) {
            cartId = carts[0].uuid;
            emit(const CartState.success());
            // Automatically get cart details after getting user cart
            add(const CartEvent.getCartDetails());
          } else {
            emit(const CartState.success());
          }
        },
      );
    } catch (e) {
      emit(CartState.failure(e.toString()));
    }
  }

  Future<void> _onGetCartDetails(
      _GetCartDetails event, Emitter<CartState> emit) async {
    if (cartId.isEmpty) {
      emit(const CartState.failureGetCartDetails('Cart ID is empty'));
      return;
    }

    emit(const CartState.loading());

    try {
      final result = await _getCartDetailsUsecase(parm: {'uuid': cartId});

      result.fold(
        (failure) => emit(CartState.failureGetCartDetails(failure.getMsg)),
        (details) {
          cartDetails = details;
          cartLength = details.cart_items.length;

          logWithColor('Cart items length: ${cartDetails.cart_items.length}',
              color: "cyan");

          emit(const CartState.success());
          // Automatically get preparing time after getting cart details
          add(const CartEvent.getPreparingTime());
        },
      );
    } catch (e) {
      emit(CartState.failure(e.toString()));
    }
  }

  Future<void> _onClearCart(_ClearCart event, Emitter<CartState> emit) async {
    if (cartId.isEmpty) {
      emit(const CartState.failureClearCart('Cart ID is empty'));
      return;
    }

    emit(const CartState.loading());

    try {
      final result = await _clearCartUsecase(parm: {'uuid': cartId});

      result.fold(
        (failure) => emit(CartState.failureClearCart(failure.getMsg)),
        (success) {
          // Clear local state
          cartDetails = CartDetailsEntity.empty();
          cartLength = 0;
          preparingTime = 0;
          products.clear();

          emit(const CartState.successCleared());
          // Refresh user cart after clearing
          add(const CartEvent.getUserCart());
        },
      );
    } catch (e) {
      emit(CartState.failure(e.toString()));
    }
  }

  Future<void> _onGetCartLength(
      _GetCartLength event, Emitter<CartState> emit) async {
    emit(const CartState.loading());

    try {
      final result = await _getCartUsecase();

      result.fold(
        (failure) => emit(CartState.failure(failure.getMsg)),
        (carts) async {
          userCart = carts;
          int totalLength = 0;

          // Calculate total cart length from all user carts
          for (var cart in carts) {
            try {
              final cartDetailsResult = await _getCartDetailsUsecase(parm: {
                'uuid': cart.uuid,
              });

              cartDetailsResult.fold(
                (failure) {
                  // Log error but continue with other carts
                  logWithColor('Error getting cart details: ${failure.getMsg}',
                      color: "red");
                },
                (details) {
                  totalLength += details.cart_items.length;
                },
              );
            } catch (e) {
              logWithColor('Exception getting cart details: $e', color: "red");
            }
          }

          cartLength = totalLength;
          emit(const CartState.success());
        },
      );
    } catch (e) {
      emit(CartState.failure(e.toString()));
    }
  }

  Future<void> _onGetPreparingTime(
      _GetPreparingTime event, Emitter<CartState> emit) async {
    if (cartId.isEmpty) {
      emit(const CartState.failurePreparingTIme('Cart ID is empty'));
      return;
    }

    emit(const CartState.loading());

    try {
      final result = await _getCartPreparingTimeUsecase(parm: {'uuid': cartId});

      result.fold(
        (failure) => emit(CartState.failurePreparingTIme(failure.getMsg)),
        (time) {
          preparingTime = time;
          emit(const CartState.success());
          // Automatically get often ordered items after getting preparing time
          add(const CartEvent.getOftenOrderdWith());
        },
      );
    } catch (e) {
      emit(CartState.failure(e.toString()));
    }
  }

  Future<void> _onAddItemToCart(
      _AddItemToCart event, Emitter<CartState> emit) async {
    // Validate required parameters
    if (event.item['product_uuid'] == null || event.item['qun'] == null) {
      emit(const CartState.failureAddItem('Missing required parameters'));
      return;
    }

    emit(const CartState.loading());

    try {
      final result = await _addItemToCartUsecase(parm: {
        'product_uuid': event.item['product_uuid'],
        'quantity': event.item['qun'],
        'size_id': event.item['size_id'],
        'extras': event.item['extras'],
        'side_items': event.item['side_items'],
        'special_request': event.item['special_request'],
      });

      result.fold(
        (failure) => emit(CartState.failureAddItem(failure.getMsg)),
        (success) {
          emit(const CartState.successAdded());
          // Refresh user cart after adding item
          add(const CartEvent.getUserCart());
        },
      );
    } catch (e) {
      emit(CartState.failure(e.toString()));
    }
  }

  Future<void> _onRemoveItemFromCart(
      _RemoveItemFromCart event, Emitter<CartState> emit) async {
    if (event.uuid.isEmpty) {
      emit(const CartState.failureRemoveItem('Item UUID is empty'));
      return;
    }

    emit(const CartState.loading());

    try {
      final result =
          await _removeItemFromCartUsecase(parm: {'uuid': event.uuid});

      result.fold(
        (failure) => emit(CartState.failureRemoveItem(failure.getMsg)),
        (success) {
          emit(const CartState.successDeleted());
          // Refresh cart details after removing item
          add(const CartEvent.getCartDetails());
        },
      );
    } catch (e) {
      emit(CartState.failure(e.toString()));
    }
  }

  Future<void> _onUpdateItemQun(
      _UpdateItemQun event, Emitter<CartState> emit) async {
    if (event.itemId.isEmpty || event.operation.isEmpty) {
      emit(const CartState.failureUpdateItem('Missing required parameters'));
      return;
    }

    emit(const CartState.loading());

    try {
      final result = await _updateItemQunUsecase(parm: {
        'uuid': event.itemId,
        'process': event.operation,
      });

      result.fold(
        (failure) => emit(CartState.failureUpdateItem(failure.getMsg)),
        (success) {
          emit(const CartState.successUpdate());
          // Refresh cart details after updating quantity
          add(const CartEvent.getCartDetails());
        },
      );
    } catch (e) {
      emit(CartState.failure(e.toString()));
    }
  }

  Future<void> _onGetOftenOrderdWith(
      _GetOftenOrderdWith event, Emitter<CartState> emit) async {
    if (cartId.isEmpty) {
      emit(const CartState.failureGetOftenProductCart('Cart ID is empty'));
      return;
    }

    emit(const CartState.loading());

    try {
      final result = await _getOftenOrderedWithUsecase(parm: {'uuid': cartId});

      result.fold(
        (failure) => emit(CartState.failureGetOftenProductCart(failure.getMsg)),
        (productList) {
          products = productList;
          emit(const CartState.success());
        },
      );
    } catch (e) {
      emit(CartState.failure(e.toString()));
    }
  }

  Future<void> _onAddOrUpdateCoupon(
      _AddOrUpdateCoupon event, Emitter<CartState> emit) async {
    emit(const CartState.loading());

    try {
      final result = await _addOrUpdateCoponUsecase();

      result.fold(
        (failure) => emit(CartState.failureAddCoupon(failure.getMsg)),
        (success) {
          emit(const CartState.success());
          // Optionally refresh cart details to show updated prices
          add(const CartEvent.getCartDetails());
        },
      );
    } catch (e) {
      emit(CartState.failure(e.toString()));
    }
  }

  // Helper method to reset cart state
  void resetCartState() {
    cartDetails = CartDetailsEntity.empty();
    userCart.clear();
    cartId = '';
    businessId = '';
    products.clear();
    cartItems.clear();
    cartLength = 0;
    preparingTime = 0;
  }

  // Helper method to check if cart is empty
  bool get isCartEmpty => cartLength == 0 || cartDetails.cart_items.isEmpty;

  // Helper method to get total cart value
  num get totalCartValue => cartDetails.cart_total_price;
}
