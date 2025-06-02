import 'package:auto_route/auto_route.dart';
import 'package:bot_toast/bot_toast.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:prezza/config/txt_themes.dart';
import 'package:prezza/core/extension/widget_ext.dart';
import 'package:prezza/core/helper/tools.dart';
import 'package:prezza/core/service/hive_storage.dart';
import 'package:prezza/core/service/routes.gr.dart';
import 'package:prezza/core/shared/widgets/qun_widget.dart';
import 'package:prezza/core/shared/widgets/under_montains.dart';
import 'package:prezza/features/cart/presentation/bloc/cart_bloc.dart';
import 'package:prezza/features/products/presentation/bloc/product_bloc.dart';
import 'package:prezza/features/products/presentation/widgets/product_item_prezza.dart';
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
  final GlobalKey _scrollKey = GlobalKey(); // Key for scrollable widget
  final ScrollController _scrollController = ScrollController();
  late TutorialCoachMark tutorialCoachMark;

  @override
  void initState() {
    bloc = ProductBloc.get(context);
    bloc.add(ProductEvent.getProductById(widget.id));
    // showTutorial(); // Show tutorial after UI is loaded
    super.initState();
  }

  void scrollToTargetAndShowTutorial() async {
    await Future.delayed(Duration(milliseconds: 500)); // Ensure UI is loaded

    // Get the position of the center target
    RenderBox renderBox =
        _scrollKey.currentContext?.findRenderObject() as RenderBox;
    Offset offset = renderBox.localToGlobal(Offset.zero);

    // Calculate the scroll position to bring the target into the center
    double targetScrollPosition = _scrollController.offset +
        offset.dy -
        (MediaQuery.of(context).size.height / 2) +
        (renderBox.size.height / 2);

    // Ensure the position is within scroll bounds
    double maxScroll = _scrollController.position.maxScrollExtent;
    double minScroll = _scrollController.position.minScrollExtent;
    double finalScrollPosition =
        targetScrollPosition.clamp(minScroll, maxScroll);

    // Scroll to the target position
    _scrollController.animateTo(
      finalScrollPosition,
      duration: Duration(seconds: 1),
      curve: Curves.easeInOut,
    );

    // Wait for the scroll to complete before showing tutorial
    await Future.delayed(Duration(seconds: 1));

    showTutorial(); // Show tutorial after scrolling
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
          identify: "scroll", // Unique ID for tracking
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
          shape: ShapeLightFocus.RRect, // Rounded highlight
        ),
      ],
      onFinish: () {
        HiveStorage.set(kTutorialProduct, true);
      },
    )..show(context: context); // Show tutorial
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
      body: SingleChildScrollView(
        controller: _scrollController,
        child: BlocConsumer<ProductBloc, ProductState>(
          listener: (context, state) {
            state.maybeMap(
              failure: (e) {
                BotToast.showText(text: e.err);
              },
              success: (_) {
                if (HiveStorage.get(kTutorialProduct) == null) {
                  scrollToTargetAndShowTutorial();
                }
              },
              orElse: () {},
            );
          },
          builder: (context, state) {
            return state.maybeWhen(
              loading: () => defLoadingCenter,
              failureProductDetails: (e) => FailureWidget(error: e),
              orElse: () {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CachedImage(
                      height: 300,
                      width: 100.w,
                      imageUrl: bloc.product.main_image,
                    ),
                    vSpace(3),
                    Text(
                      bloc.product.name,
                      style: tstyle.headlineSmall!
                          .copyWith(fontWeight: FontWeight.bold),
                    ).margin(
                      margin: const EdgeInsets.symmetric(horizontal: 26),
                    ),
                    vSpace(1),
                    Text(
                      bloc.product.description,
                      style: tstyle.bodyLarge,
                    ).margin(
                      margin: const EdgeInsets.symmetric(horizontal: 26),
                    ),
                    vSpace(3),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          tr.priceWithCurrency(bloc.product.price_range, 'QAR'),
                          style: tstyle.headlineSmall,
                        ),
                        Text(
                          '${tr.estimatedTime}: ${10}',
                          style: tstyle.bodyLarge!.copyWith(color: teal),
                        ),
                      ],
                    ).margin(
                      margin: const EdgeInsets.symmetric(horizontal: 26),
                    ),
                    vSpace(3),
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
                    if (bloc.product.side_items.isNotEmpty) ...[
                      vSpace(3),
                      Column(
                        key: _scrollKey,
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
                    vSpace(3),
                    if (bloc.product.extras.isNotEmpty) ...[
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
                              return ListView.builder(
                                itemCount: bloc.products.length,
                                scrollDirection: Axis.horizontal,
                                itemBuilder: (context, index) {
                                  final product = bloc.products[index];
                                  return ProductItemPrezza(
                                    product: product,
                                  );
                                },
                              );
                            },
                            orElse: () {
                              return const Icon(Icons.error);
                            },
                          );
                        },
                      ),
                    ),
                    vSpace(3),
                    Visibility(
                      visible: usr.user.user_type == UserType.customer.name,
                      child: Card(
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
                    ),
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
      bottomNavigationBar: !isCustomer
          ? null
          : Card(
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
                                (num.parse(bloc.selectedSize['price']
                                            .toString()) +
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
            ),
    );
  }
}
