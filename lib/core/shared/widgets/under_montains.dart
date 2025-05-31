import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:lottie/lottie.dart';
import 'package:prezza/core/constants/assets.dart';
import 'package:prezza/core/helper/tools.dart';
import 'package:sizer/sizer.dart';

class UnderMontains extends StatelessWidget {
  const UnderMontains({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        LottieBuilder.asset(
          Assets.assetsImagesMontains,
        ),
      ],
    );
  }
}

class FailureWidget extends StatelessWidget {
  const FailureWidget({super.key, required this.error, this.width});
  final String error;
  final double? width;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgPicture.asset(
            Assets.assetsImagesError,
            width: width ?? 50.sp,
          ),
          vSpace(3),
          Text(
            error,
            textAlign: TextAlign.center,
            style: tstyle.headlineSmall!.copyWith(fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
