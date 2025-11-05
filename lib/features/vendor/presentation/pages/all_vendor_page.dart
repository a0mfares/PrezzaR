import 'dart:developer';
import 'dart:io';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:place_picker_google/place_picker_google.dart';
import 'package:prezza/config/custom_colors.dart';
import 'package:prezza/core/extension/widget_ext.dart';
import 'package:prezza/core/helper/tools.dart';
import 'package:prezza/core/helper/widgets.dart';
import 'package:prezza/core/service/hive_storage.dart';
import 'package:prezza/core/shared/widgets/empty_widget.dart';
import 'package:prezza/core/shared/widgets/toggle_btn.dart';
import 'package:prezza/core/shared/widgets/under_montains.dart';
import 'package:prezza/features/cart/presentation/bloc/cart_bloc.dart';
import 'package:prezza/features/location/domain/entities/current_location_entity.dart';
import 'package:sizer/sizer.dart';

import '../../../../core/constants/assets.dart';
import '../../../../core/constants/keys.dart';
import '../../../../core/service/routes.gr.dart';
import '../../../../prezza_page.dart';
import '../widgets/vendor_item.dart';
import '../../../favorites/presentation/pages/fav_widget.dart';
import '../bloc/vendor_bloc.dart';

@RoutePage()
class AllVendorPage extends StatefulWidget {
  const AllVendorPage({super.key, required this.id, required this.type});
  final String id;
  final String type;
  @override
  State<AllVendorPage> createState() => _AllVendorPageState();
}

class _AllVendorPageState extends State<AllVendorPage> {
  late final VendorBloc bloc;

  @override
  void initState() {
    bloc = VendorBloc.get(context);
    bloc.categoryId = widget.id;
    bloc.add(VendorEvent.getVendorByCategory(widget.id, widget.type));
    CartBloc.get(context).add(const CartEvent.getUserCart());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    log("Building AllVendorPage with id: ${widget.id}, type: ${widget.type}");

    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          elevation: 1,
          toolbarHeight: 80,
          backgroundColor: floralWhite,
          title: Text(
            tr.deliveringTo(HiveStorage.get<CurrentLocationEntity>(kCurLocation,
                    defaultValue: CurrentLocationEntity.empty())
                .locationName),
            overflow: TextOverflow.ellipsis,
          ),
          actions: [
            InkWell(
              onTap: () {
                appRoute.navigate(const SearchRoute());
              },
              child: SvgPicture.asset(
                Assets.assetsImagesSearch,
                width: 7.w,
              ),
            ),
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
                      count: cartBloc.cartLength,
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
          bottom: TabBar(
            unselectedLabelColor: primary,
            indicatorColor: primary,
            dividerColor: lightCream,
            onTap: (index) {
              switch (index) {
                case 0:
                  bloc.selectedService = 'Pickup only';
                  break;
                case 1:
                  bloc.selectedService = 'Delivery & Pickup';
                  break;
                case 2:
                  bloc.selectedService = 'Delivery only';
                  break;
              }
              bloc.add(VendorEvent.getVendorByCategory(widget.id, widget.type));
            },
            labelColor: primary,
            labelStyle: tstyle.bodyLarge!.copyWith(fontWeight: FontWeight.w900),
            unselectedLabelStyle:
                tstyle.bodyLarge!.copyWith(fontWeight: FontWeight.w400),
            tabs: [
              Tab(
                text: tr.pickup,
              ),
              Tab(
                text: tr.deliveryAndPickup,
              ),
              Tab(
                text: tr.delivery,
              ),
            ],
          ),
        ).prezzaLeading(),
        body: SingleChildScrollView(
          child: Column(
            children: [
              vSpace(3),
              const FavWidget(),
              vSpace(3),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  OutlinedButton.icon(
                    onPressed: () {},
                    label: Text(tr.cuisines),
                    iconAlignment: IconAlignment.end,
                    style: OutlinedButton.styleFrom(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 30, vertical: 15),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                      side: BorderSide(color: primary),
                      foregroundColor: primary,
                    ),
                    icon: const Icon(Icons.keyboard_arrow_down),
                  ),
                  Row(
                    children: [
                      BlocBuilder<VendorBloc, VendorState>(
                        builder: (context, state) {
                          return state.maybeWhen(orElse: () {
                            return OutlinedButton(
                              onPressed: () {
                                showPrezzaBottomSheet(
                                    context, tr.sort, sortItems, (v) {
                                  bloc.add(
                                      VendorEvent.selecteSort(v, widget.type));
                                  bloc.add(VendorEvent.getVendorByFilter(
                                      widget.id, widget.type));
                                }, bloc.sort);
                              },
                              style: OutlinedButton.styleFrom(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 30, vertical: 15),
                                shape: const CircleBorder(),
                                side: BorderSide(color: primary),
                                foregroundColor: primary,
                              ),
                              child: const Icon(Icons.swap_vert),
                            );
                          });
                        },
                      ),
                      OutlinedButton(
                        onPressed: () {
                          showPrezzaBtm(
                            context,
                            Column(
                              children: [
                                Text(tr.filterSearch,
                                    style: tstyle.headlineSmall),
                                BlocBuilder<VendorBloc, VendorState>(
                                  builder: (context, state) {
                                    return state.maybeWhen(
                                      orElse: () {
                                        return TextFormField(
                                          readOnly: true,
                                          onTap: () {
                                            showPrezzaBtm(
                                              context,
                                              PlacePicker(
                                                apiKey: Platform.isAndroid
                                                    ? mapApiKeyAndroid
                                                    : mapApiKeyIos,
                                                onPlacePicked:
                                                    (LocationResult result) {
                                                  bloc.add(VendorEvent
                                                      .selectedLocation(
                                                          result));
                                                  context.maybePop();
                                                },
                                                enableNearbyPlaces: false,
                                                myLocationButtonEnabled: true,
                                                initialLocation: LatLng(
                                                    currentLoc.longitude,
                                                    currentLoc.latitude),
                                                searchInputConfig:
                                                    const SearchInputConfig(
                                                  padding: EdgeInsets.symmetric(
                                                    horizontal: 16.0,
                                                    vertical: 8.0,
                                                  ),
                                                  autofocus: false,
                                                  textDirection:
                                                      TextDirection.ltr,
                                                ),
                                                searchInputDecorationConfig:
                                                    const SearchInputDecorationConfig(
                                                  hintText:
                                                      "Search for a building, street or ...",
                                                ),
                                              ),
                                            );
                                          },
                                          controller: TextEditingController(
                                              text: bloc.selectedLoc
                                                  .formattedAddress),
                                          decoration: InputDecoration(
                                              hoverColor: primary,
                                              focusColor: primary,
                                              enabledBorder: OutlineInputBorder(
                                                borderRadius:
                                                    BorderRadius.circular(15),
                                                borderSide: BorderSide(
                                                  color: primary,
                                                ),
                                              ),
                                              hintText: tr.writeHere),
                                        ).prezaa(label: tr.locations);
                                      },
                                    );
                                  },
                                ),
                                vSpace(3),
                                Text(tr.distance),
                                vSpace(2),
                                BlocBuilder<VendorBloc, VendorState>(
                                  builder: (context, state) {
                                    return ToggleBtnPezza(
                                      items: generateDistances(10, 300, 10),
                                      onSelectedItem: (v) {
                                        bloc.add(VendorEvent.selectDistance(
                                            v, widget.type));
                                        log(v);
                                      },
                                      selectedItem: bloc.distance,
                                    );
                                  },
                                ),
                                vSpace(3),
                                Text(tr.operatingHours),
                                vSpace(2),
                                BlocBuilder<VendorBloc, VendorState>(
                                  builder: (context, state) {
                                    return ToggleBtnPezza(
                                      items: operatingHour,
                                      onSelectedItem: (v) {
                                        bloc.add(
                                            VendorEvent.selectOperatingHour(
                                                v, widget.type));
                                      },
                                      selectedItem: bloc.operatingHours,
                                    );
                                  },
                                ),
                                Text(tr.ratingTitle,
                                    style: tstyle.bodyLarge!
                                        .copyWith(fontWeight: FontWeight.bold)),
                                vSpace(2),
                                RatingBar(
                                  initialRating: bloc.stars.toDouble(),
                                  direction: Axis.horizontal,
                                  allowHalfRating: false,
                                  itemCount: 5,
                                  itemPadding: const EdgeInsets.only(right: 15),
                                  unratedColor: lightCream,
                                  glowColor: lightCoral,
                                  ratingWidget: RatingWidget(
                                    full: Container(
                                      padding: const EdgeInsets.all(10),
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        border: Border.all(color: primary),
                                      ),
                                      child: SvgPicture.asset(
                                          Assets.assetsImagesStartFull),
                                    ),
                                    half: SvgPicture.asset(
                                        Assets.assetsImagesStarHalf),
                                    empty: SvgPicture.asset(
                                        Assets.assetsImagesStarEMpty),
                                  ),
                                  onRatingUpdate: (rating) {
                                    bloc.stars = num.parse(rating.toString());
                                    setState(() {});
                                  },
                                ),
                                vSpace(3),
                                ElevatedButton(
                                  onPressed: () {
                                    bloc.add(VendorEvent.getVendorByFilter(
                                        widget.id, widget.type));
                                    context.maybePop();
                                  },
                                  child: Text(tr.done),
                                )
                              ],
                            ),
                          );
                        },
                        style: OutlinedButton.styleFrom(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 30, vertical: 15),
                          shape: const CircleBorder(),
                          side: BorderSide(color: primary),
                          foregroundColor: primary,
                        ),
                        child: SvgPicture.asset(Assets.assetsImagesFilter),
                      ),
                    ],
                  )
                ],
              ),
              vSpace(2),
              ListTile(
                title: Text(
                  tr.allRestaurants,
                  style: tstyle.headlineSmall,
                ),
              ),
              vSpace(2),
              const Divider(
                thickness: 2,
              ),
              SizedBox(
                height: 50.h,
                child: BlocBuilder<VendorBloc, VendorState>(
                  builder: (context, state) {
                    return state.maybeWhen(
                      loading: () => defLoadingCenter,
                      failure: (err) => EmptyWidget(title: err),
                      success: () {
                        if (bloc.vendorItem.isEmpty) {
                          return EmptyWidget(title: tr.noResautrants);
                        }
                        return ListView.builder(
                          physics: const NeverScrollableScrollPhysics(),
                          itemCount: bloc.vendorItem.length,
                          itemBuilder: (context, index) {
                            final item = bloc.vendorItem[index];
                            return VendorItem(
                              vendor: item,
                              categoryID: widget.id,
                              type: widget.type,
                            );
                          },
                        );
                      },
                      orElse: () {
                        return const UnderMontains();
                      },
                    );
                  },
                ),
              ),
            ],
          ).margin(margin: const EdgeInsets.symmetric(horizontal: 10)),
        ),
      ),
    );
  }
}