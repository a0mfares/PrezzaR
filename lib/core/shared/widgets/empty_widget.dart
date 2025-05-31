import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sizer/sizer.dart';

import '../../constants/assets.dart';
import '../../helper/tools.dart';

class EmptyWidget extends StatelessWidget {
  const EmptyWidget({
    super.key,
    required this.title,
    this.width,
    this.height,
    this.img,
  });
  final String title;
  final String? img;
  final double? width;
  final double? height;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SvgPicture.asset(
          img ?? Assets.assetsImagesNoData,
          width: width ?? 15.w,
          height: height ?? 15.h,
          // fit: BoxFit.cover,
        ),
        vSpace(3),
        Text(title, style: tstyle.bodyLarge)
      ],
    );
  }
}
