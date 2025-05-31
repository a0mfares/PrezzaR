import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:prezza/core/extension/widget_ext.dart';
import 'package:prezza/core/helper/tools.dart';
import 'package:prezza/core/shared/widgets/toggle_btn.dart';
import 'package:prezza/features/products/presentation/bloc/product_bloc.dart';
import 'package:prezza/features/products/presentation/widgets/product_item.dart';

import '../../../../core/constants/assets.dart';
import '../../../../core/helper/widgets.dart';
import '../../../../core/service/routes.gr.dart';
import '../../../../core/shared/widgets/under_montains.dart';
import '../../../../prezza_page.dart';

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
    widget.onDisposePage!;

    super.dispose();
  }

  @override
  void initState() {
    bloc = ProductBloc.get(context);
    bloc.add(const ProductEvent.getProdcuts());
    bloc.add(
        ProductEvent.getProductCateogries(business.business_category.name,'vendor'));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    widget.onStartPage!();
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
                  ProductBloc.get(context)
                      .add(const ProductEvent.getProdcuts());
                  context.maybePop();
                },
                image: Assets.assetsImagesSuccessGif,
              );
            }
          },
          orElse: () {},
        );
      },
      builder: (context, state) => state.maybeWhen(orElse: () {
        return Scaffold(
          appBar: AppBar(
            title: Text(tr.foodList),
            actions: bloc.isProductSelection
                ? [
                    InkWell(
                      onTap: () {
                        bloc.productIds.clear();
                        bloc.add(const ProductEvent.changeStatus(false));
                      },
                      child: const Icon(Icons.cancel),
                    ),
                    hSpace(3),
                    InkWell(
                      onTap: () {
                        bloc.add(const ProductEvent.toggleSelect(''));
                      },
                      child: const Icon(Icons.select_all),
                    ),
                    hSpace(3),
                    InkWell(
                      onTap: () {
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
                      child: SvgPicture.asset(Assets.assetsImagesTrashOutlin),
                    ),
                    hSpace(3),
                  ]
                : null,
          ).prezzaLeading(
            canBack: false,
          ),
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              vSpace(3),
              Text(
                tr.categories,
              ).margin(margin: const EdgeInsets.symmetric(horizontal: 20)),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Expanded(
                    child: BlocBuilder<ProductBloc, ProductState>(
                      builder: (context, state) {
                        return state.maybeWhen(
                          orElse: () {
                            return ToggleBtnPezza(
                              items:
                                  bloc.categories.map((e) => e.name).toList(),
                              onSelectedItem: (v) {
                                bloc.add(ProductEvent.selectCategory(v, false));
                              },
                              selectedItem: bloc.selectedCategory,
                            );
                          },
                        );
                      },
                    ),
                  ),
                  hSpace(3),
                ],
              ),
              vSpace(3),
              BlocBuilder<ProductBloc, ProductState>(
                builder: (context, state) {
                  return state.maybeWhen(
                    orElse: () {
                      return Text(
                        '${bloc.selectedCategory} (${bloc.products.length})',
                      ).margin(
                          margin: const EdgeInsets.symmetric(horizontal: 20));
                    },
                  );
                },
              ),
              vSpace(3),
              const Divider(),
              Expanded(
                child: BlocBuilder<ProductBloc, ProductState>(
                  builder: (context, state) {
                    return state.maybeWhen(
                      loading: () => defLoadingCenter,
                      failureProducts: (v) => FailureWidget(error: v),
                      orElse: () {
                        return ListView.builder(
                          itemCount: bloc.products.length,
                          itemBuilder: (context, index) {
                            final item = bloc.products[index];
                            if (bloc.isProductSelection) {
                              return Row(
                                children: [
                                  Expanded(
                                    child: ProductItem(
                                      product: item,
                                    ),
                                  ),
                                  Checkbox(
                                    value: bloc.productIds.contains(item.uuid),
                                    onChanged: (v) {
                                      bloc.add(
                                          ProductEvent.toggleSelect(item.uuid));
                                    },
                                  ),
                                ],
                              );
                            }
                            return ProductItem(
                              product: item,
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
      }),
    );
  }
}
//todo handle this button
/*   InkWell(
                  onTap: () {
                    showPrezzaBtm(
                      context,
                      Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          TextFormField(
                            controller: bloc.categoryName,
                            decoration: InputDecoration(
                              hintText: tr.writeHere,
                            ),
                          ).prezaa(label: tr.nameCategory),
                          vSpace(3),
                          Row(
                            children: [
                              Expanded(
                                child: TextButton(
                                  onPressed: () {},
                                  child: Text(tr.cancel),
                                ),
                              ),
                              hSpace(3),
                              BlocBuilder<ProductBloc, ProductState>(
                                  builder: (context, state) {
                                return Expanded(
                                  child: ElevatedButton(
                                    onPressed: () {
                                      bloc.add(const ProductEvent
                                          .addProductCategory());
                                      bloc.add(const ProductEvent
                                          .getProductCateogries());
                                    },
                                    child: state.maybeWhen(
                                      loading: () => defLoading,
                                      orElse: () {
                                        return Text(tr.addCategory);
                                      },
                                    ),
                                  ),
                                );
                              }),
                            ],
                          )
                        ],
                      ),
                    );
                  },
                  child: CircleAvatar(
                    radius: 30,
                    backgroundColor: lightCream,
                    child: Icon(Icons.add_rounded, color: primary, size: 30),
                  ),
                ), */
