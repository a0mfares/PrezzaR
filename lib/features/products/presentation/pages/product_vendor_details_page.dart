import 'package:auto_route/auto_route.dart';
import 'package:bot_toast/bot_toast.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:prezza/core/helper/tools.dart';
import 'package:prezza/core/shared/widgets/toggle_btn.dart';
import 'package:prezza/core/shared/widgets/under_montains.dart';
import 'package:prezza/features/products/presentation/bloc/product_bloc.dart';
import 'package:prezza/features/products/presentation/widgets/product_item.dart';
import 'package:sizer/sizer.dart';

@RoutePage()
class ProductVendorDetailsPage extends StatefulWidget {
  const ProductVendorDetailsPage({super.key, required this.id});
  final String id;
  @override
  State<ProductVendorDetailsPage> createState() => _ProductsPageState();
}

class _ProductsPageState extends State<ProductVendorDetailsPage> {
  late final ProductBloc bloc;

  @override
  void initState() {
    bloc = ProductBloc.get(context);

    bloc.add(ProductEvent.getProductByVendorId(widget.id));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<ProductBloc, ProductState>(
      listener: (context, state) {
        state.maybeMap(
          failure: (v) {
            BotToast.showText(text: v.err);
          },
          failureProductDetails: (v) {
            BotToast.showText(text: v.err);
          },
          failureProducts: (v) {
            BotToast.showText(text: v.err);
          },
          orElse: () {},
        );
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            BlocBuilder<ProductBloc, ProductState>(
              builder: (context, state) {
                return state.maybeWhen(
                  orElse: () {
                    return ToggleBtnPezza(
                      items: bloc.categories.map((e) => e.name).toList(),
                      onSelectedItem: (v) {
                        bloc.add(ProductEvent.selectCategory(v, false));
                        bloc.add(ProductEvent.getProductByVendorId(
                            widget.id,
                            bloc.categories
                                .firstWhere((e) => e.name == v)
                                .id
                                .toString()));
                      },
                      selectedItem: bloc.selectedCategory,
                    );
                  },
                );
              },
            ),
            vSpace(3),
            BlocBuilder<ProductBloc, ProductState>(
              builder: (context, state) {
                return state.maybeWhen(
                  orElse: () {
                    return ListTile(
                      title: Text(
                        '${bloc.selectedCategory} (${bloc.products.length})',
                        style: tstyle.headlineSmall,
                      ),
                    );
                  },
                );
              },
            ),
            // vSpace(3),
            SizedBox(
              height: 70.h,
              child: BlocBuilder<ProductBloc, ProductState>(
                builder: (context, state) {
                  return state.maybeWhen(
                    loading: () => defLoadingCenter,
                    failureProducts: (err) => FailureWidget(error: err),
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
      ),
    );
  }
}
