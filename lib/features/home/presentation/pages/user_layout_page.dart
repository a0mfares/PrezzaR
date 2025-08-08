import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:prezza/config/custom_colors.dart';
import 'package:prezza/core/service/routes.gr.dart';
import 'package:prezza/features/newsfeed/presentation/bloc/newsfeed_bloc.dart';
import 'package:prezza/features/newsfeed/presentation/pages/social_page.dart';
import 'package:prezza/features/order/presentation/pages/order_page.dart';
import 'package:prezza/features/vendor/presentation/bloc/vendor_bloc.dart';
import 'package:prezza/prezza_page.dart';

import '../../../../core/constants/assets.dart';
import '../../../../core/helper/tools.dart';
import '../../../category/presentation/bloc/category_bloc.dart';
import '../widget/prezza_drawer.dart';
import 'user_home_page.dart';

@RoutePage()
class UserLayoutHomePage extends StatefulWidget {
  const UserLayoutHomePage({super.key, this.index});
  final int? index;
  @override
  State<UserLayoutHomePage> createState() => _UserLayoutHomePageState();
}

class _UserLayoutHomePageState extends State<UserLayoutHomePage> {
  final GlobalKey<ScaffoldState> scaffold = GlobalKey();
  int selectedIndex = 0;
  @override
  void initState() {
    CategoryBloc.get(context).add(const CategoryEvent.getCategories());
    selectedIndex = widget.index ?? selectedIndex;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const PrezzaDrawer(),
      key: scaffold,
      body: [
        const UserHomePage(),
        const SocialPage(),
        const UserHomePage(isBooking: true),
        const OrderPage(),
        const UserHomePage(),
      ][selectedIndex],
      bottomNavigationBar: Card(
        margin: const EdgeInsets.only(bottom: 25, right: 12, left: 12),
        elevation: 10,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.transparent,
          elevation: 0,
          selectedItemColor: primary,
          unselectedItemColor: primary.withAlpha(127),
          showSelectedLabels: true,
          showUnselectedLabels: true,
          onTap: (v) {
            if (v != 4) {
              selectedIndex = v;
            }
            setState(() {});
            if (v == 4) {
              scaffold.currentState!.openDrawer();
            }
            if (v == 2) {
              if (!ifUserAuthenticated()) {
                appRoute.navigate(LoginRoute());
              } else {
                CategoryBloc.get(context)
                    .add(const CategoryEvent.getCategories(true));
                VendorBloc.get(context)
                    .add(const VendorEvent.getNearbyPlaces('booking'));
              }
            }
            if (v == 0) {
              CategoryBloc.get(context)
                  .add(const CategoryEvent.getCategories(false));
              VendorBloc.get(context)
                  .add(const VendorEvent.getNearbyPlaces('normal'));
            }
            if (v == 1) {
              if (!ifUserAuthenticated()) {
                appRoute.navigate(LoginRoute());
              } else {
                NewsfeedBloc.get(context).add(const NewsfeedEvent.fetchPosts());
              }
            }
          },
          currentIndex: selectedIndex,
          items: [
            BottomNavigationBarItem(
              icon: SvgPicture.asset(selectedIndex == 0
                  ? Assets.assetsImagesHomeVActive
                  : Assets.assetsImagesHomeV),
              label: tr.home,
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(Assets.assetsImagesNews),
              label: tr.newsFeed,
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(selectedIndex == 2
                  ? Assets.assetsImagesBookingsActive
                  : Assets.assetsImagesBookings),
              label: tr.booking,
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(selectedIndex == 3
                  ? Assets.assetsImagesOrderActive
                  : Assets.assetsImagesOrder),
              label: tr.orders,
            ),
            BottomNavigationBarItem(
              icon: Container(
                margin: const EdgeInsets.only(bottom: 10, top: 10),
                child: SvgPicture.asset(
                  Assets.assetsImagesMore,
                  width: 25,
                ),
              ),
              label: tr.more,
            ),
          ],
        ),
      ),
    );
  }
}
