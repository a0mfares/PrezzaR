// order_event.dart
part of 'order_bloc.dart';

@freezed
class OrderEvent with _$OrderEvent {
  const factory OrderEvent.selectAddress(AddressEntity address) = _SelectAddress;
  const factory OrderEvent.getArrivelTime() = _GetArrivelTime;
  const factory OrderEvent.selectBranch(BrancheEntity v) = _SelectBranch;
  const factory OrderEvent.selectOrderType(String v) = _SelectOrderType;
  const factory OrderEvent.selectSchedule(Duration date) = _SelectSchedule;
  const factory OrderEvent.selectPaymentMethod(String method) = _SelectPaymentMethod;
  const factory OrderEvent.selectCar(String uuid) = _SelectCar;
  const factory OrderEvent.selectBookingDate(DateTime date) = _SelectBookingDate;
  const factory OrderEvent.selectNumOfSeats(String seats) = _SelectNumOfSeats;
  const factory OrderEvent.addOrderBookingMode() = _AddOrderBookingMode;
  const factory OrderEvent.addOrderDeliveryMode() = _AddOrderDeliveryMode;
  const factory OrderEvent.addOrderPickUpMode() = _AddOrderPickUpMode;
  const factory OrderEvent.createOrderInstace() = _CreateOrderInstace;
  const factory OrderEvent.getOrderByStatus(String status) = _GetOrderByStatus;
  const factory OrderEvent.getUserOrders(String status) = _GetUserOrders;
  const factory OrderEvent.getOrderDetails(String id) = _GetOrderDetails;
  const factory OrderEvent.getOrderPickDelivery(String id) = _GetOrderPickDelivery;
  const factory OrderEvent.acceptOrder(String id, String message) = _AcceptOrder;
  const factory OrderEvent.rejectOrder(String id, String message) = _RejectOrder;
  const factory OrderEvent.cancelOrder(String id) = _CancelOrder;
  const factory OrderEvent.doneOrder(String id) = _DoneOrder;
  const factory OrderEvent.getTrackingDetails(String id) = _GetTrackingDetails;
}