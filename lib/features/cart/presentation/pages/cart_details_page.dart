import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:prezza/config/custom_colors.dart';
import 'package:prezza/config/txt_themes.dart';
import 'package:prezza/core/constants/assets.dart';
import 'package:prezza/core/extension/widget_ext.dart';
import 'package:prezza/core/helper/tools.dart';
import 'package:prezza/core/service/routes.gr.dart';
import 'package:prezza/core/shared/widgets/under_montains.dart';
import 'package:prezza/features/cart/presentation/bloc/cart_bloc.dart';
import 'package:prezza/features/cart/presentation/widgets/product_often_item_cart.dart';
import 'package:prezza/features/location/presentation/bloc/location_bloc.dart';
import 'package:prezza/prezza_page.dart';
import 'package:sizer/sizer.dart';

import '../widgets/cart_item.dart';

@RoutePage()
class CartDetailsPage extends StatefulWidget {
  const CartDetailsPage({super.key});
  @override
  State<CartDetailsPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartDetailsPage> {
  late final CartBloc bloc;
  bool isBreakdown = false;

  @override
  void initState() {
    bloc = CartBloc.get(context);
    bloc.add(const CartEvent.getCartDetails());
    LocationBloc.get(context).add(const LocationEvent.getInitialLocation());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(tr.cart),
        actions: [
          InkWell(
            onTap: () {
              bloc.add(const CartEvent.clearCart());
            },
            child: Padding(
              padding: const EdgeInsets.all(15),
              child: Text(
                tr.clearCart,
                style: clickableText.copyWith(
                  fontSize: 20,
                  color: Colors.black,
                  fontWeight: FontWeight.normal,
                ),
              ),
            ),
          ),
        ],
      ).prezzaLeading(),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              BlocBuilder<CartBloc, CartState>(
                builder: (context, state) {
                  return state.maybeWhen(
                    failureGetCartDetails: (v) => FailureWidget(error: v),
                    loading: () => defLoadingCenter,
                    orElse: () {
                      return SizedBox(
                        // height: 40.h,
                        child: ListView.builder(
                          shrinkWrap: true,
                          itemCount: bloc.cartDetails.cart_items.length,
                          itemBuilder: (context, index) {
                            final cartItem = bloc.cartDetails.cart_items[index];
                            return CartItem(
                                cartItem: cartItem, bloc: bloc, widget: widget);
                          },
                        ),
                      );
                    },
                    // orElse: () {
                    //   return const UnderMontains();
                    // },
                  );
                },
              ),
              vSpace(3),
              Align(
                alignment: AlignmentDirectional.topStart,
                child: Text(
                  tr.myLikeAdd,
                  style: tstyle.headlineSmall!.copyWith(color: Colors.grey),
                ).margin(margin: const EdgeInsets.symmetric(horizontal: 20)),
              ),
              vSpace(3),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: SizedBox(
                  height: 200,
                  width: 100.w,
                  child: BlocBuilder<CartBloc, CartState>(
                    builder: (context, state) {
                      return state.maybeWhen(
                        failureGetOftenProductCart: (v) =>
                            FailureWidget(error: v, width: 20.w),
                        orElse: () {
                          return ListView.builder(
                            itemCount: bloc.products.length,
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (context, index) {
                              final product = bloc.products[index];
                              return ProductOftenItemCart(
                                product: product,
                              );
                            },
                          );
                        },
                        loading: () => defLoadingCenter,
                      );
                    },
                  ),
                ),
              ),
              vSpace(3),
              Card(
                margin: const EdgeInsets.symmetric(horizontal: 20),
                color: Colors.white,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)),
                elevation: 3,
                child: Column(
                  children: [
                    Align(
                      alignment: AlignmentDirectional.topStart,
                      child: Text(
                        tr.addDiscount,
                        style: tstyle.bodyLarge!.copyWith(color: Colors.grey),
                      ).margin(
                          margin: const EdgeInsets.symmetric(horizontal: 20)),
                    ),
                    vSpace(2),
                    TextFormField(
                      decoration: InputDecoration(
                        hintText: tr.promoCode,
                        prefixIcon: SvgPicture.asset(
                          Assets.assetsImagesTicketDiscount,
                        ),
                      ),
                    ).prezaa(
                        margin: const EdgeInsets.symmetric(
                            horizontal: 20, vertical: 5))
                  ],
                ).margin(margin: const EdgeInsets.all(10)),
              ),
              vSpace(3),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Card(
        elevation: 5,
        color: Colors.white,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
        ),
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 300),
          height: isBreakdown ? 270 : 200,
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  BlocBuilder<CartBloc, CartState>(
                    builder: (context, state) {
                      return state.maybeWhen(
                        orElse: () {
                          return Text(
                            tr.total(
                              tr.priceWithCurrency(
                                  bloc.cartDetails.cart_total_price.toString(),
                                  'QARs'),
                            ),
                          );
                        },
                      );
                    },
                  ),
                  InkWell(
                    onTap: () {
                      isBreakdown = !isBreakdown;
                      setState(() {});
                    },
                    child: Text(
                      tr.breakdown,
                      style: clickableText.copyWith(color: primary),
                    ),
                  ),
                ],
              ),
              if (isBreakdown) ...[
                vSpace(3),
                SizedBox(
                  height: 50,
                  child: BlocBuilder<CartBloc, CartState>(
                    builder: (context, state) {
                      return state.maybeWhen(
                        loading: () => defLoadingCenter,
                        failureGetCartDetails: (v) => FailureWidget(error: v),
                        orElse: () {
                          return ListView.builder(
                            itemCount: bloc.cartDetails.cart_items.length,
                            itemBuilder: (context, index) {
                              final product =
                                  bloc.cartDetails.cart_items[index];
                              return Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(product.product_name),
                                  Text(tr.priceWithCurrency(
                                      product.price.toString(), 'QAR'))
                                ],
                              );
                            },
                          );
                        },
                      );
                    },
                  ),
                )
              ],
              vSpace(2),
              BlocBuilder<CartBloc, CartState>(
                builder: (context, state) {
                  return state.maybeWhen(
                    failure: (v) => FailureWidget(error: v),
                    loading: () => defLoadingCenter,
                    success: () {
                      return Align(
                        alignment: AlignmentDirectional.topStart,
                        child: Text(
                          tr.expectedPreparingTime(4.toString()),
                          style: tstyle.bodyLarge!.copyWith(color: teal),
                        ),
                      );
                    },
                    orElse: () {
                      return const UnderMontains();
                    },
                  );
                },
              ),
              vSpace(3),
              Row(
                children: [
                  Expanded(
                    child: TextButton(
                      onPressed: () {
                        appRoute.navigate(UserLayoutHomeRoute());
                      },
                      child: Text(tr.addItem),
                    ),
                  ),
                  hSpace(3),
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () {
                        
                        appRoute.navigate(const CheckoutRoute());
                      },
                      child: Text(tr.placeOrder),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
