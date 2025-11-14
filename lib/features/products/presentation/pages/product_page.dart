import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:prezza/config/custom_colors.dart';
import 'package:prezza/core/extension/widget_ext.dart';
import 'package:prezza/core/helper/tools.dart';
import 'package:prezza/core/shared/widgets/toggle_btn.dart';
import 'package:prezza/features/products/presentation/bloc/product_bloc.dart';
import 'package:prezza/features/products/presentation/widgets/product_item.dart';

import '../../../../core/constants/assets.dart';
import '../../../../core/helper/widgets.dart';
import '../../../../core/shared/widgets/under_montains.dart';

@RoutePage()
class ProductsPage extends StatefulWidget {
  const ProductsPage({super.key, this.onStartPage, this.onDisposePage});
  final VoidCallback? onStartPage;
  final VoidCallback? onDisposePage;
  
  @override
  State<ProductsPage> createState() => _ProductsPageState();
}

class _ProductsPageState extends State<ProductsPage> {
  late final ProductBloc bloc;
  
  @override
  void dispose() {
    widget.onDisposePage?.call();
    super.dispose();
  }

  @override
  void initState() {
    bloc = ProductBloc.get(context);
    bloc.add(const ProductEvent.getProdcuts());
    bloc.add(
        ProductEvent.getProductCateogries(business.business_category.name, 'vendor'));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    widget.onStartPage?.call();
    return BlocConsumer<ProductBloc, ProductState>(
      listener: (context, state) {

        state.maybeMap(
          
          deleteSuccess: (r) {
            if (mounted) {
              showDialogPrezza(
                context: context,
                title: tr.deletedProduct,
                subTitle: tr.productDeletedSuccess,
                onTap: () {
                  ProductBloc.get(context).add(const ProductEvent.getProdcuts());
                  context.maybePop();
                },
                image: Assets.assetsImagesSuccessGif,
              );
            }
          },
          orElse: () {},
        );
      },
      builder: (context, state) => state.maybeWhen(
        loading: () => Center(
                      child: LoadingAnimationWidget.beat(color: primary, size: 30),
                    ),
        orElse: () {
          return Scaffold(
            backgroundColor: floralWhite,
            appBar: AppBar(
              elevation: 0,
              backgroundColor: floralWhite,
              title: Text(
                tr.foodList,
                style: tstyle.headlineSmall!.copyWith(fontWeight: FontWeight.bold),
              ),
              actions: bloc.isProductSelection
                  ? [
                      IconButton(
                        onPressed: () {
                          bloc.productIds.clear();
                          bloc.add(const ProductEvent.changeStatus(false));
                        },
                        icon: const Icon(Icons.cancel),
                      ),
                      IconButton(
                        onPressed: () {
                          bloc.add(const ProductEvent.toggleSelect(''));
                        },
                        icon: const Icon(Icons.select_all),
                      ),
                      IconButton(
                        onPressed: () {
                          if (bloc.productIds.isNotEmpty) {
                            showDialogPrezza(
                              context: context,
                              title: tr.deleteProduct,
                              subTitle: tr.areUSure,
                              onTap: () {
                                bloc.add(const ProductEvent.deleteProduct(''));
                                context.maybePop();
                              },
                              showCancel: true,
                            );
                          }
                        },
                        icon: SvgPicture.asset(
                          Assets.assetsImagesTrashOutlin,
                          width: 24,
                        ),
                      ),
                    ]
                  : null,
            ).prezzaLeading(canBack: false),
            body: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Categories Section
                Container(
                  color: floralWhite,
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Text(
                          tr.categories,
                          style: tstyle.titleMedium!.copyWith(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      vSpace(2),
                      BlocBuilder<ProductBloc, ProductState>(
                        builder: (context, state) {
                          return state.maybeWhen(
                            orElse: () {
                              return ToggleBtnPezza(
                                items: bloc.categories.map((e) => e.name).toList(),
                                onSelectedItem: (v) {
                                  bloc.add(ProductEvent.selectCategory(v, false));
                                },
                                selectedItem: bloc.selectedCategory,
                              );
                            },
                          );
                        },
                      ),
                    ],
                  ),
                ),
                vSpace(1),
                // Product Count
                Container(
                  color: floralWhite,
                  padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                  child: BlocBuilder<ProductBloc, ProductState>(
                    builder: (context, state) {
                      return state.maybeWhen(
                        orElse: () {
                          return Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                '${bloc.selectedCategory} (${bloc.products.length})',
                                style: tstyle.titleSmall!.copyWith(
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              if (bloc.products.isNotEmpty)
                                Text(
                                  tr.total("${bloc.products.length}"),
                                  style: TextStyle(
                                    color: Colors.grey[600],
                                    fontSize: 12,
                                  ),
                                ),
                            ],
                          );
                        },
                      );
                    },
                  ),
                ),
                vSpace(1),
                // Products List
                Expanded(
                  child: BlocBuilder<ProductBloc, ProductState>(
                    builder: (context, state) {
                      return state.maybeWhen(
                        loading: () => defLoadingCenter,
                        failureProducts: (v) => FailureWidget(error: v),
                        orElse: () {
                          if (bloc.products.isEmpty) {
                            return Center(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.inventory_2_outlined,
                                    size: 80,
                                    color: Colors.grey[300],
                                  ),
                                  vSpace(2),
                                  Text(
                                    tr.noProductsFound,
                                    style: TextStyle(
                                      color: Colors.grey[600],
                                      fontSize: 16,
                                    ),
                                  ),
                                ],
                              ),
                            );
                          }
                          
                          return ListView.builder(
                            padding: const EdgeInsets.only(bottom: 80),
                            itemCount: bloc.products.length,
                            itemBuilder: (context, index) {
                              final item = bloc.products[index];
                              if (bloc.isProductSelection) {
                                return Row(
                                  children: [
                                    Expanded(
                                      child: ProductItem(product: item),
                                    ),
                                    Checkbox(
                                      value: bloc.productIds.contains(item.uuid),
                                      onChanged: (v) {
                                        bloc.add(ProductEvent.toggleSelect(item.uuid));
                                      },
                                    ),
                                  ],
                                );
                              }
                              return ProductItem(product: item);
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
        },
      ),
    );
  }
}