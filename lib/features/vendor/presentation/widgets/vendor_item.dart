import 'dart:developer';

import 'package:bot_toast/bot_toast.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:prezza/core/extension/widget_ext.dart';
import 'package:prezza/core/service/routes.gr.dart';
import 'package:prezza/core/shared/widgets/cached_image.dart';
import 'package:prezza/features/vendor/presentation/bloc/vendor_bloc.dart';
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
    required this.categoryID,
  });
  final VendorItemEntity vendor;
  final String type;
  final String categoryID;
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
                      // Only show toast if this specific vendor was added
                      if (v.vendorId == vendor.bussiness_id.toString()) {
                        BotToast.showText(text: 'Added to favorites');
                      }
                    },
                    successDeleted: (v) {
                      // Only show toast if this specific vendor was deleted
                      if (v.vendorId == vendor.bussiness_id.toString()) {
                        BotToast.showText(text: 'Removed from favorites');
                      }
                    },
                    failure: (v) {
                      BotToast.showText(text: v.err);
                    },
                    orElse: () {},
                  );
                },
                builder: (context, state) {
                  final favBloc = context.read<FavBloc>();
                  final vendorId = vendor.bussiness_id.toString();

                  // Check if this specific vendor is loading
                  final isThisVendorLoading = favBloc.isVendorLoading(vendorId);

                  // Check if this vendor is in favorites
                  final isInFavorites = vendor.is_fav ?? false;

                  return state.maybeWhen(
                    vendorLoading: (loadingVendorId) {
                      // Only show loading for this specific vendor
                      if (loadingVendorId == vendorId) {
                        return CircleAvatar(
                          backgroundColor: lightCream,
                          radius: 30,
                          child: defLoadingCenter,
                        );
                      }
                      // For other vendors, show normal state
                      return _buildFavoriteButton(
                          context, isInFavorites, vendorId);
                    },
                    successAdded: (addedVendorId) {
                      if (addedVendorId == vendorId) {
                        return CircleAvatar(
                          backgroundColor: lightCream,
                          radius: 30,
                          child: Icon(
                            Icons.check,
                            color: primary,
                            size: 30,
                          ),
                        );
                      }
                      return _buildFavoriteButton(
                          context, isInFavorites, vendorId);
                    },
                    successDeleted: (deletedVendorId) {
                      // Show success icon only for this vendor
                      if (deletedVendorId == vendorId) {
                        return CircleAvatar(
                          backgroundColor: lightCream,
                          radius: 30,
                          child: Icon(
                            Icons.check,
                            color: primary,
                            size: 30,
                          ),
                        );
                      }
                      return _buildFavoriteButton(
                          context, isInFavorites, vendorId);
                    },
                    orElse: () {
                      return _buildFavoriteButton(
                          context, isInFavorites, vendorId);
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

  Widget _buildFavoriteButton(
      BuildContext context, bool isInFavorites, String vendorId) {
    return InkWell(
      onTap: () {
        if (isInFavorites) {
          // Remove from favorites
          context.read<FavBloc>().add(FavEvent.deleteFavVendor(vendorId));
          context
              .read<VendorBloc>()
              .add(VendorEvent.getVendorByCategory(categoryID, type));
        } else {
          // Add to favorites
          context.read<FavBloc>().add(FavEvent.addFavVendor(vendorId));
          context
              .read<VendorBloc>()
              .add(VendorEvent.getVendorByCategory(categoryID, type));
        }
      },
      child: CircleAvatar(
        backgroundColor: lightCream,
        radius: 30,
        child: Icon(
          isInFavorites ? Icons.favorite : Icons.favorite_outline,
          size: 30,
          color: isInFavorites ? Colors.red : null,
        ),
      ),
    );
  }
}
