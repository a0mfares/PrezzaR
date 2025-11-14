import 'package:auto_route/auto_route.dart';
import 'package:bot_toast/bot_toast.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:prezza/config/txt_themes.dart';
import 'package:prezza/core/extension/widget_ext.dart';
import 'package:prezza/core/helper/tools.dart';
import 'package:prezza/core/helper/widgets.dart';
import 'package:prezza/core/service/hive_storage.dart';
import 'package:prezza/core/service/routes.gr.dart';
import 'package:prezza/core/shared/widgets/under_montains.dart';
import 'package:prezza/features/cart/presentation/bloc/cart_bloc.dart';
import 'package:prezza/features/products/presentation/bloc/product_bloc.dart';
import 'package:prezza/features/products/presentation/widgets/product_item_prezza.dart';
import 'package:prezza/features/products/presentation/widgets/product_item.dart';
import 'package:prezza/prezza_page.dart';
import 'package:sizer/sizer.dart';
import 'package:tutorial_coach_mark/tutorial_coach_mark.dart';

import '../../../../config/custom_colors.dart';
import '../../../../core/constants/assets.dart';
import '../../../../core/shared/widgets/cached_image.dart';
import '../../../../core/shared/widgets/toggle_btn.dart';

@RoutePage()
class ProductDetailsPage extends StatefulWidget {
  const ProductDetailsPage({super.key, required this.id});
  final String id;
  @override
  State<ProductDetailsPage> createState() => _ProductDetailsPageState();
}

class _ProductDetailsPageState extends State<ProductDetailsPage> {
  late final ProductBloc bloc;
  String selectedItem = 'item 1';
  bool isAdded = false;
  final GlobalKey _scrollKey = GlobalKey();
  final ScrollController _scrollController = ScrollController();
  late TutorialCoachMark tutorialCoachMark;

  @override
  void initState() {
    bloc = ProductBloc.get(context);
    bloc.add(ProductEvent.getProductById(widget.id));
    // Initialize products list to prevent null errors
    bloc.products = [];
    super.initState();
  }

  void scrollToTargetAndShowTutorial() async {
    await Future.delayed(const Duration(milliseconds: 500));

    RenderBox renderBox =
        _scrollKey.currentContext?.findRenderObject() as RenderBox;
    Offset offset = renderBox.localToGlobal(Offset.zero);

    double targetScrollPosition = _scrollController.offset +
        offset.dy -
        (MediaQuery.of(context).size.height / 2) +
        (renderBox.size.height / 2);

    double maxScroll = _scrollController.position.maxScrollExtent;
    double minScroll = _scrollController.position.minScrollExtent;
    double finalScrollPosition =
        targetScrollPosition.clamp(minScroll, maxScroll);

    _scrollController.animateTo(
      finalScrollPosition,
      duration: const Duration(seconds: 1),
      curve: Curves.easeInOut,
    );

    await Future.delayed(const Duration(seconds: 1));

    showTutorial();
  }

  @override
  void dispose() {
    tutorialCoachMark.skip();
    super.dispose();
  }

  void showTutorial() {
    tutorialCoachMark = TutorialCoachMark(
      colorShadow: lightCream,
      textSkip: tr.skip,
      paddingFocus: 10,
      opacityShadow: 0.8,
      targets: [
        TargetFocus(
          identify: "scroll",
          keyTarget: _scrollKey,
          alignSkip: Alignment.topRight,
          contents: [
            TargetContent(
              align: ContentAlign.top,
              child: Text(
                tr.youCanScroll,
                style: TextStyle(color: primary, fontSize: 20),
                textAlign: TextAlign.center,
              ),
            ),
          ],
          shape: ShapeLightFocus.RRect,
        ),
      ],
      onFinish: () {
        HiveStorage.set(kTutorialProduct, true);
      },
    )..show(context: context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: floralWhite,
        title: !isCustomer
            ? Text(
                tr.itemDetails,
                style: tstyle.headlineSmall!.copyWith(fontWeight: FontWeight.bold),
              )
            : null,
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: InkWell(
              onTap: () {
                if (!isCustomer) {
                  appRoute.navigate(ProductAddRoute(isEditMod: true));
                } else {
                  appRoute.navigate(const CartRoute());
                }
              },
              child: CircleAvatar(
                backgroundColor: lightCream,
                radius: 25,
                child: SvgPicture.asset(
                  !isCustomer
                      ? Assets.assetsImagesEdit
                      : Assets.assetsImagesShoppingCart,
                  width: 17,
                  colorFilter: ColorFilter.mode(primary, BlendMode.srcIn),
                ),
              ),
            ),
          ),
        ],
      ).prezzaLeading(),
      body: BlocListener<ProductBloc, ProductState>(
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
            deleteSuccess: (_) {
              BotToast.showText(text: tr.productDeletedSuccess);
              appRoute.maybePop();
            },
            success: (_) {
              if (isCustomer &&
                  HiveStorage.get(kTutorialProduct, defaultValue: null) ==
                      null) {
                scrollToTargetAndShowTutorial();
              }
            },
            orElse: () {},
          );
        },
        child: SingleChildScrollView(
          controller: _scrollController,
          child: BlocBuilder<ProductBloc, ProductState>(
            builder: (context, state) {
              return state.maybeWhen(
                loading: () => defLoadingCenter,
                failureProductDetails: (e) => FailureWidget(error: e),
                orElse: () {
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Product Image
                      CachedImage(
                        height: 300,
                        width: 100.w,
                        imageUrl: bloc.product.main_image,
                      ),
                      vSpace(3),
                      
                      // Product Name
                      Text(
                        bloc.product.name,
                        style: tstyle.headlineSmall!
                            .copyWith(fontWeight: FontWeight.bold),
                      ).margin(
                        margin: const EdgeInsets.symmetric(horizontal: 26),
                      ),
                      vSpace(1),
                      
                      // Product Description
                      Text(
                        bloc.product.description,
                        style: tstyle.bodyLarge,
                      ).margin(
                        margin: const EdgeInsets.symmetric(horizontal: 26),
                      ),
                      vSpace(3),
                      
                      // Product Price
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            tr.priceWithCurrency(bloc.product.price_range, 'QAR'),
                            style: tstyle.headlineSmall,
                          ),
                        ],
                      ).margin(
                        margin: const EdgeInsets.symmetric(horizontal: 26),
                      ),
                      
                      // Estimated Time (Customer only)
                      if (isCustomer) ...[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              '${tr.estimatedTime}: ${10}',
                              style: tstyle.bodyLarge!.copyWith(color: teal),
                            ),
                          ],
                        ).margin(
                          margin: const EdgeInsets.symmetric(horizontal: 26),
                        ),
                        vSpace(3),
                      ],
                      
                      // Product Size
                      ListTile(
                        title: Text(
                          tr.size,
                          style:
                              tstyle.headlineSmall!.copyWith(color: Colors.grey),
                        ),
                        subtitle: (bloc.selectedSize['name'] as String).isNotEmpty
                            ? null
                            : Text(
                                tr.required,
                                style: redText,
                              ),
                      ),
                      ToggleBtnPezza(
                        items: bloc.product.product_sizes
                            .map((e) => e.name)
                            .toList(),
                        onSelectedItem: (v) {
                          bloc.add(ProductEvent.selectSize(v));
                        },
                        bgColor: lightCream,
                        txtColor: primary,
                        selectedItem: bloc.selectedSize['name'],
                      ),
                      
                      // Side Items
                      if (bloc.product.side_items.isNotEmpty) ...[
                        vSpace(3),
                        Column(
                          key: isCustomer ? _scrollKey : null,
                          children: bloc.product.side_items
                              .map(
                                (e) => ExpansionTile(
                                  title: Text(tr.chooseYourSideItem(e.Question)),
                                  subtitle: bloc.selectedSideItems
                                          .containsKey(e.Question)
                                      ? null
                                      : Text(
                                          tr.required,
                                          style: redText,
                                        ),
                                  children: e.side_items
                                      .map((item) => RadioListTile(
                                            value: item['id'.toString()],
                                            title: Text(item['name']),
                                            controlAffinity:
                                                ListTileControlAffinity.trailing,
                                            groupValue: bloc
                                                .selectedSideItems[e.Question],
                                            onChanged: (v) {
                                              bloc.add(
                                                ProductEvent.selecteSideItem(
                                                  {e.Question: v},
                                                ),
                                              );
                                            },
                                          ))
                                      .toList(),
                                ),
                              )
                              .toList(),
                        ),
                      ],
                      
                      // Extras
                      if (bloc.product.extras.isNotEmpty) ...[
                        vSpace(3),
                        Text(
                          tr.extras,
                          style:
                              tstyle.headlineSmall!.copyWith(color: Colors.grey),
                        ).margin(
                          margin: const EdgeInsets.symmetric(horizontal: 26),
                        ),
                        vSpace(3),
                        Column(
                          children: bloc.product.extras
                              .map(
                                (e) => Column(
                                  children: [
                                    const Divider(),
                                    CheckboxListTile(
                                      value: bloc.selectedExtras.contains(e),
                                      title: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(e.name),
                                          Text(
                                            '(+ ${tr.priceWithCurrency(e.price.toStringAsFixed(0), 'QAR')})',
                                            style: tstyle.bodyLarge!
                                                .copyWith(color: Colors.grey),
                                          ),
                                        ],
                                      ),
                                      onChanged: (v) {
                                        bloc.add(ProductEvent.selectExtra(e));
                                      },
                                    ).prezzaCheckBox(
                                      side: ListTileControlAffinity.trailing,
                                    ),
                                  ],
                                ),
                              )
                              .toList(),
                        ),
                        const Divider(),
                      ],
                      
                      // Often Ordered With Section
                      vSpace(3),
                      Text(
                        tr.oftenOrderedWith,
                        style: tstyle.headlineSmall!.copyWith(color: Colors.grey),
                      ).margin(
                        margin: const EdgeInsets.symmetric(horizontal: 26),
                      ),
                      vSpace(2),
                      SizedBox(
                        height: 200,
                        width: 100.w,
                        child: BlocBuilder<ProductBloc, ProductState>(
                          builder: (context, state) {
                            return state.maybeWhen(
                              loading: () => defLoadingCenter,
                              success: () {
                                // Check if products list is not null and not empty
                                if (bloc.products != null && bloc.products.isNotEmpty) {
                                  return ListView.builder(
                                    itemCount: bloc.products.length,
                                    scrollDirection: Axis.horizontal,
                                    itemBuilder: (context, index) {
                                      final product = bloc.products[index];
                                      return isCustomer
                                          ? ProductItemPrezza(product: product)
                                          : ProductItem(product: product);
                                    },
                                  );
                                } else {
                                  // Return empty container or placeholder when products is null or empty
                                  return Container(
                                    height: 200,
                                    alignment: Alignment.center,
                                    child: Text(
                                      tr.noProductsAvailable,
                                      style: tstyle.bodyMedium,
                                    ),
                                  );
                                }
                              },
                              orElse: () {
                                // Return empty container or placeholder when state is not success
                                return Container(
                                  height: 200,
                                  alignment: Alignment.center,
                                  child: Text(
                                    tr.noProductsAvailable,
                                    style: tstyle.bodyMedium,
                                  ),
                                );
                              },
                            );
                          },
                        ),
                      ),
                      vSpace(3),
                      
                      // Special Request (Customer only)
                      if (isCustomer) ...[
                        Card(
                          color: floralWhite,
                          margin: const EdgeInsets.symmetric(horizontal: 60),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                tr.anySpecialRequest,
                                style: tstyle.bodyLarge!
                                    .copyWith(fontWeight: FontWeight.bold),
                              ).margin(
                                margin:
                                    const EdgeInsets.symmetric(horizontal: 10),
                              ),
                              TextFormField(
                                controller: bloc.specialReq,
                                decoration: InputDecoration(
                                  hintText: tr.writeHere,
                                ),
                              ).prezaa(margin: const EdgeInsets.all(10)),
                            ],
                          ),
                        ),
                      ],
                      vSpace(5),
                    ],
                  ).margin(
                    margin: const EdgeInsets.symmetric(horizontal: 20),
                  );
                },
              );
            },
          ),
        ),
      ),
      bottomNavigationBar: !isCustomer
          ? _buildVendorBottomBar()
          : _buildCustomerBottomBar(),
    );
  }

  // Vendor Bottom Bar (Delete Product)
  Widget _buildVendorBottomBar() {
    return Card(
      elevation: 5,
      color: Colors.white,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(15),
          topRight: Radius.circular(15),
        ),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          vSpace(4),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Expanded(
                child: ElevatedButton.icon(
                  onPressed: () {
                    showDialogPrezza(
                      context: context,
                      title: tr.deleteProduct,
                      subTitle: tr.areUSure,
                      onTap: () {
                        bloc.add(ProductEvent.deleteProduct(bloc.product.uuid));
                        context.maybePop();
                      },
                      showCancel: true,
                    );
                  },
                  icon: const Icon(Icons.delete),
                  label: Text(tr.deleteProduct),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: primary,
                    foregroundColor: Colors.white,
                  ),
                ),
              ),
            ],
          ),
          vSpace(3),
        ],
      ).margin(
        margin: const EdgeInsets.symmetric(horizontal: 20),
      ),
    );
  }

  // Customer Bottom Bar (Add to Cart)
  Widget _buildCustomerBottomBar() {
    return Card(
      elevation: 5,
      color: Colors.white,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(15),
          topRight: Radius.circular(15),
        ),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          vSpace(4),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Align(
                alignment: AlignmentDirectional.topStart,
                child: BlocBuilder<ProductBloc, ProductState>(
                  builder: (context, state) {
                    return Text(
                      tr.priceWithCurrency(
                        (num.parse(bloc.selectedSize['price'].toString()) +
                                bloc.totalPrice)
                            .toString(),
                        'QAR',
                      ),
                      style: redText,
                    );
                  },
                ),
              ),
            ],
          ),
          vSpace(3),
          BlocConsumer<CartBloc, CartState>(
            listener: (context, state) {
              state.maybeMap(
                failureAddItem: (v) {
                  BotToast.showText(text: v.err);
                },
                successAdded: (v) {
                  BotToast.showText(text: 'success added');
                },
                orElse: () {},
              );
            },
            builder: (context, state) {
              return ElevatedButton(
                onPressed: () {
                  bloc.add(const ProductEvent.addToCart());
                },
                child: state.maybeWhen(
                  loading: () => defLoadingCenter,
                  orElse: () {
                    return Text(tr.addToCart);
                  },
                ),
              );
            },
          ),
          vSpace(3),
        ],
      ).margin(
        margin: const EdgeInsets.symmetric(horizontal: 20),
      ),
    );
  }
}