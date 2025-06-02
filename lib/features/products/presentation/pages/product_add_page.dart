import 'dart:developer';
import 'dart:io';

import 'package:auto_route/auto_route.dart';
import 'package:bot_toast/bot_toast.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:prezza/core/constants/assets.dart';
import 'package:prezza/core/extension/widget_ext.dart';
import 'package:prezza/core/helper/tools.dart';
import 'package:prezza/core/service/routes.gr.dart';
import 'package:prezza/core/shared/widgets/cached_image.dart';
import 'package:prezza/prezza_page.dart';
import 'package:sizer/sizer.dart';

import '../../../../config/custom_colors.dart';
import '../../../../config/txt_themes.dart';
import '../../../../core/helper/widgets.dart';
import '../../../../core/shared/widgets/toggle_btn.dart';
import '../bloc/product_bloc.dart';

@RoutePage()
class ProductAddPage extends StatefulWidget {
  const ProductAddPage({super.key, this.isEditMod = false});
  final bool isEditMod;
  @override
  State<ProductAddPage> createState() => _ProductAddPageState();
}

class _ProductAddPageState extends State<ProductAddPage> {
  late final ProductBloc bloc;

  @override
  void initState() {
    bloc = ProductBloc.get(context);
    if (!widget.isEditMod) {
      bloc.add(const ProductEvent.createProductInstance());
    } else {
      bloc.add(const ProductEvent.initalizeInEditMod());
    }
    // bloc.add(const ProductEvent.getProductCateogries());
    super.initState();
  }

  @override
  void deactivate() {
    bloc.itemName.clear();
    bloc.extras.clear();
    bloc.sideItems.clear();
    bloc.description.clear();
    bloc.preparingTime = const Duration();
    bloc.productImg = File('');
    bloc.productId = '';
    bloc.selectedCategory = '';
    bloc.sizes.clear();
    bloc.selectedSize = {'name': '', 'price': 0};
    super.deactivate();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<ProductBloc, ProductState>(
      listener: (context, state) {
        state.maybeMap(
          orElse: () {},
          ereaseProductDetails: (_) {
            appRoute.removeLast();
            appRoute.navigate(VendorLayoutRoute(index: 2));
            context.maybePop();
          },
        );
      },
      child: PopScope(
        canPop: widget.isEditMod,
        onPopInvokedWithResult: (didPop, result) {
          if (didPop) {
            return;
          }
          if (context.mounted) {
            showDialogPrezza(
              context: context,
              title: tr.areSureExitProduct,
              onTap: () {
                bloc.add(ProductEvent.deleteProduct(bloc.productId));
                context.maybePop();
              },
              showCancel: true,
            );
          }
        },
        child: Scaffold(
          appBar: AppBar(
            title: Text(tr.newItems),
          ).prezzaLeading(
            onTap: widget.isEditMod
                ? null
                : () {
                    showDialogPrezza(
                      context: context,
                      title: tr.areSureExitProduct,
                      onTap: () {
                        bloc.add(ProductEvent.deleteProduct(bloc.productId));
                        context.maybePop();
                      },
                      showCancel: true,
                    );
                  },
          ),
          body: SingleChildScrollView(
            child: Form(
              key: bloc.addProductForm,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  vSpace(5),
                  BlocBuilder<ProductBloc, ProductState>(
                    builder: (context, state) {
                      return state.maybeWhen(orElse: () {
                        return TextFormField(
                          controller: bloc.itemName,
                          validator: (v) {
                            if (v!.isEmpty) {
                              return tr.requiredField;
                            }
                            return null;
                          },
                          decoration: InputDecoration(
                            hintText: tr.writeHere,
                          ),
                        ).prezaa(label: tr.itemName);
                      });
                    },
                  ),
                  vSpace(3),
                  Text(tr.uploadPhoto),
                  vSpace(1),
                  InkWell(
                    onLongPress: () {
                      bloc.add(ProductEvent.pickImage(File('')));
                    },
                    onTap: () {
                      showPrezzaImagePicker(
                        context: context,
                        onPickFromCamera: (img) {
                          bloc.add(ProductEvent.pickImage(img));
                        },
                        onPickFromGallery: (img) {
                          bloc.add(ProductEvent.pickImage(img));
                        },
                        onPickFromGalleryMulti: (img) {},
                      );
                    },
                    child: Container(
                      width: 100,
                      height: 100,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(color: Colors.black, width: 2),
                      ),
                      padding: const EdgeInsets.all(2),
                      child: BlocBuilder<ProductBloc, ProductState>(
                        builder: (context, state) {
                          return state.maybeWhen(orElse: () {
                            if (bloc.productImg.path.isNotEmpty) {
                              if (bloc.productImg.path
                                  .contains('media/product_images')) {
                                return ClipRRect(
                                  borderRadius: BorderRadius.circular(15),
                                  child: CachedImage(
                                    imageUrl: bloc.productImg.path,
                                    fit: BoxFit.cover,
                                  ),
                                );
                              }
                              return ClipRRect(
                                borderRadius: BorderRadius.circular(15),
                                child: Image.file(
                                  bloc.productImg,
                                  fit: BoxFit.cover,
                                ),
                              );
                            }
                            return SvgPicture.asset(
                                Assets.assetsImagesUploadPhoto);
                          });
                        },
                      ),
                    ),
                  ),
                  vSpace(3),
                  Text(
                    tr.categories,
                  ).margin(margin: const EdgeInsets.symmetric(horizontal: 20)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      BlocBuilder<ProductBloc, ProductState>(
                        builder: (context, state) {
                          return state.maybeWhen(
                            orElse: () {
                              return Expanded(
                                child: ToggleBtnPezza(
                                  items: bloc.categories
                                      .map((e) => e.name)
                                      .toList(),
                                  onSelectedItem: (v) {
                                    bloc.add(
                                        ProductEvent.selectCategory(v, true));
                                  },
                                  selectedItem: bloc.selectedCategory,
                                ),
                              );
                            },
                          );
                        },
                      ),
                      InkWell(
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
                                        onPressed: () {
                                          context.maybePop();
                                        },
                                        child: Text(tr.cancel),
                                      ),
                                    ),
                                    hSpace(3),
                                    BlocBuilder<ProductBloc, ProductState>(
                                        builder: (context, state) {
                                      return Expanded(
                                        child: ElevatedButton(
                                          onPressed: () {
                                            if (bloc
                                                .categoryName.text.isNotEmpty) {
                                              bloc.add(const ProductEvent
                                                  .addProductCategory());
                                            } else {
                                              BotToast.showText(
                                                  text: tr.requiredField);
                                            }
                                          },
                                          child: state.maybeWhen(
                                            loading: () => defLoadingCenter,
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
                            true,
                          );
                        },
                        child: CircleAvatar(
                          radius: 30,
                          backgroundColor: lightCream,
                          child:
                              Icon(Icons.add_rounded, color: primary, size: 30),
                        ),
                      ),
                      hSpace(3),
                    ],
                  ),
                  vSpace(3),
                  Text(
                    tr.size,
                  ).margin(margin: const EdgeInsets.symmetric(horizontal: 20)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Expanded(
                        child: BlocConsumer<ProductBloc, ProductState>(
                          listener: (context, state) {
                            state.maybeMap(
                              failure: (er) {
                                BotToast.showText(text: er.err);
                              },
                              sucessAdded: (e) {
                                context.maybePop();
                              },
                              orElse: () {},
                            );
                          },
                          builder: (context, state) {
                            return state.maybeWhen(orElse: () {
                              return ToggleBtnPezza(
                                items: bloc.sizes
                                    .map((e) => e['name'] as String)
                                    .toList(),
                                onSelectedItem: (v) {
                                  bloc.add(ProductEvent.selectSize(v));
                                },
                                selectedItem: bloc.selectedSize['name'],
                              );
                            });
                          },
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          showPrezzaBtm(
                              context,
                              Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  TextFormField(
                                    controller: bloc.sizeName,
                                    decoration: InputDecoration(
                                      hintText: tr.writeHere,
                                    ),
                                  ).prezaa(label: tr.addSize),
                                  vSpace(2),
                                  TextFormField(
                                    controller: bloc.price,
                                    inputFormatters: [
                                      FilteringTextInputFormatter.digitsOnly
                                    ],
                                    decoration: InputDecoration(
                                      hintText: tr.writeHere,
                                    ),
                                  ).prezaa(label: tr.price),
                                  vSpace(3),
                                  Row(
                                    children: [
                                      Expanded(
                                        child: TextButton(
                                          onPressed: () {
                                            context.maybePop();
                                          },
                                          child: Text(tr.cancel),
                                        ),
                                      ),
                                      hSpace(3),
                                      Expanded(
                                        child: BlocConsumer<ProductBloc,
                                            ProductState>(
                                          listener: (context, state) {
                                            state.maybeMap(
                                              failure: (er) {
                                                BotToast.showText(text: er.err);
                                              },
                                              sucessAdded: (e) {
                                                context.maybePop();
                                              },
                                              orElse: () {},
                                            );
                                          },
                                          builder: (context, state) {
                                            return ElevatedButton(
                                              onPressed: () {
                                                if (bloc.sizeName.text
                                                        .isNotEmpty &&
                                                    bloc.price.text
                                                        .isNotEmpty) {
                                                  bloc.add(const ProductEvent
                                                      .addProductSize());
                                                } else {
                                                  BotToast.showText(
                                                      text: tr.requiredField);
                                                }
                                              },
                                              child: state.maybeWhen(
                                                loading: () => defLoadingCenter,
                                                orElse: () {
                                                  return Text(tr.addSize);
                                                },
                                              ),
                                            );
                                          },
                                        ),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                              true);
                        },
                        child: CircleAvatar(
                          radius: 30,
                          backgroundColor: lightCream,
                          child:
                              Icon(Icons.add_rounded, color: primary, size: 30),
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
                          return TextFormField(
                            // controller: bloc.price,

                            readOnly: true,
                            decoration: InputDecoration(
                              hintText: bloc.selectedSize['name'].isEmpty
                                  ? tr.writeHere
                                  : bloc.selectedSize['price'].toString(),
                            ),
                          ).prezaa(label: tr.price);
                        },
                      );
                    },
                  ),
                  vSpace(3),
                  BlocBuilder<ProductBloc, ProductState>(
                    builder: (context, state) {
                      return TextField(
                        readOnly: true,
                        onTap: () {
                          showTimePickerPrezza(context, const Duration(), (v) {
                            bloc.add(ProductEvent.selectPreparingTime(v));
                          });
                        },
                        controller: TextEditingController(
                            text: formatDuration(bloc.preparingTime)),
                        decoration: InputDecoration(
                          fillColor: Colors.transparent,
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10)),
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10)),
                          hintText: 'HH:MM',
                          suffixIcon: Icon(
                            Icons.alarm,
                            color: primary,
                          ),
                        ),
                      ).prezaa(label: tr.preparingTime);
                    },
                  ),
                  vSpace(3),
                  BlocBuilder<ProductBloc, ProductState>(
                    builder: (context, state) {
                      return state.maybeWhen(orElse: () {
                        return TextFormField(
                          validator: (v) {
                            if (v!.isEmpty) {
                              return tr.requiredField;
                            }
                            return null;
                          },
                          controller: bloc.description,
                          minLines: 6,
                          maxLines: 6,
                          decoration: InputDecoration(
                            hintText: tr.writeHere,
                          ),
                        ).prezaa(label: tr.description);
                      });
                    },
                  ),
                  BlocBuilder<ProductBloc, ProductState>(
                    builder: (context, state) {
                      return state.maybeWhen(
                        orElse: () {
                          return Column(
                            children: [
                              if (bloc.extras.isNotEmpty) ...[
                                vSpace(3),
                                Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    border: Border.all(
                                        color: Colors.black, width: 2),
                                  ),
                                  padding: const EdgeInsets.all(20),
                                  child: Column(
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(tr.extras),
                                          SvgPicture.asset(
                                              Assets.assetsImagesTrash),
                                        ],
                                      ),
                                      vSpace(2),
                                      SizedBox(
                                        height: 150,
                                        child: BlocBuilder<ProductBloc,
                                            ProductState>(
                                          builder: (context, state) {
                                            return state.maybeWhen(
                                              orElse: () => ListView.builder(
                                                itemCount: bloc.extras.length,
                                                itemBuilder: (context, index) {
                                                  final extra =
                                                      bloc.extras[index];
                                                  return CheckboxListTile(
                                                    value: false,
                                                    controlAffinity:
                                                        ListTileControlAffinity
                                                            .leading,
                                                    title: Text(extra.name),
                                                    onChanged: (v) {},
                                                  );
                                                },
                                              ),
                                            );
                                          },
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                vSpace(3),
                              ],
                              if (bloc.sideItems.isNotEmpty) ...[
                                Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    border: Border.all(
                                        color: Colors.black, width: 2),
                                  ),
                                  padding: const EdgeInsets.all(20),
                                  child: Column(
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(tr.sideItems),
                                          SvgPicture.asset(
                                              Assets.assetsImagesTrash),
                                        ],
                                      ),
                                      vSpace(2),
                                      SizedBox(
                                        height: 200,
                                        child: BlocBuilder<ProductBloc,
                                            ProductState>(
                                          builder: (context, state) {
                                            return state.maybeWhen(
                                              orElse: () => ListView.builder(
                                                itemCount:
                                                    bloc.sideItems.length,
                                                itemBuilder: (context, index) {
                                                  final sideItem =
                                                      bloc.sideItems[index];
                                                  log(
                                                      sideItem.side_items.length
                                                          .toString(),
                                                      name: sideItem.Question);
                                                  return Column(
                                                    children: [
                                                      Text(
                                                          tr.chooseYourSideItem(
                                                              sideItem
                                                                  .Question)),
                                                      vSpace(3),
                                                      SizedBox(
                                                        height: 150,
                                                        child: ListView.builder(
                                                          itemCount: sideItem
                                                              .side_items
                                                              .length,
                                                          itemBuilder:
                                                              (context, index) {
                                                            final items = sideItem
                                                                    .side_items[
                                                                index];
                                                            return CheckboxListTile(
                                                              value: false,
                                                              controlAffinity:
                                                                  ListTileControlAffinity
                                                                      .leading,
                                                              title: Text(items[
                                                                  'name']),
                                                              onChanged: (v) {},
                                                            );
                                                          },
                                                        ),
                                                      ),
                                                    ],
                                                  );
                                                },
                                              ),
                                            );
                                          },
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ],
                          );
                        },
                      );
                    },
                  )
                ],
              ).margin(
                margin: const EdgeInsets.symmetric(horizontal: 20),
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
            child: Container(
              // height: 1,
              padding: const EdgeInsets.all(20),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      InkWell(
                        onTap: () {
                          showPrezzaBtm(
                            context,
                            Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Text(tr.extras),
                                vSpace(3),
                                SizedBox(
                                  height: 20.h,
                                  child: BlocBuilder<ProductBloc, ProductState>(
                                    builder: (context, state) {
                                      return state.maybeWhen(orElse: () {
                                        return ListView.builder(
                                          itemCount: bloc.extraUI.length,
                                          itemBuilder: (context, index) {
                                            final extra = bloc.extraUI[index];
                                            return Row(
                                              children: [
                                                Expanded(
                                                    child: TextFormField(
                                                  controller: extra['nameCn'],
                                                  decoration: InputDecoration(
                                                      hintText: tr.extraname),
                                                )),
                                                hSpace(3),
                                                Expanded(
                                                    child: TextFormField(
                                                  controller: extra['priceCn'],
                                                  inputFormatters: [
                                                    FilteringTextInputFormatter
                                                        .digitsOnly
                                                  ],
                                                  decoration: InputDecoration(
                                                    hintText: tr.extraCharge,
                                                  ),
                                                )),
                                                InkWell(
                                                  onTap: () {
                                                    bloc.add(ProductEvent
                                                        .removeExtraUi(index));
                                                  },
                                                  child: CircleAvatar(
                                                    radius: 30,
                                                    backgroundColor:
                                                        Colors.transparent,
                                                    child: SvgPicture.asset(
                                                      Assets
                                                          .assetsImagesTrashOutlin,
                                                      width: 30,
                                                    ),
                                                  ),
                                                )
                                              ],
                                            ).margin(
                                                margin:
                                                    const EdgeInsets.symmetric(
                                                        vertical: 5));
                                          },
                                        );
                                      });
                                    },
                                  ),
                                ),
                                vSpace(2),
                                TextFormField(
                                  onTap: () {
                                    bloc.add(const ProductEvent.addExtraUi());
                                  },
                                  readOnly: true,
                                  decoration: InputDecoration(
                                    hintText: tr.addOption,
                                    prefixIcon: Icon(Icons.add, color: primary),
                                  ),
                                ),
                                vSpace(3),
                                Row(
                                  children: [
                                    Expanded(
                                      child: TextButton(
                                        onPressed: () {
                                          context.maybePop();
                                          bloc.extraUI.clear();
                                        },
                                        child: Text(tr.cancel),
                                      ),
                                    ),
                                    hSpace(3),
                                    Expanded(
                                      child: BlocConsumer<ProductBloc,
                                          ProductState>(
                                        listener: (context, state) {
                                          state.maybeMap(
                                            failure: (er) {
                                              BotToast.showText(text: er.err);
                                            },
                                            sucessAdded: (e) {
                                              context.maybePop();
                                            },
                                            orElse: () {},
                                          );
                                        },
                                        builder: (context, state) {
                                          return ElevatedButton(
                                            onPressed: () {
                                              if (bloc.extraUI.every((e) =>
                                                  (e['nameCn']
                                                          as TextEditingController)
                                                      .text
                                                      .isNotEmpty &&
                                                  (e['priceCn']
                                                          as TextEditingController)
                                                      .text
                                                      .isNotEmpty)) {
                                                bloc.add(const ProductEvent
                                                    .addProductExtra());
                                              } else {
                                                BotToast.showText(
                                                    text: tr.requiredField);
                                              }
                                            },
                                            child: state.maybeWhen(
                                              loading: () => defLoadingCenter,
                                              orElse: () {
                                                return Text(tr.add);
                                              },
                                            ),
                                          );
                                        },
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            ),
                            true,
                          );
                        },
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            CircleAvatar(
                              radius: 20,
                              backgroundColor: Colors.transparent,
                              child: SvgPicture.asset(Assets.assetsImagesAdd,
                                  width: 70),
                            ),
                            vSpace(1),
                            Text(
                              tr.extras,
                              style: redText,
                            )
                          ],
                        ),
                      ),
                      InkWell(
                        onTap: () async {
                          showPrezzaBtm(
                            context,
                            Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Text(tr.sideItems),
                                vSpace(3),
                                TextFormField(
                                  controller: bloc.question,
                                  decoration: InputDecoration(
                                      hintText: tr.sideItemName),
                                ),
                                vSpace(3),
                                SizedBox(
                                  height: 20.h,
                                  child: BlocBuilder<ProductBloc, ProductState>(
                                    builder: (context, state) {
                                      return state.maybeWhen(orElse: () {
                                        return ListView.builder(
                                          itemCount: bloc.sideItemsUI.length,
                                          itemBuilder: (context, index) {
                                            final sideItem =
                                                bloc.sideItemsUI[index];
                                            return Row(
                                              children: [
                                                Expanded(
                                                    child: TextFormField(
                                                  controller:
                                                      sideItem['nameCn'],
                                                  decoration: InputDecoration(
                                                      hintText:
                                                          tr.sideItemName),
                                                )),
                                                InkWell(
                                                  onTap: () {
                                                    bloc.add(ProductEvent
                                                        .removeSideItem(index));
                                                  },
                                                  child: CircleAvatar(
                                                    radius: 30,
                                                    backgroundColor:
                                                        Colors.transparent,
                                                    child: SvgPicture.asset(
                                                      Assets
                                                          .assetsImagesTrashOutlin,
                                                      width: 30,
                                                    ),
                                                  ),
                                                )
                                              ],
                                            ).margin(
                                                margin:
                                                    const EdgeInsets.symmetric(
                                                        vertical: 5));
                                          },
                                        );
                                      });
                                    },
                                  ),
                                ),
                                vSpace(2),
                                TextFormField(
                                  onTap: () {
                                    bloc.add(
                                        const ProductEvent.addSideItemUi());
                                  },
                                  readOnly: true,
                                  decoration: InputDecoration(
                                    hintText: tr.addOption,
                                    prefixIcon: Icon(Icons.add, color: primary),
                                  ),
                                ),
                                vSpace(3),
                                Row(
                                  children: [
                                    Expanded(
                                      child: TextButton(
                                        onPressed: () {
                                          context.maybePop();
                                          bloc.sideItemsUI.clear();
                                        },
                                        child: Text(tr.cancel),
                                      ),
                                    ),
                                    hSpace(3),
                                    Expanded(
                                      child: BlocConsumer<ProductBloc,
                                          ProductState>(
                                        listener: (context, state) {
                                          state.maybeMap(
                                            failure: (er) {
                                              BotToast.showText(text: er.err);
                                            },
                                            sucessAdded: (e) {
                                              context.maybePop();
                                            },
                                            orElse: () {},
                                          );
                                        },
                                        builder: (context, state) {
                                          return ElevatedButton(
                                            onPressed: () {
                                              if (bloc.sideItemsUI.every((e) => (e[
                                                              'nameCn']
                                                          as TextEditingController)
                                                      .text
                                                      .isNotEmpty) &&
                                                  bloc.question.text
                                                      .isNotEmpty) {
                                                bloc.add(const ProductEvent
                                                    .addProductSideItem());
                                              } else {
                                                BotToast.showText(
                                                    text: tr.requiredField);
                                              }
                                            },
                                            child: state.maybeWhen(
                                              loading: () => defLoadingCenter,
                                              orElse: () {
                                                return Text(tr.add);
                                              },
                                            ),
                                          );
                                        },
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            ),
                            true,
                          );
                        },
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            CircleAvatar(
                              radius: 20,
                              backgroundColor: Colors.transparent,
                              child: SvgPicture.asset(Assets.assetsImagesAdd,
                                  width: 70),
                            ),
                            vSpace(1),
                            Text(
                              tr.sideItems,
                              style: redText,
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                  vSpace(1),
                  BlocConsumer<ProductBloc, ProductState>(
                    listener: (context, state) {
                      state.maybeMap(
                        failure: (e) {
                          BotToast.showText(text: e.err);
                        },
                        orElse: () {},
                        successCreated: (e) {
                          showDialogPrezza(
                            context: context,
                            title: tr.itemAdded,
                            onTap: () {
                              bloc.add(const ProductEvent.getProdcuts());
                              context.maybePop();
                              appRoute.removeLast();
                              appRoute.navigate(VendorLayoutRoute());
                            },
                            image: Assets.assetsImagesSuccessGif,
                          );
                        },
                      );
                    },
                    builder: (context, state) {
                      return Visibility(
                        visible: !widget.isEditMod,
                        child: ElevatedButton(
                            onPressed: () {
                              bloc.add(const ProductEvent.addProductDetails());
                            },
                            child: state.maybeWhen(
                              loading: () {
                                return defLoadingCenter;
                              },
                              orElse: () {
                                return Text(tr.addItem);
                              },
                            )),
                      );
                    },
                  ),
                  vSpace(1),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
