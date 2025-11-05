import 'dart:developer';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:gif/gif.dart';
import 'package:prezza/core/helper/tools.dart';
import 'package:prezza/features/profile/presentation/bloc/profile_bloc.dart';
import 'package:prezza/features/vendor/presentation/bloc/vendor_bloc.dart';
import 'package:sizer/sizer.dart';

import '../../../../config/custom_colors.dart';
import '../../../../core/constants/assets.dart';
import '../../../../core/service/hive_storage.dart';
import '../../../../core/service/routes.gr.dart';
import '../../../../prezza_page.dart';

@RoutePage()
class LoginLoadingPage extends StatefulWidget {
  const LoginLoadingPage({super.key});

  @override
  State<LoginLoadingPage> createState() => _LoginLoadingPageState();
}

class _LoginLoadingPageState extends State<LoginLoadingPage>
    with TickerProviderStateMixin {
  late final GifController controller;

 @override
void initState() {
  super.initState();
  controller = GifController(vsync: this);
  WidgetsBinding.instance.addPostFrameCallback((_) async {
    final isOnBoarded = HiveStorage.get(kOnBoard) as bool? ?? false;
    final isAuth = ifUserAuthenticated();
    
    log('🟢 isOnBoarded: $isOnBoarded');
    log('🟢 isAuth: $isAuth');
    
    await Future.delayed(const Duration(seconds: 1));
    if (!mounted) return;
    
    if (!isOnBoarded) {
      appRoute.replace(const OnboardingRoute());
      return;
    }
    
    // FIXED: Check if user IS authenticated
    if (isAuth) {
      final userType = usr.user.user_type;
      log('🟢 userType: $userType');
      
      if (userType == UserType.vendor.name) {
        ProfileBloc.get(context).add(const ProfileEvent.getBusinessDetails());
        VendorBloc.get(context).add(const VendorEvent.getOrdersStatus());
        appRoute.replace(VendorLayoutRoute());
      } else {
        appRoute.replace(UserLayoutHomeRoute());
      }
    } else {
      // If not authenticated, go back to login
      appRoute.replace(UserLayoutHomeRoute());
    }
  });
}

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: teal,
      body: Center(
        child: Gif(
          alignment: Alignment.center,
          image: const AssetImage(Assets.assetsImagesSplash),
          controller: controller,
          width: 80.w,
          fit: BoxFit.cover,
          autostart: Autostart.no,
          placeholder: (context) => defLoadingCenter,
          onFetchCompleted: () {
            if (!controller.isAnimating) {
              controller.reset();
              controller.forward();
            }
          },
        ),
      ),
    );
  }
}
