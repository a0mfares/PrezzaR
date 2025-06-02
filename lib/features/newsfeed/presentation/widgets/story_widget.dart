import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../../../core/constants/assets.dart';
import '../../../../core/helper/tools.dart';

class StoryWidget extends StatelessWidget {
  const StoryWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 150,
      height: 200,
      child: Card(
        clipBehavior: Clip.antiAlias,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Stack(
              // alignment: Alignment.center,
              children: [
                Image.asset(
                  Assets.assetsImagesTemp,
                  fit: BoxFit.fitHeight,
                  height: 190,
                ),
                BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 25, sigmaY: 25),
                  child: Container(
                    width: 100,
                    color: Colors.black.withOpacity(0.5),
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    vSpace(1),
                    const Icon(Icons.image),
                    vSpace(1),
                    Image.asset(
                      Assets.assetsImagesTemp,
                      fit: BoxFit.cover,
                      // height: 190,
                      width: 100.w,
                    ),
                    vSpace(1),
                    Text(
                      'user name',
                      style: tstyle.bodyLarge!.copyWith(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    vSpace(2),
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
