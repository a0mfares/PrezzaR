import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:prezza/core/extension/widget_ext.dart';
import 'package:prezza/core/helper/tools.dart';
import 'package:prezza/core/shared/widgets/cached_image.dart';
import 'package:prezza/core/shared/widgets/under_montains.dart';
import 'package:prezza/prezza_page.dart';

import '../../../../core/constants/assets.dart';
import '../../../../core/service/routes.gr.dart';
import '../bloc/cart_bloc.dart';

@RoutePage()
class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  late final CartBloc bloc;

  @override
  void initState() {
    bloc = CartBloc.get(context);
    bloc.add(const CartEvent.getUserCart());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(tr.cart),
      ).prezzaLeading(),
      body: BlocBuilder<CartBloc, CartState>(
        builder: (context, state) {
          return state.maybeWhen(
            failureGetUserCart: (er) => FailureWidget(error: er),
            loading: () => defLoadingCenter,
            success: () {
              if (bloc.userCart.isEmpty) {
                return const EmptyCart();
              }
              return ListView.builder(
                itemCount: bloc.userCart.length,
                itemBuilder: (context, index) {
                  final usercart = bloc.userCart[index];

                  return ListTile(
                    onTap: () {
                      appRoute.navigate(const CartDetailsRoute());
                      bloc.businessId = usercart.bussiness_info.id.toString();
                      bloc.cartId = usercart.uuid;
                    },
                    leading: CachedImage(
                        imageUrl: usercart.bussiness_info.business_logo),
                    title: Text(usercart.bussiness_info.business_name),
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
    );
  }
}

class EmptyCart extends StatelessWidget {
  const EmptyCart({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgPicture.asset(Assets.assetsImagesEmptyCart),
          vSpace(2),
          Text(tr.cartEmpty, style: tstyle.headlineSmall),
          Text(tr.trending),
          vSpace(3),
          ElevatedButton(
            onPressed: () {
              appRoute.back();
            },
            child: Text(
              tr.discoverProducts,
            ),
          ),
        ],
      ),
    );
  }
}
