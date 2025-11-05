part of 'cart_bloc.dart';

@freezed
class CartEvent with _$CartEvent {
  const factory CartEvent.getUserCart() = _GetUserCart;
  const factory CartEvent.getCartDetails() = _GetCartDetails;
  const factory CartEvent.clearCart() = _ClearCart;
  const factory CartEvent.getCartLength() = _GetCartLength;

  const factory CartEvent.getPreparingTime() = _GetPreparingTime;
  const factory CartEvent.addItemToCart(Map<String, dynamic> item) =
      _AddItemToCart;
  const factory CartEvent.removeItemFromCart(String uuid) =
      _RemoveItemFromCart;
  const factory CartEvent.updateItemQun(
    String itemId,
    String operation,
  ) = _UpdateItemQun;
  const factory CartEvent.getOftenOrderdWith() = _GetOftenOrderdWith;

  const factory CartEvent.addOrUpdateCoupon() = _AddOrUpdateCoupon;
  const factory CartEvent.closeCart() = _CloseCart;
}
