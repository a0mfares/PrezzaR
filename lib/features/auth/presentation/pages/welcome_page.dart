import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:prezza/core/constants/assets.dart';
import 'package:prezza/core/service/routes.gr.dart';
import 'package:prezza/prezza_page.dart';

import '../../../../core/helper/tools.dart';

@RoutePage()
class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        // mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Image.asset(Assets.assetsImagesLogo3),
          // // Center(
          // //   child: Image.asset(Assets.assetsImagesLogo2),
          // // ),
          Expanded(
            child: Center(
              child: Column(
                // mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      appRoute.navigate(const LoginRoute());
                    },
                    child: Text(tr.iamUser),
                  ),
                  vSpace(2),
                  ElevatedButton(
                    onPressed: () {},
                    child: Text(tr.iamVendor),
                  ),
                ],
              ),
            ),
          ),
          // const Spacer(),
          Image.asset(Assets.assetsImagesLogo3),
        ],
      ),
    );
  }
}
