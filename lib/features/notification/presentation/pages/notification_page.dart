import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:prezza/config/custom_colors.dart';
import 'package:prezza/core/extension/widget_ext.dart';
import 'package:prezza/core/helper/tools.dart';

@RoutePage()
class NotificationPage extends StatefulWidget {
  const NotificationPage({super.key});

  @override
  State<NotificationPage> createState() => _NotificationPageState();
}

class _NotificationPageState extends State<NotificationPage>
    with TickerProviderStateMixin {
  late final TabController _controller; 
  @override
  void initState() {
    _controller = TabController(length: 3, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text(tr.notifications),
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
                text: tr.allNotifications,
              ),
              Tab(
                text: tr.orders,
              ),
              Tab(
                text: tr.feed,
              ),
            ],
          ),
        ).prezzaLeading(),
        body: const TabBarView(
          children: [
            Icon(Icons.directions_car),
            Icon(Icons.directions_transit),
            Icon(Icons.directions_bike),
          ],
        ),
      ),
    );
  }
}
