import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_svg/svg.dart';

import '../../../config/custom_colors.dart';
import '../../constants/assets.dart';

class PrezzaRating extends StatelessWidget {
  const PrezzaRating(
      {super.key,
      required this.rate,
      this.padding,
      this.unratedColor,
      this.ratedColor,
      required this.onRate,
      this.ingoreGestures = true,
      this.size = 40});
  final double rate;
  final EdgeInsetsGeometry? padding;
  final Color? unratedColor;
  final Color? ratedColor;
  final double size;
  final bool ingoreGestures;
  final Function(double rate) onRate;
  @override
  Widget build(BuildContext context) {
    return RatingBar(
      initialRating: 3,
      direction: Axis.horizontal,
      allowHalfRating: true,
      ignoreGestures: ingoreGestures,
      itemSize: size,
      itemCount: 5,
      itemPadding: padding ?? const EdgeInsets.only(right: 15),
      unratedColor: unratedColor ?? lightCream,
      glowColor: ratedColor ?? lightCoral,
      ratingWidget: RatingWidget(
        full: SvgPicture.asset(Assets.assetsImagesStartFull),
        half: SvgPicture.asset(Assets.assetsImagesStarHalf),
        empty: SvgPicture.asset(Assets.assetsImagesStarEMpty),
      ),
      onRatingUpdate: (rating) {
        onRate(rating);
      },
    );
  }
}
