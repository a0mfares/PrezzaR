import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:prezza/config/custom_colors.dart';
import 'package:prezza/config/txt_themes.dart';
import 'package:prezza/core/constants/assets.dart';
import 'package:prezza/core/extension/widget_ext.dart';
import 'package:prezza/core/service/routes.gr.dart';
import 'package:prezza/core/shared/widgets/cached_image.dart';
import 'package:prezza/features/profile/presentation/bloc/profile_bloc.dart';
import 'package:prezza/features/vendor/presentation/bloc/vendor_bloc.dart';
import 'package:prezza/prezza_page.dart';
import 'package:sizer/sizer.dart';

import '../../../../core/helper/tools.dart';

@RoutePage()
class VendorHomePage extends StatefulWidget {
  const VendorHomePage({super.key});

  @override
  State<VendorHomePage> createState() => _VendorHomePageState();
}

class _VendorHomePageState extends State<VendorHomePage> {
  late final VendorBloc vendorBloc;

  @override
  void initState() {
    super.initState();
    vendorBloc = VendorBloc.get(context);
    // Dispatch events to fetch data on page load
    ProfileBloc.get(context).add(const ProfileEvent.getBusinessDetails());
    vendorBloc.add(const VendorEvent.getOrdersStatus());
  }

  /// Builds the main content of the page.
  /// This should only be called when the business details are successfully loaded.
  Widget _buildContent() {
    return SingleChildScrollView(
      child: Column(
        children: [
          // Business Details Section
          ListTile(
            leading: business.business_logo.isNotEmpty
                ? CachedImage(
                    imageUrl: business.business_logo,
                    fit: BoxFit.contain,
                    placeHolder: Assets.assetsImagesProfilePlace,
                    radius: BorderRadius.circular(360),
                  )
                : Container(
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(color: primary),
                    ),
                    child: SvgPicture.asset(Assets.assetsImagesProfileActive,
                        width: 50),
                  ),
            title: Text(business.business_name),
          ),
          vSpace(3),

          // Order Status Cards
          Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  VendorCardHome(
                    title: vendorBloc.orderStatusCount.running_orders.toString(),
                    subTitle: tr.runningOrders,
                    onTap: () {
                      appRoute.navigate(VendorLayoutRoute(index: 1));
                    },
                  ),
                  VendorCardHome(
                    title: vendorBloc.orderStatusCount.pending_orders.toString(),
                    subTitle: tr.pendingOrders,
                    onTap: () {
                      appRoute.navigate(VendorLayoutRoute(index: 1));
                    },
                  ),
                ],
              ),
            ),
          ),
          vSpace(2),

          // Total Revenue Card
          Card(
            margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            elevation: 30,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
            color: Colors.white,
            child: SizedBox(
              height: 120,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        tr.totalRevenue,
                        style: tstyle.headlineSmall!.copyWith(
                            fontWeight: FontWeight.w500, color: Colors.grey),
                      ),
                      BlocBuilder<VendorBloc, VendorState>(
                        builder: (context, state) {
                          return state.maybeWhen(
                            loading: () => defLoadingCenter,
                            success: () {
                              return Text(
                                  tr.priceWithCurrency(
                                      vendorBloc.vendorBalance.total_balance
                                          .toString(),
                                      'QAR'),
                                  style: tstyle.headlineMedium!.copyWith(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                  ));
                            },
                            orElse: () {
                              return Text(
                                  tr.priceWithCurrency(
                                      3949.34.toString(), 'QAR'),
                                  style: tstyle.headlineMedium!.copyWith(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                  ));
                            },
                          );
                        },
                      ),
                    ],
                  ),
                ],
              ).margin(margin: const EdgeInsets.symmetric(
                  horizontal: 20, vertical: 10)),
            ),
          ),
          vSpace(2),

          // Reviews Card
          Card(
            margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            elevation: 30,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
            color: Colors.white,
            child: SizedBox(
              height: 100,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        tr.reviews,
                        style: tstyle.headlineSmall!.copyWith(
                            fontWeight: FontWeight.w500, color: Colors.grey),
                      ),
                      Row(
                        children: [
                          Icon(Icons.star, color: primary),
                          BlocBuilder<VendorBloc, VendorState>(
                            builder: (context, state) {
                              return state.maybeWhen(
                                loading: () => defLoadingCenter,
                                success: () {
                                  return Text(
                                      '${vendorBloc.reviewAnalysis.average_stars} (+${vendorBloc.reviewAnalysis.total_reviews})',
                                      style: redText);
                                },
                                orElse: () {
                                  return Text('4.5 (+100)', style: redText);
                                },
                              );
                            },
                          )
                        ],
                      )
                    ],
                  ),
                  InkWell(
                    onTap: () {
                      appRoute.navigate(const ReviewRoute());
                    },
                    child: Text(
                      tr.seeAllReviews,
                      style: redText.copyWith(
                        fontSize: 15,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  )
                ],
              ).margin(margin: const EdgeInsets.symmetric(
                  horizontal: 20, vertical: 10)),
            ),
          ),
          vSpace(3),

          // Most Ordered Section
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Align(
              alignment: AlignmentDirectional.centerStart,
              child: Text(
                tr.mostOrderedThisWeek,
                style: tstyle.headlineSmall!
                    .copyWith(fontWeight: FontWeight.w800, fontSize: 16.sp),
              ),
            ),
          ),
          SizedBox(
            height: 20.h,
            width: 100.w,
            child: BlocBuilder<VendorBloc, VendorState>(
              builder: (context, state) {
                return state.maybeWhen(
                  loading: () => defLoadingCenter,
                  success: () {
                    return ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: vendorBloc.mostOrdered.length,
                      shrinkWrap: true,
                      itemBuilder: (context, index) {
                        final orderedProduct = vendorBloc.mostOrdered[index];
                        return Container(
                          margin: const EdgeInsets.all(10),
                          padding: const EdgeInsets.all(10),
                          width: 40.w,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            border: Border.all(color: lightCoral, width: 2.5),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Expanded(
                                child: Center(
                                  child: CachedImage(
                                    imageUrl:
                                        orderedProduct.product__main_image,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              vSpace(1),
                              Text(
                                orderedProduct.product__name,
                                style: tstyle.bodyLarge,
                              ),
                            ],
                          ),
                        );
                      },
                    );
                  },
                  orElse: () {
                    // Placeholder for when data is not yet available
                    return ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 5,
                      shrinkWrap: true,
                      itemBuilder: (context, index) {
                        return Container(
                          margin: const EdgeInsets.all(10),
                          padding: const EdgeInsets.all(10),
                          width: 40.w,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            border: Border.all(color: lightCoral, width: 2.5),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              const Expanded(
                                child: Center(
                                  child: CachedImage(
                                    imageUrl: 'https://www.com.se',
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              vSpace(1),
                              Text(
                                tr.itemName,
                                style: tstyle.bodyLarge,
                              ),
                            ],
                          ),
                        );
                      },
                    );
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
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
        backgroundColor: Colors.transparent,
      ),
      // The body now listens to the ProfileBloc state
      body: BlocBuilder<ProfileBloc, ProfileState>(
        builder: (context, profileState) {
          return profileState.maybeWhen(
            loading: () => const Center(child: CircularProgressIndicator()),
            failure: (error,data) => Center(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  '${tr.failedToLoadBusinessDetails}: $error',
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.red[700]),
                ),
              ),
            ),
            success: (usr) => _buildContent(),
            orElse: () => const Center(child: CircularProgressIndicator()),
          );
        },
      ),
    );
  }
}

class VendorCardHome extends StatelessWidget {
  const VendorCardHome({
    super.key,
    required this.title,
    required this.subTitle,
    required this.onTap,
  });
  final String title;
  final String subTitle;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 30,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      color: Colors.white,
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(15),
        child: SizedBox(
          width: 44.w,
          height: 20.h,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              BlocBuilder<VendorBloc, VendorState>(
                builder: (context, state) {
                  return state.maybeWhen(
                    loading: () => defLoadingCenter,
                    success: () {
                      return Text(title,
                          style: tstyle.displayMedium!.copyWith(
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ));
                    },
                    orElse: () {
                      return Text(title,
                          style: tstyle.displayMedium!.copyWith(
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ));
                    },
                  );
                },
              ),
              Text(
                subTitle,
                style: tstyle.headlineSmall!
                    .copyWith(fontWeight: FontWeight.w500, color: Colors.grey),
              ),
            ],
          ).margin(margin: const EdgeInsets.symmetric(horizontal: 20)),
        ),
      ),
    );
  }
}