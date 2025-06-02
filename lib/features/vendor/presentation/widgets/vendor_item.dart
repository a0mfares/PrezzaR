import 'package:bot_toast/bot_toast.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:prezza/core/extension/widget_ext.dart';
import 'package:prezza/core/service/routes.gr.dart';
import 'package:prezza/core/shared/widgets/cached_image.dart';
import 'package:prezza/prezza_page.dart';
import 'package:sizer/sizer.dart';

import '../../../../config/custom_colors.dart';
import '../../../../config/txt_themes.dart';
import '../../../favorites/presentation/bloc/fav_bloc.dart';
import '../../domain/entities/vendoritem_entity.dart';
import '../../../../core/constants/assets.dart';
import '../../../../core/helper/tools.dart';

class VendorItem extends StatelessWidget {
  const VendorItem({
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
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  CachedImage(
                    imageUrl: vendor.bussiness_logo,
                    width: 20.w,
                  ),
                  hSpace(5),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(vendor.bussiness_name, style: tstyle.headlineSmall),
                      Row(
                        children: [
                          const Icon(Icons.star, color: Colors.yellow),
                          Text(
                            vendor.bussiness_avg_stars.toString(),
                            style: tstyle.bodyMedium,
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Icon(Icons.alarm, color: primary),
                          Text(
                            '${vendor.distance_in_kilo_meters} KM',
                            style: tstyle.bodyMedium,
                          ),
                        ],
                      ),
                      Visibility(
                        visible: true,
                        child: Row(
                          children: [
                            SvgPicture.asset(
                              Assets.assetsImagesDiscount,
                              fit: BoxFit.cover,
                              width: 23,
                            ),
                            Text(
                              'Get Offers',
                              style: redText,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              BlocConsumer<FavBloc, FavState>(
                listener: (context, state) {
                  state.maybeMap(
                    successAdded: (v) {
                      BotToast.showText(text: 'success added');
                    },
                    failure: (v) {
                      BotToast.showText(text: v.err);
                    },
                    orElse: () {},
                  );
                },
                builder: (context, state) {
                  return state.maybeWhen(
                    loading: () => defLoadingCenter,
                    successAdded: () {
                      return Icon(
                        Icons.check,
                        color: primary,
                      );
                    },
                    orElse: () {
                      return InkWell(
                        onTap: () {
                          context.read<FavBloc>().add(FavEvent.addFavVendor(
                              vendor.bussiness_id.toString()));
                        },
                        child: CircleAvatar(
                          backgroundColor: lightCream,
                          radius: 30,
                          child: Icon(
                            vendor.is_fav!
                                ? Icons.favorite
                                : Icons.favorite_outline,
                            size: 30,
                          ),
                        ),
                      );
                    },
                  );
                },
              )
            ],
          ).margin(
            margin: const EdgeInsets.symmetric(vertical: 5),
          ),
          const Divider(),
        ],
      ),
    );
  }
}
