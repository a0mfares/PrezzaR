import 'package:bot_toast/bot_toast.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:prezza/core/service/routes.gr.dart';
import 'package:prezza/core/shared/widgets/empty_widget.dart';
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

  Widget _buildFavoritesList(List<dynamic> vendors) {
    if (vendors.isEmpty) {
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
              Text(
                tr.viewAll,
                style: clickableText.copyWith(color: primary),
              ),
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
            padding: const EdgeInsets.symmetric(horizontal: 8),
            itemCount: vendors.length,
            itemBuilder: (context, index) {
              final item = vendors[index];
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 4),
                child: FavItem(fav: item),
              );
            },
          ),
        ),
      ],
    );
  }

  Widget _buildLoadingState() {
    return Column(
      children: [
        ListTile(
          title: Text(
            tr.favorites,
            style: tstyle.bodyLarge!.copyWith(
              fontWeight: FontWeight.bold,
            ),
          ),
          trailing: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                tr.viewAll,
                style: clickableText.copyWith(color: Colors.grey),
              ),
              hSpace(2),
              const Icon(Icons.arrow_forward_ios, size: 13, color: Colors.grey),
            ],
          ),
        ),
        SizedBox(
          height: 30.h,
          width: 100.w,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.symmetric(horizontal: 8),
            itemCount: 5, // Show 5 loading placeholders
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 4),
                child: Container(
                  width: 150,
                  decoration: BoxDecoration(
                    color: Colors.grey.shade200,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: const Center(
                    child: CircularProgressIndicator(),
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<FavBloc, FavState>(
      listener: (context, state) {
        state.maybeWhen(
          failure: (error) {
            // Show error message but don't navigate away
            BotToast.showText(text: '${tr.error}: $error');
          },
          successAdded: (vendorId) {
            // Show success message for added vendor
            BotToast.showText(text: tr.addedToFavorites);
          },
          successDeleted: (vendorId) {
            // Show success message for deleted vendor
            BotToast.showText(text: tr.removedFromFavorites);
          },
          orElse: () {},
        );
      },
      builder: (context, state) {
        return state.when(
          initial: () => _buildLoadingState(),
          loading: () => _buildLoadingState(),
          vendorsLoaded: (vendors) => _buildFavoritesList(vendors),
          failure: (error) {
            // Show error state but still allow retry
            return Column(
              children: [
                ListTile(
                  title: Text(
                    tr.favorites,
                    style: tstyle.bodyLarge!.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(
                  height: 30.h,
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.error_outline,
                          size: 48,
                          color: Colors.red.shade400,
                        ),
                        const SizedBox(height: 16),
                        Text(
                          tr.failedToLoadFavorites,
                          style: tstyle.bodyLarge?.copyWith(
                            color: Colors.red.shade600,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        const SizedBox(height: 8),
                        Text(
                          error,
                          style: tstyle.bodyMedium?.copyWith(
                            color: Colors.grey.shade600,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        const SizedBox(height: 16),
                        ElevatedButton(
                          onPressed: () {
                            bloc.add(const FavEvent.getFavVendors());
                          },
                          child:  Text(tr.retry),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            );
          },
          success: () {
            // Handle legacy success state by using bloc data
            return _buildFavoritesList(bloc.favVendors);
          },
          vendorLoading: (vendorId) {
            // Show current list with loading indicator for specific vendor
            return _buildFavoritesList(bloc.favVendors);
          },
          successAdded: (vendorId) {
            // Show updated list after successful addition
            return _buildFavoritesList(bloc.favVendors);
          },
          successDeleted: (vendorId) {
            // Show updated list after successful deletion
            return _buildFavoritesList(bloc.favVendors);
          },
        );
      },
    );
  }
}
