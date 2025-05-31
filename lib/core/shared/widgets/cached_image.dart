import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:prezza/core/constants/urls.dart';

import '../../constants/assets.dart';

class CachedImage extends StatelessWidget {
  const CachedImage(
      {super.key,
      required this.imageUrl,
      this.width = 70,
      this.height = 70,
      this.radius = BorderRadius.zero,
      this.fit = BoxFit.cover,
      this.placeHolder = Assets.assetsImagesLogoSmall});
  final String imageUrl;
  final double width;
  final double height;
  final BorderRadiusGeometry radius;
  final BoxFit fit;
  final String placeHolder;
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: radius,
      child: CachedNetworkImage(
        imageUrl: '${Urls.baseUrl.replaceAll('api', '')}$imageUrl',
        width: width,
        fit: fit,
        height: height,
        placeholder: (context, er) {
          return Image.asset(
            placeHolder,
            fit: fit,
            width: width,
            height: height,
          );
        },
        errorWidget: (a, b, c) {
          return Image.asset(
            placeHolder,
            fit: fit,
            width: width,
            height: height,
          );
        },
      ),
    );
  }
}
