import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../config/custom_colors.dart';
import '../../constants/assets.dart';

class ProfileAvater extends StatelessWidget {
  const ProfileAvater({
    super.key,
    this.frameColor,
    this.bgColor,
    required this.src,
    required this.onTap,
    this.provider,
  });
  final Color? frameColor;
  final Color? bgColor;
  final Widget src;
  final ImageProvider? provider;
  final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    log('ProfileAvater: $src, $provider');
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          padding: const EdgeInsets.all(5),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(
              color: frameColor ?? primary,
              width: 2,
            ),
          ),
          child: CircleAvatar(
            radius: 60,
            foregroundImage: provider,
            backgroundColor: bgColor ?? Colors.transparent,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(1000),
              child: src,
            ),
          ),
        ),
        Positioned(
          top: 95,
          left: 100,
          child: InkWell(
            onTap: onTap,
            child: CircleAvatar(
              backgroundColor: primary,
              child: SvgPicture.asset(
                Assets.assetsImagesEdit,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
