part of 'order_bloc.dart';

@freezed
class OrderEvent with _$OrderEvent {
  const factory OrderEvent.getOrderByStatus(String status) = _GetOrderByStatus;
  const factory OrderEvent.getUserOrders(String status) = _GetUserOrders;

  const factory OrderEvent.getOrderDetails(String orderId) = _GetOrderDetails;
  const factory OrderEvent.getOrderPickDelivery(String orderId) =
      _GetOrderPickDelivery;
  const factory OrderEvent.createOrderInstace() = _CreateOrderInstace;
  const factory OrderEvent.addOrderPickUpMode() = _AddOrderPickUpMode;
  const factory OrderEvent.addOrderDeliveryMode() = _AddOrderDeliveryMode;
  const factory OrderEvent.addOrderBookingMode() = _AddOrderBookingMode;
  const factory OrderEvent.selectSchedule(Duration date) = _SelectSchedule;
  const factory OrderEvent.selectOrderType(String type) = _SelectOrderType;
  const factory OrderEvent.selectBranch(BrancheEntity branch) = _SelectBranch;
  const factory OrderEvent.selectAddress(AddressEntity address) =
      _SelectAddress;

  const factory OrderEvent.acceptOrder() = _AcceptOrder;
  const factory OrderEvent.rejectOrder() = _RejectOrder;
  const factory OrderEvent.cancelOrder() = _CancelOrder;
  const factory OrderEvent.selectCar(String uuid) = _SelectCar;
  const factory OrderEvent.selectPayment(String uuid) = _SelectPayment;
  const factory OrderEvent.doneOrder() = _doneOrder;
  const factory OrderEvent.getArrivelTime() = _GetArrivelTime;
}
