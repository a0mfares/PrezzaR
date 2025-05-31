import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:prezza/config/custom_colors.dart';
import 'package:prezza/core/constants/assets.dart';
import 'package:prezza/core/extension/widget_ext.dart';
import 'package:prezza/core/helper/tools.dart';
import 'package:prezza/core/service/routes.gr.dart';
import 'package:prezza/prezza_page.dart';

import '../../../../core/shared/widgets/under_montains.dart';
import '../bloc/order_bloc.dart';

@RoutePage()
class OrderDetailsVendorPage extends StatefulWidget {
  const OrderDetailsVendorPage(
      {super.key, required this.id, required this.type});
  final String id;
  final String type;
  @override
  State<OrderDetailsVendorPage> createState() => _OrderDetailsVendorPageState();
}

class _OrderDetailsVendorPageState extends State<OrderDetailsVendorPage> {
  late final OrderBloc bloc;

  @override
  void initState() {
    bloc = OrderBloc.get(context);
    bloc.add(OrderEvent.getOrderDetails(widget.id));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          tr.orderDetails,
        ),
      ).prezzaLeading(),
      body: BlocBuilder<OrderBloc, OrderState>(
        builder: (context, state) {
          return state.maybeWhen(
            success: () {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    tr.orderId(3949.toString()),
                    style: tstyle.headlineSmall,
                  ).margin(margin: const EdgeInsets.symmetric(horizontal: 30)),
                  const Divider(),
                  vSpace(3),
                  Expanded(
                    child: ListView.builder(
                      itemCount: bloc.order.length,
                      itemBuilder: (context, index) {
                        final orderItem = bloc.order[index];
                        return Column(
                          crossAxisAlignment: CrossAxisAlignment
                              .start, // Aligns items to the start
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  orderItem.product_info.name,
                                  style: tstyle.headlineSmall,
                                ),
                                Text(
                                  tr.priceWithCurrency(
                                      orderItem.item_total_price.toString(),
                                      'QAR'),
                                  style: tstyle.headlineSmall,
                                ),
                              ],
                            ),
                            vSpace(3),
                            Visibility(
                              visible: orderItem.side_items.isNotEmpty,
                              child: listtileText(
                                label: '${tr.sideItems}: ',
                                value: orderItem.side_items
                                    .map((e) => e.side_item_name)
                                    .join('\n'),
                              ),
                            ),
                            vSpace(3),
                            Visibility(
                              visible: orderItem.extras.isNotEmpty,
                              child: listtileText(
                                label: '${tr.extras}: ',
                                value: orderItem.extras
                                    .map((e) => e.extra_name)
                                    .join('\n'),
                              ),
                            ),
                            vSpace(3),
                            Visibility(
                              visible: orderItem.size_name.isNotEmpty,
                              child: listtileText(
                                label: '${tr.size}: ',
                                value: orderItem.size_name,
                              ),
                            ),
                            vSpace(3),
                            TextFormField(
                              readOnly: true,
                              // controller: TextEditingController(text: orderItem.),
                              decoration: InputDecoration(
                                hintText: tr.writeHere,
                              ),
                              minLines: 5,
                              maxLines: 5,
                            ).prezaa(
                                label: tr.specialRequest,
                                margin:
                                    const EdgeInsets.symmetric(horizontal: 50)),
                            vSpace(2),
                            const Divider(),
                          ],
                        ).margin(
                            margin: const EdgeInsets.symmetric(horizontal: 29));
                      },
                    ),
                  ),
                  vSpace(3),
                  Text(
                    tr.total(tr.priceWithCurrency(
                        bloc.vendorOrders
                            .firstWhere((e) => e.order_uuid == widget.id)
                            .total_price
                            .toString(),
                        'QAR')),
                    style: tstyle.headlineSmall,
                  ).margin(margin: const EdgeInsets.symmetric(horizontal: 30)),
                  vSpace(3),
                  ListTile(
                    leading: Container(
                        width: 50,
                        height: 50,
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          border: Border.all(color: primary),
                          shape: BoxShape.circle,
                        ),
                        child: SvgPicture.asset(Assets.assetsImagesCar)),
                    title: Text(
                      widget.type == 'delivery'
                          ? bloc.orderDelivery.delivery_address
                          : widget.type == 'booking'
                              ? bloc.orderBooking.arrival_date
                              : bloc.orderPickup.arrival_date,
                    ),
                    subtitle: Text(
                      widget.type == 'delivery' ? tr.address : tr.arrivesIn,
                    ),
                  ),
                  ListTile(
                    leading: Container(
                      width: 50,
                      height: 50,
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        border: Border.all(color: primary),
                        shape: BoxShape.circle,
                      ),
                      child: SvgPicture.asset(
                        widget.type == 'delivery'
                            ? Assets.assetsImagesLocation
                            : Assets.assetsImagesEsitemetedTime,
                      ),
                    ),
                    title: Text(
                      widget.type == 'delivery'
                          ? bloc.orderDelivery.delivery_address
                          : widget.type == 'booking'
                              ? bloc.orderBooking.arrival_date
                              : bloc.orderPickup.arrival_date,
                    ),
                    subtitle: Text(
                      widget.type == 'delivery' ? tr.address : tr.arrivesIn,
                    ),
                  ),
                  ListTile(
                    leading: SvgPicture.asset(
                      Assets.assetsImagesPhoneBorder,
                    ),
                    title: Text(widget.type == 'delivery'
                        ? bloc.orderDelivery.customer_phone
                        : widget.type == 'booking'
                            ? bloc.orderBooking.customer_phone
                            : bloc.orderPickup.customer_phone),
                    subtitle: Text(
                      tr.phone,
                    ),
                  ),
                  vSpace(3),
                  Row(
                    children: [
                      Expanded(
                        child: TextButton(
                          onPressed: () {
                            appRoute.navigate(ReasonRoute(
                                icon: Assets.assetsImagesRejected,
                                title: tr.orderRejected,
                                subTitle: tr.clientReason,
                                onReject: () {},
                                isRejected: true,
                                onSend: () {}));
                          },
                          child: Text(tr.reject),
                        ),
                      ),
                      hSpace(5),
                      Expanded(
                        child: ElevatedButton(
                          onPressed: () {
                            appRoute.navigate(ReasonRoute(
                                icon: Assets.assetsImagesRejected,
                                title: tr.orderAccepted,
                                subTitle: tr.tellClient,
                                onSend: () {}));
                          },
                          child: Text(tr.accept),
                        ),
                      ),
                    ],
                  ).margin(
                      margin: const EdgeInsets.symmetric(
                          horizontal: 50, vertical: 10)),
                  // vSpace(3),
                  OrderDetailsPDB(
                    type: widget.type,
                  )
                ],
              );
            },
            loading: () => defLoadingCenter,
            orElse: () {
              return const UnderMontains();
            },
          );
        },
      ),
    );
  }

  RichText listtileText({required String label, required String value}) {
    return RichText(
      text: TextSpan(
        children: [
          TextSpan(
            text: label,
            style: tstyle.bodyLarge!.copyWith(
              color: Colors.grey,
            ),
          ),
          TextSpan(
            text: value,
            style: tstyle.bodyLarge,
          ),
        ],
      ),
    );
  }
}

class OrderDetailsPDB extends StatelessWidget {
  const OrderDetailsPDB({
    super.key,
    required this.type,
  });
  final String type;
  @override
  Widget build(BuildContext context) {
    final bloc = OrderBloc.get(context);
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      margin: const EdgeInsets.all(20),
      child: Column(
        children: [
          ListTile(
            leading: Container(
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                border: Border.all(color: primary),
                shape: BoxShape.circle,
              ),
              child: SvgPicture.asset(
                Assets.assetsImagesProfileActive,
                width: 100,
              ),
            ),
            title: Text(type == 'delivery'
                ? bloc.orderDelivery.customer_phone
                : type == 'booking'
                    ? bloc.orderBooking.customer_phone
                    : bloc.orderPickup.customer_phone),
            trailing: InkWell(
              onTap: () {
                launchPhoneDialer(
                  type == 'delivery'
                      ? bloc.orderDelivery.customer_phone
                      : type == 'booking'
                          ? bloc.orderBooking.customer_phone
                          : bloc.orderPickup.customer_phone,
                );
              },
              child: CircleAvatar(
                backgroundColor: primary,
                child: SvgPicture.asset(Assets.assetsImagesCalling),
              ),
            ),
          )
        ],
      ).margin(
          margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10)),
    );
  }
}
