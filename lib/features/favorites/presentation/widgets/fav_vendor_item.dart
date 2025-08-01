import 'package:bot_toast/bot_toast.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:prezza/core/extension/widget_ext.dart';
import 'package:prezza/features/favorites/domain/entities/favvendor_entity.dart';

import '../../../../config/custom_colors.dart';
import '../../../../core/helper/tools.dart';
import '../bloc/fav_bloc.dart';

class FavVendorItemWidget extends StatelessWidget {
  const FavVendorItemWidget({
    super.key,
    required this.vendor,
  });
  final FavVendorEntity vendor;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        //  appRoute
        //     .navigate(VendorDetailsRoute(id: vendor.bussiness_id.toString()));
      },
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CachedNetworkImage(
                imageUrl: vendor.bussiness_logo,
              ).prezzaImage(),
              hSpace(1),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(vendor.bussiness_name, style: tstyle.headlineSmall),
                  Text('Restaurant name', style: tstyle.bodySmall),
                  Row(
                    children: [
                      const Icon(Icons.star, color: Colors.yellow),
                      Text(
                        vendor.bussiness_avg_stars.toString(),
                        style: tstyle.bodyMedium,
                      ),
                    ],
                  ),
                ],
              ),
              BlocConsumer<FavBloc, FavState>(
                listener: (context, state) {
                  state.maybeMap(
                    successDeleted: (v) {
                      BotToast.showText(text: 'success Removed');
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
                    successDeleted: (vendor) {
                      return Icon(
                        Icons.check,
                        color: primary,
                      );
                    },
                    orElse: () {
                      return InkWell(
                        onTap: () {
                          context.read<FavBloc>().add(
                              FavEvent.deleteFavVendor(vendor.uuid.toString()));
                        },
                        child: CircleAvatar(
                          backgroundColor: lightCream,
                          radius: 30,
                          child: const Icon(Icons.favorite, size: 30),
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
