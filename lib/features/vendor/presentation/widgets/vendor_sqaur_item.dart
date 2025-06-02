import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../../../config/custom_colors.dart';
import '../../../../core/helper/tools.dart';
import '../../../../core/service/routes.gr.dart';
import '../../../../core/shared/widgets/cached_image.dart';
import '../../../../prezza_page.dart';
import '../../domain/entities/vendoritem_entity.dart';

class VendorSqaurItem extends StatelessWidget {
  const VendorSqaurItem({
    super.key,
    this.type = 'normal',
    required this.vendor,
  });

  final VendorItemEntity vendor;
  final String type;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        appRoute.navigate(
            VendorDetailsRoute(id: vendor.bussiness_id.toString(), type: type));
      },
      child: Container(
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
                  imageUrl: vendor.bussiness_logo,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            vSpace(1),
            Text(
              vendor.bussiness_name,
              style: tstyle.bodyLarge,
            ),
            Row(
              children: [
                const Icon(
                  Icons.star,
                  color: Colors.yellow,
                ),
                Text(vendor.bussiness_avg_stars.toString()),
              ],
            ),
            vSpace(1),
            Row(
              children: [
                Icon(
                  Icons.alarm,
                  color: primary,
                ),
                Text('${vendor.distance_in_kilo_meters} KM'),
              ],
            )
          ],
        ),
      ),
    );
  }
}
