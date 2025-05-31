import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:prezza/core/extension/widget_ext.dart';
import 'package:prezza/core/helper/tools.dart';
import 'package:prezza/features/order/presentation/bloc/order_bloc.dart';

import '../../../../config/custom_colors.dart';
import '../../../../core/constants/assets.dart';

@RoutePage()
class OrderDetailsPage extends StatefulWidget {
  const OrderDetailsPage({super.key, required this.orderId});
  final String orderId;
  @override
  State<OrderDetailsPage> createState() => _OrderDetailsPageState();
}

class _OrderDetailsPageState extends State<OrderDetailsPage> {
  late final OrderBloc bloc;

  int activeStep = 0;

  @override
  void initState() {
    bloc = OrderBloc.get(context);
    bloc.add(OrderEvent.getOrderDetails(widget.orderId));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(tr.orders),
      ).prezzaLeading(),
      body: Column(
        children: [
          vSpace(5),
          const Divider(),
          vSpace(2),
          ListTile(
            leading: Image.asset(
              Assets.assetsImagesIconTest,
              width: 100,
            ),
            title: const Text('product name'),
            subtitle: Text(tr.total(tr.priceWithCurrency(bloc.order.toString(), 'QAR'))),
            trailing: Text(
              '#${93104910}',
              style: tstyle.bodyLarge!.copyWith(
                color: lightCoral,
              ),
            ),
          ),
          vSpace(3),
          Container(
            height: 50,
            margin: const EdgeInsets.symmetric(horizontal: 20),
            child: ListView.builder(
              itemCount: 2,
              itemBuilder: (context, index) {
                return Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text('product name'),
                    Text(tr.priceWithCurrency(20.toString(), 'QAR'))
                  ],
                );
              },
            ),
          ),
          vSpace(5),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              buildStep(
                isActive: true,
                isCompleted: true,
                text: "Your order has been received",
              ),
              buildDivider(isActive: true),
              buildStep(
                isActive: true,
                isCompleted: false,
                text: "[Restaurant] is preparing your order",
              ),
              buildDivider(isActive: false),
              buildStep(
                isActive: false,
                isCompleted: false,
                text: "Your order is ready for pick up",
              ),
            ],
          ).margin(margin: const EdgeInsets.symmetric(horizontal: 20)),
        ],
      ),
    );
  }

  Widget buildStep({
    required bool isActive,
    required bool isCompleted,
    required String text,
  }) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        // Step circle
        Container(
          width: 20,
          height: 20,
          decoration: BoxDecoration(
            color: isCompleted ? primary : (isActive ? primary : lightCream),
            shape: BoxShape.circle,
          ),
        ),
        const SizedBox(width: 12),
        // Step text
        Expanded(
          child: Text(
            text,
            style: TextStyle(
              color: isCompleted || isActive ? Colors.black : Colors.grey,
              fontSize: 16,
              fontWeight: isCompleted ? FontWeight.bold : FontWeight.normal,
            ),
          ),
        ),
      ],
    );
  }

  Widget buildDivider({required bool isActive}) {
    return Padding(
      padding: const EdgeInsets.only(left: 8.5),
      child: Container(
        height: 40,
        width: 2,
        color: isActive ? primary : lightCream,
      ),
    );
  }
}
