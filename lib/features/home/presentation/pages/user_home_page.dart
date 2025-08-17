import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:prezza/config/custom_colors.dart';
import 'package:prezza/core/constants/assets.dart';
import 'package:prezza/core/extension/widget_ext.dart';
import 'package:prezza/core/shared/widgets/cached_image.dart';
import 'package:prezza/features/category/presentation/pages/category_page.dart';
import 'package:prezza/features/category/presentation/pages/sponsors_page.dart';
import 'package:prezza/features/location/presentation/pages/current_location_page.dart';
import 'package:prezza/features/vendor/presentation/pages/nearby_places_page.dart';
import 'package:prezza/prezza_page.dart';
import 'package:sizer/sizer.dart';

import '../../../../core/helper/tools.dart';
import '../../../../core/service/routes.gr.dart';
import '../../../cart/presentation/bloc/cart_bloc.dart';

class UserHomePage extends StatefulWidget {
  const UserHomePage({super.key, this.isBooking = false});
  final bool isBooking;
  @override
  State<UserHomePage> createState() => _UserHomePageState();
}

class _UserHomePageState extends State<UserHomePage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    CartBloc.get(context).add(const CartEvent.getUserCart());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: RichText(
          text: TextSpan(
            style: tstyle.headlineSmall!.copyWith(fontSize: 16.sp),
            children: [
              TextSpan(
                text: tr.hiMsg(usr.user.first_name),
              ),
              TextSpan(
                style: tstyle.headlineSmall!
                    .copyWith(fontWeight: FontWeight.w800, fontSize: 16.sp),
                text: tr.goodAfterNon,
              )
            ],
          ),
        ),
        elevation: 0,
        toolbarHeight: 90,
        backgroundColor: Colors.transparent,
        actions: [
          InkWell(onTap: () {
            if (!ifUserAuthenticated()) {
              appRoute.navigate(LoginRoute());
            } else {
              appRoute.navigate(const CartRoute());
            }
          }, child: BlocBuilder<CartBloc, CartState>(
            builder: (context, state) {
              final cartBloc = CartBloc.get(context);

              return state.maybeWhen(
                loading: () {
                  return const CircleAvatar().badgeBtn(
                    count: cartBloc.cartLength,
                    bgColor: primary,
                  );
                },
                success: () {
                  return const CircleAvatar().badgeBtn(
                    count: cartBloc.cartLength,
                    bgColor: primary,
                  );
                },
                successAdded: () {
                  return const CircleAvatar().badgeBtn(
                    count: cartBloc.cartLength,
                    bgColor: primary,
                  );
                },
                successDeleted: () {
                  return const CircleAvatar().badgeBtn(
                    count: cartBloc.cartLength,
                    bgColor: primary,
                  );
                },
                successUpdate: () {
                  return const CircleAvatar().badgeBtn(
                    count: cartBloc.cartLength,
                    bgColor: primary,
                  );
                },
                successCleared: () {
                  return const CircleAvatar().badgeBtn(
                    count: 0,
                    bgColor: primary,
                  );
                },
                failureGetUserCart: (error) {
                  return const CircleAvatar().badgeBtn(
                    count: 0,
                    bgColor: primary,
                  );
                },
                failureGetCartDetails: (error) {
                  return const CircleAvatar().badgeBtn(
                    count: cartBloc.cartLength, // Show last known count
                    bgColor: primary,
                  );
                },
                orElse: () {
                  return const CircleAvatar().badgeBtn(
                    count: cartBloc.cartLength,
                    bgColor: primary,
                  );
                },
              );
            },
          ))
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 17),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                tr.urIn,
                style: tstyle.bodyLarge!.copyWith(fontWeight: FontWeight.bold),
              ),
              const CurrentLocationPage(),
              vSpace(3),
              SearchBar(
                leading: Icon(Icons.search, color: primary, size: 30),
                hintText: tr.searchCoffe,
                onTap: () {
                  appRoute.navigate(const SearchRoute());
                },
              ),
              vSpace(3),
              Card(
                elevation: 10,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12)),
                color: Colors.white,
                child: ListTile(
                  onTap: () {
                    if (!ifUserAuthenticated()) {
                      appRoute.navigate(LoginRoute());
                    } else {
                      appRoute.navigate(const CreatePostRoute());
                    }
                  },
                  // minTileHeight: 8.h,
                  minVerticalPadding: 20,
                  leading: CachedImage(
                    imageUrl: usr.user.profile_picture,
                    width: 10.w,
                    fit: BoxFit.contain,
                    placeHolder: Assets.assetsImagesProfilePlace,
                    radius: BorderRadius.circular(
                      360,
                    ),
                  ),
                  title: Text(
                    tr.shareExp,
                    style: tstyle.bodyLarge!.copyWith(
                      color: primary,
                      fontSize: 15.sp,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  trailing: SvgPicture.asset(Assets.assetsImagesGallery),
                ),
              ),
              vSpace(2),
              CategoryPage(isBooking: widget.isBooking),
              const SponsorsPage(),
              Text(
                tr.popularPlaces,
                style: tstyle.bodyLarge!.copyWith(
                  fontWeight: FontWeight.bold,
                ),
              ),
              NearbyPlacesPage(
                type: widget.isBooking ? 'booking' : 'normal',
              ),
              vSpace(3),
            ],
          ),
        ),
      ),
    );
  }
}
