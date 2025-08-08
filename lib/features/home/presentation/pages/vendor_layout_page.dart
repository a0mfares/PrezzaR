import 'dart:developer';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:prezza/config/custom_colors.dart';
import 'package:prezza/core/constants/assets.dart';
import 'package:prezza/core/service/hive_storage.dart';
import 'package:prezza/core/service/routes.gr.dart';
import 'package:prezza/features/home/presentation/pages/vendor_home_page.dart';
import 'package:prezza/features/order/presentation/pages/order_page.dart';
import 'package:prezza/features/products/presentation/pages/product_page.dart';
import 'package:prezza/features/notification/presentation/pages/notification_vendor_page.dart';
import 'package:prezza/features/profile/presentation/pages/vendor_profile_page.dart';
import 'package:prezza/prezza_page.dart';
import 'package:tutorial_coach_mark/tutorial_coach_mark.dart';

import '../../../../core/helper/tools.dart';
import '../../../category/presentation/bloc/category_bloc.dart';
import '../../../profile/domain/entities/businessdetails_entity.dart';

@RoutePage()
class VendorLayoutPage extends StatefulWidget {
  const VendorLayoutPage({super.key, this.index});
  final int? index;
  @override
  State<VendorLayoutPage> createState() => _VendorLayoutPageState();
}

class _VendorLayoutPageState extends State<VendorLayoutPage> {
  int selectedIndex = 0;
  bool isAddBtnClick = false;
  final GlobalKey keyButton = GlobalKey();
  List<TargetFocus> targets = [];
  @override
  void initState() {
    selectedIndex = widget.index ?? selectedIndex;
    CategoryBloc.get(context).add(const CategoryEvent.getCategories());
    if (HiveStorage.get(kBusiness) == null) {
      _setupTargets();
      _showTutorial();
    }
    super.initState();
  }

  void _setupTargets() {
    targets.add(
      TargetFocus(
        identify: "button",
        keyTarget: keyButton,
        contents: [
          TargetContent(
            align: ContentAlign.top,
            child: Text(
              tr.clickShowItems,
              style: TextStyle(color: primary, fontSize: 20),
            ),
          ),
        ],
      ),
    );
  }

  void _showTutorial() async {
    TutorialCoachMark(
      targets: targets,
      colorShadow: lightCream,
      textSkip: "SKIP",
      paddingFocus: 10,
      opacityShadow: 0.8,
      onClickTarget: (t) {
        targets.clear();
        targets.add(
          TargetFocus(
            identify: "button",
            keyTarget: keyButton,
            contents: [
              TargetContent(
                align: ContentAlign.top,
                child: Text(
                  tr.clickAgain,
                  style: TextStyle(color: primary, fontSize: 20),
                ),
              ),
            ],
          ),
        );
        TutorialCoachMark(
          targets: targets,
          colorShadow: lightCream,
          textSkip: "SKIP",
          paddingFocus: 10,
          opacityShadow: 0.8,
          onClickTarget: (v) {
            HiveStorage.set(kTurorial, true);
          },
          onFinish: () {
            HiveStorage.set(kTurorial, true);
          },
          onSkip: () {
            return true;
          },
        ).show(context: context);
      },
      onSkip: () {
        print("Tutorial Skipped");
        return true;
      },
    ).show(context: context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: [
        const VendorHomePage(),
        const OrderPage(isVendor: true),
        ProductsPage(
          onDisposePage: () {
            isAddBtnClick = false;
          },
          onStartPage: () {
            isAddBtnClick = true;
          },
        ),
        const NotificationVendorPage(),
        const VendorProfilePage(),
      ][selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        currentIndex: selectedIndex,
        showSelectedLabels: false,
        type: BottomNavigationBarType.fixed,
        onTap: (index) {
          selectedIndex = index;
          if (index != 2) {
            isAddBtnClick = false;
          }
          // isAddBtnClick = index != 0 || index != 1 || index != 3 || index != 4;
          if (isAddBtnClick) {
            appRoute.navigate(ProductAddRoute());
            isAddBtnClick = false;
          }
          setState(() {});
        },
        items: [
          BottomNavigationBarItem(
            icon: SvgPicture.asset(selectedIndex != 0
                ? Assets.assetsImagesHomeV
                : Assets.assetsImagesHomeVActive),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              selectedIndex != 1
                  ? Assets.assetsImagesOrders
                  : Assets.assetsImagesOrderActive,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            key: keyButton,
            icon: SvgPicture.asset(
              selectedIndex != 2
                  ? Assets.assetsImagesAdd
                  : Assets.assetsImagesAddActive,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              selectedIndex != 3
                  ? Assets.assetsImagesNotification
                  : Assets.assetsImagesNotificationActive,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(selectedIndex != 4
                ? Assets.assetsImagesProfile
                : Assets.assetsImagesProfileActive),
            label: '',
          ),
        ],
      ),
    );
  }
}
