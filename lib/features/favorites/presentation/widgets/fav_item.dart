import 'package:flutter/material.dart';
import 'package:prezza/features/favorites/domain/entities/favvendor_entity.dart';
import 'package:sizer/sizer.dart';

import '../../../../config/custom_colors.dart';
import '../../../../core/helper/tools.dart';
import '../../../../core/shared/widgets/cached_image.dart';

class FavItem extends StatelessWidget {
  const FavItem({
    super.key,
    required this.fav,
  });

  final FavVendorEntity fav;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      padding: const EdgeInsets.all(10),
      width: 40.w,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Center(
              child: CachedImage(
                imageUrl: fav.bussiness_logo,
                fit: BoxFit.cover,
              ),
            ),
          ),
          vSpace(1),
          Text(
            fav.bussiness_name,
            style: tstyle.bodyLarge,
          ),
          Row(
            children: [
              const Icon(
                Icons.star,
                color: Colors.yellow,
              ),
              Text(fav.bussiness_avg_stars.toString()),
            ],
          ),
          vSpace(1),
          Row(
            children: [
              Icon(
                Icons.alarm,
                color: primary,
              ),
              // Text('${fav.distance_in_kilo_meters} KM'),
            ],
          )
        ],
      ),
    );
  }
}
