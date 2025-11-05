part of 'cart_bloc.dart';

@freezed
class CartState with _$CartState {
  const factory CartState.initial() = _Initial;
  const factory CartState.loading() = _Loading;
  const factory CartState.success() = _Success;
  const factory CartState.successAdded() = _SuccessAdded;
  const factory CartState.successDeleted() = _SuccessDeleted;
  const factory CartState.successCleared() = _SuccessCleared;
  const factory CartState.successUpdate() = _SuccessUpdate;

  const factory CartState.failure(String err) = _Failure;
  const factory CartState.failureGetUserCart(String err) = _FailureGetUserCart;
  const factory CartState.failureGetCartDetails(String err) =
      _FailureGetCartDetails;
  const factory CartState.failureGetOftenProductCart(String err) =
      _FailureGetOftenProductCart;
  const factory CartState.failureClearCart(String err) = _FailureClearCart;
  const factory CartState.failureRemoveItem(String err) = _FailureRemoveItem;
  const factory CartState.failureUpdateItem(String err) = _FailureUpdateItem;
  const factory CartState.failureAddCoupon(String err) = _FailureAddCoupon;
  const factory CartState.failureAddItem(String err) = _FailureAddItem;
  const factory CartState.failurePreparingTIme(String err) =
      _FailurePreparingTIme;
}
