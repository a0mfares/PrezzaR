import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:prezza/config/custom_colors.dart';
import 'package:prezza/core/constants/assets.dart';
import 'package:prezza/core/extension/widget_ext.dart';
import 'package:prezza/core/helper/tools.dart';
import 'package:prezza/core/service/routes.gr.dart';
import 'package:prezza/core/shared/widgets/cached_image.dart';
import 'package:prezza/features/cart/presentation/bloc/cart_bloc.dart';
import 'package:prezza/features/products/presentation/pages/product_vendor_details_page.dart';
import 'package:prezza/prezza_page.dart';
import 'package:sizer/sizer.dart';

import '../../../products/presentation/bloc/product_bloc.dart';
import '../bloc/vendor_bloc.dart';
import '../widgets/shimmer_card_loading.dart';

@RoutePage()
class VendorDetailsPage extends StatefulWidget {
  const VendorDetailsPage({super.key, required this.id, required this.type});
  final String id;
  final String type;
  @override
  State<VendorDetailsPage> createState() => _VendorProfilePageState();
}

class _VendorProfilePageState extends State<VendorDetailsPage> {
  late final VendorBloc bloc;
  String selectedItem = 'item 1';
  @override
  void initState() {
    bloc = VendorBloc.get(context);
    bloc.add(VendorEvent.getVendorDetails(widget.id));
    ProductBloc.get(context)
        .add(ProductEvent.getProductCateogries(widget.id, 'customer'));
    CartBloc.get(context).add(const CartEvent.getUserCart());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          InkWell(
            onTap: () {
              appRoute.navigate(const CartRoute());
            },
            child: BlocBuilder<CartBloc, CartState>(
              builder: (context, state) {
                return state.maybeWhen(
                  orElse: () {
                    return const CircleAvatar().badgeBtn(
                      count: CartBloc.get(context).cartItems.length,
                      bgColor: primary,
                    );
                  },
                );
              },
            ),
          )
        ],
      ).prezzaLeading(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              alignment: Alignment.bottomLeft,
              clipBehavior: Clip.none,
              children: [
                CachedImage(
                  height: 400,
                  width: 100.w,
                  imageUrl: bloc.vendorDetails.business_logo,
                  placeHolder: Assets.assetsImagesLogo,
                ),
                Positioned(
                  left: 30,
                  bottom: -30,
                  child: Container(
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      border: Border.all(color: primary),
                    ),
                    child: CachedImage(
                      imageUrl: bloc.vendorDetails.business_logo,
                    ),
                  ),
                )
              ],
            ),
            vSpace(5),
            BlocBuilder<VendorBloc, VendorState>(
              builder: (context, state) {
                return state.maybeWhen(
                  loading: () => const LoadingOptionVendorDetails(),
                  orElse: () {
                    return Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        InkWell(
                          onTap: () {
                            appRoute.navigate(const ReviewRoute());
                          },
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              const Icon(Icons.star, color: Colors.yellow),
                              hSpace(1),
                              Text(bloc.vendorDetails.num_of_reviews.toString())
                            ],
                          ),
                        ),
                        InkWell(
                          onTap: () {},
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              SvgPicture.asset(
                                Assets.assetsImagesDelivery,
                              ),
                              hSpace(1),
                              const Text('free')
                            ],
                          ),
                        ),
                        InkWell(
                          onTap: () {},
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Icon(Icons.alarm, color: primary),
                              hSpace(1),
                              const Text('30 mins')
                            ],
                          ),
                        ),
                      ],
                    );
                  },
                );
              },
            ),
            vSpace(3),
            BlocBuilder<VendorBloc, VendorState>(
              builder: (context, state) {
                return state.maybeWhen(
                  // loading: ()=,
                  orElse: () {
                    return Column(
                      children: [
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            bloc.vendorDetails.business_name,
                            style: tstyle.headlineSmall!.copyWith(
                              fontWeight: FontWeight.bold,
                            ),
                          ).margin(
                            margin: const EdgeInsets.only(left: 20),
                          ),
                        ),
                        vSpace(1),
                        Align(
                          alignment: AlignmentDirectional.topStart,
                          child: Text(bloc.vendorDetails.description).margin(
                            margin: const EdgeInsets.symmetric(horizontal: 20),
                          ),
                        ),
                      ],
                    );
                  },
                );
              },
            ),
            vSpace(1),
            if (widget.type == 'booking') ...[
              // ListView.builder(
              //   itemCount: bloc.,
              // )
            ] else
              ProductVendorDetailsPage(id: widget.id),
          ],
        ),
      ),
    );
  }
}
