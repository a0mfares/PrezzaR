import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:prezza/config/custom_colors.dart';
import 'package:prezza/core/helper/tools.dart';
import 'package:prezza/features/cart/presentation/bloc/cart_bloc.dart';
import 'package:prezza/features/order/domain/entities/orderbooking_entity.dart';
import 'package:prezza/features/order/domain/entities/orderdetails_entity.dart';
import 'package:prezza/features/order/domain/entities/orderitem_entity.dart';
import 'package:prezza/features/order/domain/usecases/order_usecase.dart';
import 'package:prezza/features/payment/presentation/bloc/payment_bloc.dart';
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
  AddressEntity selectedAddress = AddressEntity.empty();
  BrancheEntity selectedBranch = BrancheEntity.empty();
  GoogleMapController? mapController;
  Marker? selectedMarker;
  String selectedPayment = '';
  String arrivelTime = '';
  List<OrderUserItemEntity> userOrders = [];
  List<OrderVendorItemEntity> vendorOrders = [];
  List<OrderDetailsEntity> order = [];
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
      this._cancelOrderUsecase,
      this._createOrderInstaceUsecase,
      this._addOrderDetailsUsecase,
      this._getArrivelTimeUsecase,
      this._getUserOrderUsecase)
      : super(const _Initial()) {
    on<OrderEvent>((event, emit) async {
      await event.maybeWhen(
        selectAddress: (address) {
          emit(const OrderState.loading());
          selectedAddress = address;

          emit(const OrderState.success());
        },
        getArrivelTime: () async {
          emit(const OrderState.loading());
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
                arrivelIn = Duration(
                  hours: int.parse(res.split(':')[0]),
                  minutes: int.parse(res.split(':')[1]),
                );
                emit(const OrderState.successUi());
              },
            );
          } catch (e) {
            emit(OrderState.failure(e.toString()));
          }
        },
        selectBranch: (v) {
          emit(const OrderState.loading());
          selectedBranch = v;
          mapController?.animateCamera(
            CameraUpdate.newCameraPosition(
              CameraPosition(
                target: LatLng(
                  v.latitude,
                  v.longitude,
                ),
                zoom: 15,
              ),
            ),
          );
          selectedMarker = Marker(
            markerId: const MarkerId('current'),
            position: LatLng(
              selectedBranch.latitude,
              selectedBranch.longitude,
            ),
          );
          add(const OrderEvent.getArrivelTime());
        },
        selectOrderType: (v) {
          emit(const OrderState.loading());
          selectedType = v;
          if (v == 'delivery') {
            mapController?.animateCamera(
              CameraUpdate.newCameraPosition(
                CameraPosition(
                  target: LatLng(
                    currentLocation.latitude,
                    currentLocation.longitude,
                  ),
                  zoom: 15,
                ),
              ),
            );
            // selectedAddress = AddressEntity(uuid: '', address: currentLocation.locationName, landmark: currentLocation.locationName, title: title)
          }
          selectedMarker = Marker(
            markerId: const MarkerId('current'),
            position: LatLng(
              currentLocation.latitude,
              currentLocation.longitude,
            ),
          );
          emit(const OrderState.success());
        },
        selectSchedule: (date) {
          emit(const OrderState.loading());
          scheduleOrder = date;
          emit(const OrderState.success());
        },
        selectPayment: (uuid) {
          emit(const OrderState.loading());
          selectedPayment = uuid;
          emit(const OrderState.success());
        },
        selectCar: (uuid) {
          emit(const OrderState.loading());
          selectedCar = uuid;
          emit(const OrderState.success());
        },
        addOrderBookingMode: () async {
          if (phoneController.text.isEmpty) {
            emit(const OrderState.openPhoneInput());
            emit(OrderState.failure(tr.phoneRequired));
            return;
          }
          emit(const OrderState.loading());
          try {
            final result = await _addOrderDetailsUsecase(parm: {
              'uuid': instanceId,
              'num_of_seats': '',
              'booking_date': '',
              'branch_id': '',
              'status': 'pending',
              'customer_phone': phoneController.text,
              "order_type": selectedType,
            });
            result.fold(
              (er) {
                emit(OrderState.failure(er.getMsg));
              },
              (res) {
                emit(const OrderState.successOrdered());
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
              'payment_card_uuid': selectedPayment,
              'delivery_address_uuid': selectedAddress.uuid,
              'cart_uuid': CartBloc.get(currentCTX).cartDetails.uuid,
              'customer_phone': phoneController.text,
              'status': 'pending',
              'order_type': selectedType,
            });
            result.fold(
              (er) {
                emit(OrderState.failure(er.getMsg));
              },
              (res) {
                emit(const OrderState.successOrdered());
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
          try {
            final result = await _addOrderDetailsUsecase(parm: {
              'uuid': instanceId,
              'payment_card_uuid': selectedPayment,
              'cart_uuid': CartBloc.get(currentCTX).cartDetails.uuid,
              'customer_phone': phoneController.text,
              'status': 'pending',
              'arrival_time': formatDuration(Duration(
                  hours: arrivelIn.inHours + scheduleOrder.inHours,
                  minutes: arrivelIn.inMinutes + scheduleOrder.inMinutes)),
              'car_uuid': selectedCar,
              'order_type': selectedType,
            });
            result.fold(
              (er) {
                emit(OrderState.failure(er.getMsg));
              },
              (res) {
                arrivelTime = '';
                selectedCar = '';
                phoneController.clear();
                selectedPayment = '';
                instanceId = '';
                emit(const OrderState.successOrdered());
              },
            );
          } catch (e) {
            emit(OrderState.failure(e.toString()));
          }
        },
        createOrderInstace: () async {
          if (selectedType == 'pickup' && scheduleOrder.inMinutes < 4) {
            emit(OrderState.failure(tr.arrivalTimeError));
            return;
          }
          if (selectedType == 'delivery' || selectedType == 'pickup') {
            if (phoneController.text.isEmpty) {
              emit(const OrderState.openPhoneInput());
              emit(OrderState.failure(tr.phoneRequired));
              return;
            }
            if (selectedAddress.uuid.isEmpty && selectedType == 'delivery') {
              emit(OrderState.failure(tr.addressRequired));
              return;
            }
            if (selectedPayment.isEmpty) {
              emit(OrderState.failure(tr.paymentRequired));
              return;
            }
          }
          if (selectedType == 'pickup') {}
          emit(const OrderState.loading());
          try {
            final result = await _createOrderInstaceUsecase(parm: {
              'order_type': selectedType,
              'status': 'pending',
              'business_id': CartBloc.get(currentCTX).businessId,
            });

            await result.fold(
              (er) {
                emit(OrderState.failure(er.getMsg));
              },
              (res) async {
                instanceId = res;
                // emit(const OrderState.());
                final token = await accessToken();
                log(token, name: 'Sadad Access Token');
                if (instanceId.isNotEmpty) {
                  final result = await Navigator.push(ctx, MaterialPageRoute(
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
                          // PaymentType.sadadPay
                        ],
                        image: Image.asset(Assets.assetsImagesLogo),
                        titleText: 'Prezza',
                        paymentButtonColor: Colors.black,
                        paymentButtonTextColor: Colors.white,
                        themeColor: primary,
                      );
                    },
                  ));
                  log("Waiting for payment result...");
                  log(result.toString(), name: 'Payment Result');
                  if (result == null) return;
                  if (result['status'] == success) {
                    if (selectedType == 'delivery') {
                      add(const OrderEvent.addOrderDeliveryMode());
                    }
                    if (selectedType == 'pickup') {
                      add(const OrderEvent.addOrderPickUpMode());
                    }
                  } else if (result['status'] == error) {
                    emit(OrderState.failure(tr.failedTransaction));
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
            (er) {
              emit(OrderState.failure(er.getMsg));
            },
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
            (er) {
              emit(OrderState.failure(er.getMsg));
            },
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
            (er) {
              emit(OrderState.failure(er.getMsg));
            },
            (res) {
              order = res;
              add(OrderEvent.getOrderPickDelivery(id));
            },
          );
        },
        getOrderPickDelivery: (id) async {
          emit(const OrderState.loading());
          final result =
              await _getOrderPickupDeliveryUsecase(parm: {'order_uuid': id});
          result.fold(
            (er) {
              emit(OrderState.failure(er.getMsg));
            },
            (res) {
              if (res is OrderPickupEntity) {
                orderPickup = res;
              }
              if (res is OrderBookingEntity) {
                orderBooking = res;
              }
              if (res is OrderDeliveryEntity) {
                orderDelivery = res;
              }
              emit(const OrderState.success());
            },
          );
        },
        acceptOrder: () async {},
        rejectOrder: () async {},
        cancelOrder: () async {},
        doneOrder: () async {},
        orElse: () {},
      );
    });
  }
}
