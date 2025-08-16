import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:prezza/core/service/routes.gr.dart';
import 'package:prezza/core/shared/widgets/empty_widget.dart';
import 'package:prezza/core/shared/widgets/under_montains.dart';
import 'package:prezza/features/favorites/presentation/widgets/fav_item.dart';
import 'package:sizer/sizer.dart';

import '../../../../config/custom_colors.dart';
import '../../../../config/txt_themes.dart';
import '../../../../core/helper/tools.dart';
import '../../../../prezza_page.dart';
import '../bloc/fav_bloc.dart';

class FavWidget extends StatefulWidget {
  const FavWidget({super.key});

  @override
  State<FavWidget> createState() => _FavWidgetState();
}

class _FavWidgetState extends State<FavWidget> {
  late final FavBloc bloc;

  @override
  void initState() {
    super.initState();
    bloc = FavBloc.get(context);
    bloc.add(const FavEvent.getFavVendors());
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FavBloc, FavState>(
      builder: (context, state) {
        return state.when(
          initial: () => defLoadingCenter,
          loading: () => defLoadingCenter,
          failure: (err) => FailureWidget(error: err),
          success: () {
            if (bloc.favVendors.isEmpty) {
              // Empty state (not failure)
              return EmptyWidget(title: tr.noFav);
            }
            return Column(
              children: [
                ListTile(
                  onTap: () => appRoute.navigate(const FavoritesRoute()),
                  title: Text(
                    tr.favorites,
                    style: tstyle.bodyLarge!.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  trailing: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(tr.viewAll,
                          style: clickableText.copyWith(color: primary)),
                      hSpace(2),
                      const Icon(Icons.arrow_forward_ios, size: 13),
                    ],
                  ),
                ),
                SizedBox(
                  height: 30.h,
                  width: 100.w,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: bloc.favVendors.length,
                    itemBuilder: (context, index) {
                      final item = bloc.favVendors[index];
                      return FavItem(fav: item);
                    },
                  ),
                ),
              ],
            );
          },
          vendorLoading: (_) => defLoadingCenter,
          successAdded: (_) => defLoadingCenter,
          successDeleted: (_) => defLoadingCenter,
        );
      },
    );
  }
}
