import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gif/gif.dart';
import 'package:prezza/core/helper/tools.dart';
import 'package:sizer/sizer.dart';

import '../../../../config/custom_colors.dart';
import '../../../../core/constants/assets.dart';
import '../../../../core/service/hive_storage.dart';
import '../../../../core/service/routes.gr.dart';
import '../../../../prezza_page.dart';
import '../../../profile/presentation/bloc/profile_bloc.dart';

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

    WidgetsBinding.instance.addPostFrameCallback((_) {
      try {
        final isOnBoarded = HiveStorage.get(kOnBoard) as bool? ?? false;

        if (isOnBoarded) {
          if (!ifUserAuthenticated()) {
            appRoute.replace(const LoginRoute());
            appRoute.removeLast();
          } else {
            if (!isCustomer) {
              // Add timeout for business details fetch
              Future.delayed(const Duration(seconds: 10), () {
                if (mounted) {
                  // Fallback navigation if bloc doesn't respond
                  appRoute.replace(const BusinesProfileRoute());
                }
              });
              ProfileBloc.get(context)
                  .add(const ProfileEvent.getBusinessDetails());
            } else {
              Future.delayed(const Duration(seconds: 1), () {
                if (mounted) {
                  appRoute.replace(UserLayoutHomeRoute());
                }
              });
            }
          }
        } else {
          appRoute.replace(const OnboardingRoute());
        }
      } catch (e) {
        print('Error in navigation logic: $e');
        // Fallback navigation
        appRoute.replace(const OnboardingRoute());
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
    return BlocListener<ProfileBloc, ProfileState>(
      listener: (context, state) {
        print('Profile state changed: $state');
        state.maybeMap(
          failure: (e) {
            print('Profile fetch failed: ${e.toString()}');
            if (mounted) {
              appRoute.replace(const BusinesProfileRoute());
            }
          },
          loading: (v) {
            print('OnBoard: ${HiveStorage.get(kOnBoard)}');
            print('Authenticated: ${ifUserAuthenticated()}');
            print('User type: ${usr.user.user_type}');
            print('State: $state');
          },
          success: (v) async {
            print('Profile fetch successful');
            if (mounted) {
              await Future.delayed(const Duration(seconds: 1), () {
                if (!mounted) return;

                if (usr.user.user_type == UserType.vendor.name) {
                  appRoute.replace(VendorLayoutRoute());
                  appRoute.removeLast();
                } else {
                  appRoute.replace(UserLayoutHomeRoute());
                  appRoute.removeLast();
                }
              });
            }
          },
          orElse: () {
            print('Unhandled profile state: $state');
          },
        );
      },
      child: Scaffold(
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
      ),
    );
  }
}
