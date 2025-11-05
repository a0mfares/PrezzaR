// order_bloc.dart
import 'dart:developer';

import 'package:bot_toast/bot_toast.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:intl/intl.dart';
import 'package:prezza/config/custom_colors.dart';
import 'package:prezza/core/helper/tools.dart';
import 'package:prezza/features/cart/presentation/bloc/cart_bloc.dart';
import 'package:prezza/features/order/domain/entities/order_tracking_details_entity.dart';
import 'package:prezza/features/order/domain/entities/orderbooking_entity.dart';
import 'package:prezza/features/order/domain/entities/orderdetails_entity.dart';
import 'package:prezza/features/order/domain/entities/orderitem_entity.dart';
import 'package:prezza/features/order/domain/usecases/order_usecase.dart';
import 'package:sadad_qa_payments/sadad_qa_payments.dart';

import '../../../../core/constants/assets.dart';
import '../../../../core/constants/keys.dart';
import '../../../location/domain/entities/address_entity.dart';
import '../../../location/domain/entities/branche_entity.dart';
import '../../../location/domain/usecases/location_usecase.dart';
import '../../domain/entities/order_user_entity.dart';
import '../../domain/entities/orderdelivery_entity.dart';
import '../../domain/entities/orderpickup_entity.dart';

part 'order_event.dart';
part 'order_state.dart';
part 'order_bloc.freezed.dart';

class OrderBloc extends Bloc<OrderEvent, OrderState> {
  static OrderBloc get(context) => BlocProvider.of(context);
  final GetVendorOrdersUsecase _getOrdersByStatusUsecase;
  final GetOrderDetailsUsecase _getOrderDetailsUsecase;
  final GetOrderPickupDeliveryUsecase _getOrderPickupDeliveryUsecase;
  final AcceptOrderUsecase _acceptOrderUsecase;
  final RejectOrderUsecase _rejectOrderUsecase;
  final DoneOrderUsecase _doneOrderUsecase;
  final CancelOrderUsecase _cancelOrderUsecase;
  final GetUserOrdersUsecase _getUserOrderUsecase;
  final TrackOrder _getOrderTrackingDetails;
  final CreateOrderInstaceUsecase _createOrderInstaceUsecase;
  final AddOrderDetailsUsecase _addOrderDetailsUsecase;
  final GetArrivelTimeUsecase _getArrivelTimeUsecase;
  final TextEditingController phoneController =
      TextEditingController(text: usr.user.phone);
  Duration scheduleOrder = const Duration();
  Duration arrivelIn = const Duration();
  String instanceId = '';
  String selectedCar = '';
  String selectedType = '';
  String numOfSeats = '';
  DateTime? bookingDate;
  AddressEntity selectedAddress = AddressEntity.empty();
  BrancheEntity selectedBranch = BrancheEntity.empty();
  GoogleMapController? mapController;
  Marker? selectedMarker;
  String selectedPaymentMethod = '';
  Duration arrivelTime = const Duration();
  List<OrderUserItemEntity> userOrders = [];
  List<OrderVendorItemEntity> vendorOrders = [];
  List<OrderDetailsEntity> orders = [];
  OrderDetailsEntity order = OrderDetailsEntity.empty();
  OrderTrackingDetailsEntity orderT = OrderTrackingDetailsEntity.empty();
  OrderDeliveryEntity orderDelivery = OrderDeliveryEntity.empty();
  OrderBookingEntity orderBooking = OrderBookingEntity.empty();
  OrderPickupEntity orderPickup = OrderPickupEntity.empty();

  OrderBloc(
      this._getOrdersByStatusUsecase,
      this._getOrderDetailsUsecase,
      this._getOrderPickupDeliveryUsecase,
      this._acceptOrderUsecase,
      this._rejectOrderUsecase,
      this._doneOrderUsecase,
      this._getOrderTrackingDetails,
      this._cancelOrderUsecase,
      this._createOrderInstaceUsecase,
      this._addOrderDetailsUsecase,
      this._getArrivelTimeUsecase,
      this._getUserOrderUsecase)
      : super(const OrderState.initial()) {
    on<OrderEvent>((event, emit) async {
      log('Event: $event', name: 'OrderBloc');
      await event.maybeWhen(
        selectAddress: (address) {
          selectedAddress = address;
          emit(OrderState.updateUi(DateTime.now().millisecondsSinceEpoch));
        },
        selectBookingDate: (date) {
          bookingDate = date;
          emit(OrderState.updateUi(DateTime.now().millisecondsSinceEpoch));
        },
        selectNumOfSeats: (seats) {
          numOfSeats = seats;
          emit(OrderState.updateUi(DateTime.now().millisecondsSinceEpoch));
        },
        getArrivelTime: () async {
          // Don't emit loading here as it interferes with UI updates
          try {
            final result = await _getArrivelTimeUsecase(
              parm: {
                'origin': '${currentLoc.latitude},${currentLoc.longitude}',
                'destination':
                    '${selectedBranch.latitude},${selectedBranch.longitude}',
                'departure_time': 'now',
                'key': mapApiKeyAndroid,
              },
            );
            result.fold(
              (err) {
                emit(OrderState.failure(err.getMsg));
              },
              (res) {
                arrivelTime = res;
                DateTime temp = DateTime.now().add(arrivelTime);
                String formattedTime = DateFormat.Hm().format(temp);
                arrivelIn = Duration(
                  hours: int.parse(formattedTime.split(':')[0]),
                  minutes: int.parse(formattedTime.split(':')[1]),
                );
                emit(
                    OrderState.updateUi(DateTime.now().millisecondsSinceEpoch));
              },
            );
          } catch (e) {
            emit(OrderState.failure(e.toString()));
          }
        },
        selectBranch: (v) async {
          selectedBranch = v;

          // Immediately update the map marker and camera
          final branchLatLng = LatLng(v.latitude, v.longitude);
          mapController?.animateCamera(
            CameraUpdate.newCameraPosition(
              CameraPosition(target: branchLatLng, zoom: 15),
            ),
          );
          selectedMarker = Marker(
            markerId: const MarkerId('branch'),
            position: branchLatLng,
          );

          // Emit a state to rebuild the UI with the new marker
          emit(OrderState.updateUi(DateTime.now().millisecondsSinceEpoch));

          // Then fetch the arrival time inline instead of adding event
          try {
            final result = await _getArrivelTimeUsecase(
              parm: {
                'origin': '${currentLoc.latitude},${currentLoc.longitude}',
                'destination': '${v.latitude},${v.longitude}',
                'departure_time': 'now',
                'key': mapApiKeyAndroid,
              },
            );
            result.fold(
              (err) {
                emit(OrderState.failure(err.getMsg));
              },
              (res) {
                arrivelTime = res;
                DateTime temp = DateTime.now().add(arrivelTime);
                String formattedTime = DateFormat.Hm().format(temp);
                arrivelIn = Duration(
                  hours: int.parse(formattedTime.split(':')[0]),
                  minutes: int.parse(formattedTime.split(':')[1]),
                );
                emit(
                    OrderState.updateUi(DateTime.now().millisecondsSinceEpoch));
              },
            );
          } catch (e) {
            emit(OrderState.failure(e.toString()));
          }
        },
        selectOrderType: (v) {
          selectedType = v;
          if (v == 'delivery') {
            final userLatLng = LatLng(
              currentLocation.latitude,
              currentLocation.longitude,
            );
            mapController?.animateCamera(
              CameraUpdate.newCameraPosition(
                CameraPosition(target: userLatLng, zoom: 15),
              ),
            );
            selectedMarker = Marker(
              markerId: const MarkerId('user_location'),
              position: userLatLng,
            );
          }
          emit(OrderState.updateUi(DateTime.now().millisecondsSinceEpoch));
        },
        selectSchedule: (date) {
          scheduleOrder = date;
          emit(OrderState.updateUi(DateTime.now().millisecondsSinceEpoch));
        },
        selectPaymentMethod: (method) {
          selectedPaymentMethod = method;
          emit(OrderState.updateUi(DateTime.now().millisecondsSinceEpoch));
        },
        selectCar: (uuid) {
          selectedCar = uuid;
          emit(OrderState.updateUi(DateTime.now().millisecondsSinceEpoch));
        },
        getTrackingDetails: (id) async {
          emit(const OrderState.loading());
          try {
            final result =
                await _getOrderTrackingDetails(parm: {"order_uuid": id});
            result.fold((err) {
              emit(OrderState.failure(err.getMsg));
            }, (res) {
              orderT = res;
              emit(const OrderState.success());
            });
          } catch (e) {
            emit(OrderState.failure(e.toString()));
          }
        },
        addOrderBookingMode: () async {
          if (phoneController.text.isEmpty) {
            emit(const OrderState.openPhoneInput());
            emit(OrderState.failure(tr.phoneRequired));
            return;
          }
          emit(const OrderState.loading());
          try {
            CartBloc.get(currentCTX).add(const CartEvent.getUserCart());
            final result = await _addOrderDetailsUsecase(parm: {
              'uuid': instanceId,
              'num_of_seats': numOfSeats,
              'booking_date': bookingDate != null
                  ? DateFormat('yyyy-MM-dd').format(bookingDate!)
                  : '',
              'branch_uuid': selectedBranch.branch_uuid,
              'status': 'pending',
              'cart_uuid': CartBloc.get(currentCTX).cartDetails.uuid,
              'customer_phone': phoneController.text,
              "order_type": selectedType,
              'payment_method': selectedPaymentMethod,
            });
            result.fold(
              (er) => emit(OrderState.failure(er.getMsg)),
              (res) {
                _resetOrderFields();
                emit(const OrderState.successOrdered());
                CartBloc.get(ctx).add(const CartEvent.closeCart());
              },
            );
          } catch (e) {
            emit(OrderState.failure(e.toString()));
          }
        },
        addOrderDeliveryMode: () async {
          emit(const OrderState.loading());
          try {
            final result = await _addOrderDetailsUsecase(parm: {
              'uuid': instanceId,
              'delivery_address_uuid': selectedAddress.uuid,
              'cart_uuid': CartBloc.get(currentCTX).cartDetails.uuid,
              'customer_phone': phoneController.text,
              'status': 'pending',
              'order_type': selectedType,
              'payment_method': selectedPaymentMethod,
            });
            result.fold(
              (er) => emit(OrderState.failure(er.getMsg)),
              (res) {
                _resetOrderFields();
                emit(const OrderState.successOrdered());
                CartBloc.get(ctx).add(const CartEvent.closeCart());
              },
            );
          } catch (e) {
            emit(OrderState.failure(e.toString()));
          }
        },
        addOrderPickUpMode: () async {
          if (phoneController.text.isEmpty) {
            emit(const OrderState.openPhoneInput());
            emit(OrderState.failure(tr.phoneRequired));
            return;
          }
          emit(const OrderState.loading());
          log(calculateArrivalTime(arrivelTime, scheduleOrder),
              name: "calculateArrivalTime");
          try {
            final result = await _addOrderDetailsUsecase(parm: {
              'uuid': instanceId,
              'cart_uuid': CartBloc.get(currentCTX).cartDetails.uuid,
              'customer_phone': phoneController.text,
              'status': 'pending',
              'arrival_time': calculateArrivalTime(arrivelTime, scheduleOrder),
              'car_uuid': selectedCar,
              'order_type': selectedType,
              'payment_method': selectedPaymentMethod,
            });
            result.fold(
              (er) => emit(OrderState.failure(er.getMsg)),
              (res) {
                _resetOrderFields();
                emit(const OrderState.successOrdered());
                CartBloc.get(ctx).add(const CartEvent.closeCart());
              },
            );
          } catch (e) {
            emit(OrderState.failure(e.toString()));
          }
        },
        createOrderInstace: () async {
          // --- Validation ---
          if (selectedType.isEmpty) {
            emit(OrderState.failure(tr.selectOrderType));
            return;
          }
          if (selectedPaymentMethod.isEmpty) {
            emit(OrderState.failure(tr.paymentRequired));
            return;
          }
          if (phoneController.text.isEmpty) {
            emit(const OrderState.openPhoneInput());
            emit(OrderState.failure(tr.phoneRequired));
            return;
          }

          // Booking-specific validation
          if (selectedType == 'booking') {
            if (numOfSeats.isEmpty) {
              emit(OrderState.failure(tr.numberOfSeatsRequired));
              return;
            }
            if (bookingDate == null) {
              emit(OrderState.failure(tr.bookingDateRequired));
              return;
            }
            if (selectedBranch.branch_uuid.isEmpty) {
              emit(OrderState.failure(tr.selectBranch));
              return;
            }
          }

          if (selectedType == 'delivery' && selectedAddress.uuid.isEmpty) {
            emit(OrderState.failure(tr.addressRequired));
            return;
          }
          if (selectedType == 'pickup' && scheduleOrder.inMinutes < 4) {
            emit(OrderState.failure(tr.arrivalTimeError));
            return;
          }

          emit(const OrderState.loading());
          try {
            final result = await _createOrderInstaceUsecase(parm: {
              'order_type': selectedType,
              'status': 'pending',
              'business_id': CartBloc.get(currentCTX).businessId,
            });

            result.fold(
              (er) => emit(OrderState.failure(er.getMsg)),
              (res) async {
                instanceId = res;

                // --- Payment Flow ---
                if (selectedPaymentMethod == 'cod') {
                  // If Cash on Delivery, directly add order details
                  if (selectedType == 'delivery') {
                    add(const OrderEvent.addOrderDeliveryMode());
                  } else if (selectedType == 'pickup') {
                    add(const OrderEvent.addOrderPickUpMode());
                  } else if (selectedType == 'booking') {
                    add(const OrderEvent.addOrderBookingMode());
                  }
                  return;
                }

                // --- Credit Card Flow ---
                final token = await accessToken();
                log(token, name: 'Sadad Access Token');
                if (instanceId.isNotEmpty) {
                  final paymentResult = await Navigator.push(
                    ctx,
                    MaterialPageRoute(
                      builder: (context) {
                        return PaymentScreen(
                          orderId: res,
                          googleMerchantID: 'BCR2DN7T5D3MBXIM',
                          googleMerchantName: 'Prezza',
                          productDetail: CartBloc.get(ctx)
                              .cartDetails
                              .cart_items
                              .map((e) => e.toMap())
                              .toList(),
                          customerName: usr.user.username,
                          amount: CartBloc.get(ctx)
                              .cartDetails
                              .cart_total_price
                              .toDouble(),
                          email: usr.user.email,
                          mobile: phoneController.text,
                          token: token,
                          packageMode: PackageMode.release,
                          isWalletEnabled: false,
                          paymentTypes: const [
                            PaymentType.creditCard,
                            PaymentType.debitCard,
                          ],
                          image: Image.asset(Assets.assetsImagesLogo),
                          titleText: 'Prezza',
                          paymentButtonColor: Colors.black,
                          paymentButtonTextColor: Colors.white,
                          themeColor: primary,
                        );
                      },
                    ),
                  );

                  log("Payment Result: $paymentResult", name: 'Payment Result');
                  if (paymentResult == null ||
                      paymentResult['status'] != success) {
                    emit(OrderState.failure(tr.failedTransaction));
                    return;
                  }

                  // If payment was successful, add order details
                  if (selectedType == 'delivery') {
                    add(const OrderEvent.addOrderDeliveryMode());
                  } else if (selectedType == 'pickup') {
                    add(const OrderEvent.addOrderPickUpMode());
                  } else if (selectedType == 'booking') {
                    add(const OrderEvent.addOrderBookingMode());
                  }
                }
              },
            );
          } catch (e) {
            emit(OrderState.failure(e.toString()));
          }
        },
        getOrderByStatus: (status) async {
          emit(const OrderState.loading());
          final result =
              await _getOrdersByStatusUsecase(parm: {'status': status});
          result.fold(
            (er) => emit(OrderState.failure(er.getMsg)),
            (res) {
              vendorOrders = res;
              emit(const OrderState.success());
            },
          );
        },
        getUserOrders: (status) async {
          emit(const OrderState.loading());
          final result = await _getUserOrderUsecase(parm: {'status': status});
          result.fold(
            (er) => emit(OrderState.failure(er.getMsg)),
            (res) {
              userOrders = res;
              emit(const OrderState.success());
            },
          );
        },
        getOrderDetails: (id) async {
          emit(const OrderState.loading());
          final result =
              await _getOrderDetailsUsecase(parm: {'order_uuid': id});
          result.fold(
            (er) => emit(OrderState.failure(er.getMsg)),
            (res) {
              orders = res;
              add(OrderEvent.getOrderPickDelivery(id));
            },
          );
        },
        getOrderPickDelivery: (id) async {
          emit(const OrderState.loading());
          final result =
              await _getOrderPickupDeliveryUsecase(parm: {'order_uuid': id});
          result.fold(
            (er) => emit(OrderState.failure(er.getMsg)),
            (res) {
              if (res is OrderPickupEntity) orderPickup = res;
              if (res is OrderBookingEntity) orderBooking = res;
              if (res is OrderDeliveryEntity) orderDelivery = res;
              emit(const OrderState.successOrderDetails());
            },
          );
        },
        acceptOrder: (id, message) async {
          emit(const OrderState.loading());
          final result = await _acceptOrderUsecase(
              parm: {'order_uuid': id, 'message': message});
          result.fold((er) {
            emit(OrderState.failure(er.getMsg));
          }, (res) {
            BotToast.showText(text: tr.orderAccepted);
            emit(const OrderState.success());
          });
        },
        rejectOrder: (id, message) async {
          emit(const OrderState.loading());
          final result = await _rejectOrderUsecase(
              parm: {'order_uuid': id, 'message': message});
          result.fold((er) {
            emit(OrderState.failure(er.getMsg));
          }, (res) {
            BotToast.showText(text: tr.orderRejected);
            emit(const OrderState.success());
          });
        },
        cancelOrder: (id) async {
          emit(const OrderState.loading());
          final result = await _cancelOrderUsecase(parm: {'order_uuid': id});
          result.fold((er) {
            emit(OrderState.failure(er.getMsg));
          }, (res) {
            BotToast.showText(text: "Order Canceled");
            emit(const OrderState.success());
          });
        },
        doneOrder: (id) async {
          emit(const OrderState.loading());
          final result = await _doneOrderUsecase(parm: {'order_uuid': id});
          result.fold((er) {
            emit(OrderState.failure(er.getMsg));
          }, (res) {
            BotToast.showText(text: tr.orderOutForDelivery);
            emit(const OrderState.success());
            add(OrderEvent.getUserOrders(isCustomer
                ? tr.ongoing.toLowerCase()
                : tr.runningOrders.toLowerCase()));
          });
        },
        orElse: () {},
      );
      log('State: $state', name: 'OrderBloc');
    });
  }

  void _resetOrderFields() {
    arrivelTime = const Duration();
    selectedCar = '';
    phoneController.clear();
    selectedPaymentMethod = '';
    instanceId = '';
    numOfSeats = '';
    bookingDate = null;
    selectedBranch = BrancheEntity.empty();
    scheduleOrder = const Duration();
  }
}