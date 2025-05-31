part of 'payment_bloc.dart';

@freezed
class PaymentEvent with _$PaymentEvent {
  const factory PaymentEvent.auth() = _Auth;
  const factory PaymentEvent.addVendorCard() = _AddVendorCard;
  const factory PaymentEvent.deleteVendorCard(String id) = _DeleteVendorCard;
  const factory PaymentEvent.updateVendorCard() = _UpdateVendorCard;
  const factory PaymentEvent.getVendorCard() = _GetVendorCard;
  const factory PaymentEvent.addCustomerCard() = _AddCustomerCard;
  const factory PaymentEvent.getCustomerCard() = _GetCustomerCard;
  const factory PaymentEvent.deleteCustomerCard(String id) =
      _DeleteCustomerCard;
  const factory PaymentEvent.initializeEditMode() = _InitializeEditMode;
  const factory PaymentEvent.processToPay() = _ProcessToPay;
  const factory PaymentEvent.getAccessToken() = _GetAccessToken;
}
