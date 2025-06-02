import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:prezza/core/extension/widget_ext.dart';
import 'package:prezza/features/order/presentation/widgets/order_widget.dart';

import '../../../../config/custom_colors.dart';
import '../../../../core/helper/tools.dart';
import '../../../../core/service/routes.gr.dart';
import '../../../../prezza_page.dart';

@RoutePage()
class OrderPage extends StatefulWidget {
  const OrderPage({super.key, this.isVendor = false});
  final bool isVendor;
  @override
  State<OrderPage> createState() => _OrderPageState();
}

class _OrderPageState extends State<OrderPage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text(tr.orders),
          backgroundColor: floralWhite,
          elevation: 1,
          bottom: TabBar(
            // controller: _controller,
            unselectedLabelColor: primary,
            indicatorColor: primary,
            dividerColor: lightCream,

            labelColor: primary,
            labelStyle: tstyle.bodyLarge!.copyWith(fontWeight: FontWeight.w900),
            unselectedLabelStyle:
                tstyle.bodyLarge!.copyWith(fontWeight: FontWeight.w400),
            tabs: [
              Tab(
                text: isCustomer ? tr.ongoing : tr.runningOrders,
              ),
              Tab(
                text: isCustomer ? tr.history : tr.pendingOrders,
              ),
            ],
          ),
        ).prezzaLeading(canBack: false),
        body: TabBarView(
          children: [
            OrderWidget(
              isVendor: widget.isVendor,
            ),
            OrderWidget(
              isVendor: widget.isVendor,
              isPending: false,
            ),
          ],
        ),
      ),
    );
  }
}
