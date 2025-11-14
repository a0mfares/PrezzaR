import 'dart:developer';
import 'dart:io';

import 'package:auto_route/auto_route.dart';
import 'package:bot_toast/bot_toast.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:prezza/core/constants/assets.dart';
import 'package:prezza/core/helper/tools.dart';
import 'package:prezza/core/service/routes.gr.dart';
import 'package:prezza/core/shared/widgets/cached_image.dart';
import 'package:prezza/prezza_page.dart';
import 'package:sizer/sizer.dart';

import '../../../../config/custom_colors.dart';
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
          backgroundColor: floralWhite,
          appBar: AppBar(
            elevation: 0,
            backgroundColor: floralWhite,
            title: Text(
              widget.isEditMod ? "Edit Product" : tr.newItems,
              style: TextStyle(
                color: Colors.black87,
                fontWeight: FontWeight.bold,
                fontSize: 18.sp,
              ),
            ),
            centerTitle: true,
            leading: IconButton(
              icon: const Icon(Icons.arrow_back, color: Colors.black87),
              onPressed: widget.isEditMod
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
          ),
          body: SingleChildScrollView(
            padding: EdgeInsets.symmetric(horizontal: 5.w, vertical: 2.h),
            child: Form(
              key: bloc.addProductForm,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _buildImageSection(),
                  vSpace(3),
                  
                  _buildSectionTitle(tr.itemName),
                  vSpace(1),
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
                            filled: true,
                            fillColor: Colors.white,
                            contentPadding: EdgeInsets.symmetric(
                              horizontal: 4.w,
                              vertical: 2.h,
                            ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12),
                              borderSide: BorderSide.none,
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12),
                              borderSide: BorderSide.none,
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12),
                              borderSide: BorderSide(color: primary, width: 1.5),
                            ),
                            errorBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12),
                              borderSide: const BorderSide(color: Colors.red),
                            ),
                          ),
                        );
                      });
                    },
                  ),
                  vSpace(3),
                  
                  _buildSectionTitle(tr.categories),
                  vSpace(1),
                  _buildCategoriesSection(),
                  vSpace(3),
                  
                  _buildSectionTitle(tr.size),
                  vSpace(1),
                  _buildSizeSection(),
                  vSpace(3),
                  
                  _buildSectionTitle(tr.price),
                  vSpace(1),
                  BlocBuilder<ProductBloc, ProductState>(
                    builder: (context, state) {
                      return state.maybeWhen(
                        orElse: () {
                          return Container(
                            width: double.infinity,
                            padding: EdgeInsets.symmetric(
                              horizontal: 4.w,
                              vertical: 2.h,
                            ),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(12),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.1),
                                  spreadRadius: 1,
                                  blurRadius: 3,
                                  offset: const Offset(0, 1),
                                ),
                              ],
                            ),
                            child: Row(
                              children: [
                                Expanded(
                                  child: Text(
                                    bloc.selectedSize['name'].isEmpty
                                        ? tr.pleaseSelectSize
                                        : "${bloc.selectedSize['name']}: ${bloc.selectedSize['price']}",
                                    style: TextStyle(
                                      fontSize: 14.sp,
                                      color: bloc.selectedSize['name'].isEmpty
                                          ? Colors.grey[500]
                                          : Colors.black87,
                                    ),
                                  ),
                                ),
                                Icon(
                                  Icons.arrow_drop_down,
                                  color: Colors.grey[500],
                                ),
                              ],
                            ),
                          );
                        },
                      );
                    },
                  ),
                  vSpace(3),
                  
                  _buildSectionTitle(tr.preparingTime),
                  vSpace(1),
                  BlocBuilder<ProductBloc, ProductState>(
                    builder: (context, state) {
                      return GestureDetector(
                        onTap: () {
                          showTimePickerPrezza(context, const Duration(), (v) {
                            bloc.add(ProductEvent.selectPreparingTime(v));
                          });
                        },
                        child: Container(
                          width: double.infinity,
                          padding: EdgeInsets.symmetric(
                            horizontal: 4.w,
                            vertical: 2.h,
                          ),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(12),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.1),
                                spreadRadius: 1,
                                blurRadius: 3,
                                offset: const Offset(0, 1),
                              ),
                            ],
                          ),
                          child: Row(
                            children: [
                              Icon(
                                Icons.alarm,
                                color: primary,
                                size: 20.sp,
                              ),
                              SizedBox(width: 3.w),
                              Expanded(
                                child: Text(
                                  formatDuration(bloc.preparingTime),
                                  style: TextStyle(
                                    fontSize: 14.sp,
                                    color: bloc.preparingTime.inMinutes == 0
                                        ? Colors.grey[500]
                                        : Colors.black87,
                                  ),
                                ),
                              ),
                              Icon(
                                Icons.arrow_drop_down,
                                color: Colors.grey[500],
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                  vSpace(3),
                  
                  _buildSectionTitle(tr.description),
                  vSpace(1),
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
                          minLines: 4,
                          maxLines: 6,
                          decoration: InputDecoration(
                            hintText: tr.writeHere,
                            filled: true,
                            fillColor: Colors.white,
                            contentPadding: EdgeInsets.symmetric(
                              horizontal: 4.w,
                              vertical: 2.h,
                            ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12),
                              borderSide: BorderSide.none,
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12),
                              borderSide: BorderSide.none,
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12),
                              borderSide: BorderSide(color: primary, width: 1.5),
                            ),
                            errorBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12),
                              borderSide: const BorderSide(color: Colors.red),
                            ),
                          ),
                        );
                      });
                    },
                  ),
                  vSpace(3),
                  
                  if (bloc.extras.isNotEmpty) ...[
                    _buildSectionTitle(tr.extras),
                    vSpace(1),
                    _buildExtrasSection(),
                    vSpace(3),
                  ],
                  
                  if (bloc.sideItems.isNotEmpty) ...[
                    _buildSectionTitle(tr.sideItems),
                    vSpace(1),
                    _buildSideItemsSection(),
                    vSpace(3),
                  ],
                  
                  SizedBox(height: 10.h),
                ],
              ),
            ),
          ),
          bottomNavigationBar: _buildBottomActions(),
        ),
      ),
    );
  }

  Widget _buildSectionTitle(String title) {
    return Padding(
      padding: EdgeInsets.only(left: 2.w),
      child: Text(
        title,
        style: TextStyle(
          fontSize: 16.sp,
          fontWeight: FontWeight.w600,
          color: Colors.black87,
        ),
      ),
    );
  }

  Widget _buildImageSection() {
    return Center(
      child: InkWell(
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
          width: 40.w,
          height: 40.w,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.2),
                spreadRadius: 2,
                blurRadius: 5,
                offset: const Offset(0, 3),
              ),
            ],
          ),
          child: Stack(
            children: [
              BlocBuilder<ProductBloc, ProductState>(
                builder: (context, state) {
                  return state.maybeWhen(orElse: () {
                    if (bloc.productImg.path.isNotEmpty) {
                      if (bloc.productImg.path.contains('media/product_images')) {
                        return ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: CachedImage(
                            imageUrl: bloc.productImg.path,
                            fit: BoxFit.cover,
                            width: double.infinity,
                            height: double.infinity,
                          ),
                        );
                      }
                      return ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Image.file(
                          bloc.productImg,
                          fit: BoxFit.cover,
                          width: double.infinity,
                          height: double.infinity,
                        ),
                      );
                    }
                    return Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SvgPicture.asset(
                            Assets.assetsImagesUploadPhoto,
                            width: 15.w,
                            height: 15.w,
                          ),
                          SizedBox(height: 1.h),
                          Text(
                            tr.uploadPhoto,
                            style: TextStyle(
                              fontSize: 12.sp,
                              color: Colors.grey[600],
                            ),
                          ),
                        ],
                      ),
                    );
                  });
                },
              ),
              if (bloc.productImg.path.isNotEmpty)
                Positioned(
                  top: 5,
                  right: 5,
                  child: GestureDetector(
                    onTap: () {
                      bloc.add(ProductEvent.pickImage(File('')));
                    },
                    child: Container(
                      width: 8.w,
                      height: 8.w,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.3),
                            spreadRadius: 1,
                            blurRadius: 2,
                          ),
                        ],
                      ),
                      child: Icon(
                        Icons.close,
                        color: Colors.red[400],
                        size: 5.w,
                      ),
                    ),
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildCategoriesSection() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 4.w, vertical: 2.h),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.1),
            spreadRadius: 1,
            blurRadius: 3,
            offset: const Offset(0, 1),
          ),
        ],
      ),
      child: Row(
        children: [
          Expanded(
            child: BlocBuilder<ProductBloc, ProductState>(
              builder: (context, state) {
                return state.maybeWhen(
                  orElse: () {
                    return ToggleBtnPezza(
                      items: bloc.categories.map((e) => e.name).toList(),
                      onSelectedItem: (v) {
                        bloc.add(ProductEvent.selectCategory(v, true));
                      },
                      selectedItem: bloc.selectedCategory,
                    );
                  },
                );
              },
            ),
          ),
          SizedBox(width: 3.w),
          GestureDetector(
            onTap: () {
              showPrezzaBtm(
                context,
                Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      tr.addCategory,
                      style: TextStyle(
                        fontSize: 18.sp,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    vSpace(3),
                    TextFormField(
                      controller: bloc.categoryName,
                      decoration: InputDecoration(
                        hintText: tr.writeHere,
                        filled: true,
                        fillColor: Colors.grey[100],
                        contentPadding: EdgeInsets.symmetric(
                          horizontal: 4.w,
                          vertical: 2.h,
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: BorderSide.none,
                        ),
                      ),
                    ),
                    vSpace(3),
                    Row(
                      children: [
                        Expanded(
                          child: TextButton(
                            onPressed: () {
                              context.maybePop();
                            },
                            child: Text(
                              tr.cancel,
                              style: TextStyle(
                                color: Colors.grey[600],
                                fontSize: 14.sp,
                              ),
                            ),
                          ),
                        ),
                        hSpace(3),
                        Expanded(
                          child: BlocBuilder<ProductBloc, ProductState>(
                            builder: (context, state) {
                              return SizedBox(
                                height: 6.h,
                                child: ElevatedButton(
                                  onPressed: () {
                                    if (bloc.categoryName.text.isNotEmpty) {
                                      bloc.add(const ProductEvent.addProductCategory());
                                    } else {
                                      BotToast.showText(text: tr.requiredField);
                                    }
                                  },
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: primary,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(12),
                                    ),
                                  ),
                                  child: state.maybeWhen(
                                    loading: () => defLoadingCenter,
                                    orElse: () {
                                      return Text(
                                        tr.add,
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 14.sp,
                                        ),
                                      );
                                    },
                                  ),
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
            child: Container(
              width: 10.w,
              height: 10.w,
              decoration: BoxDecoration(
                color: primary.withOpacity(0.1),
                shape: BoxShape.circle,
              ),
              child: Icon(
                Icons.add,
                color: primary,
                size: 6.w,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSizeSection() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 4.w, vertical: 2.h),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.1),
            spreadRadius: 1,
            blurRadius: 3,
            offset: const Offset(0, 1),
          ),
        ],
      ),
      child: Row(
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
                    items: bloc.sizes.map((e) => e['name'] as String).toList(),
                    onSelectedItem: (v) {
                      bloc.add(ProductEvent.selectSize(v));
                    },
                    selectedItem: bloc.selectedSize['name'],
                  );
                });
              },
            ),
          ),
          SizedBox(width: 3.w),
          GestureDetector(
            onTap: () {
              showPrezzaBtm(
                context,
                Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      tr.addSize,
                      style: TextStyle(
                        fontSize: 18.sp,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    vSpace(3),
                    TextFormField(
                      controller: bloc.sizeName,
                      decoration: InputDecoration(
                        hintText: "Size name",
                        filled: true,
                        fillColor: Colors.grey[100],
                        contentPadding: EdgeInsets.symmetric(
                          horizontal: 4.w,
                          vertical: 2.h,
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: BorderSide.none,
                        ),
                      ),
                    ),
                    vSpace(2),
                    TextFormField(
                      controller: bloc.price,
                      inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                      decoration: InputDecoration(
                        hintText: tr.price,
                        filled: true,
                        fillColor: Colors.grey[100],
                        contentPadding: EdgeInsets.symmetric(
                          horizontal: 4.w,
                          vertical: 2.h,
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: BorderSide.none,
                        ),
                      ),
                    ),
                    vSpace(3),
                    Row(
                      children: [
                        Expanded(
                          child: TextButton(
                            onPressed: () {
                              context.maybePop();
                            },
                            child: Text(
                              tr.cancel,
                              style: TextStyle(
                                color: Colors.grey[600],
                                fontSize: 14.sp,
                              ),
                            ),
                          ),
                        ),
                        hSpace(3),
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
                              return SizedBox(
                                height: 6.h,
                                child: ElevatedButton(
                                  onPressed: () {
                                    if (bloc.sizeName.text.isNotEmpty && bloc.price.text.isNotEmpty) {
                                      bloc.add(const ProductEvent.addProductSize());
                                    } else {
                                      BotToast.showText(text: tr.requiredField);
                                    }
                                  },
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: primary,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(12),
                                    ),
                                  ),
                                  child: state.maybeWhen(
                                    loading: () => defLoadingCenter,
                                    orElse: () {
                                      return Text(
                                        tr.add,
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 14.sp,
                                        ),
                                      );
                                    },
                                  ),
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
            child: Container(
              width: 10.w,
              height: 10.w,
              decoration: BoxDecoration(
                color: primary.withOpacity(0.1),
                shape: BoxShape.circle,
              ),
              child: Icon(
                Icons.add,
                color: primary,
                size: 6.w,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildExtrasSection() {
    return Container(
      padding: EdgeInsets.all(4.w),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.1),
            spreadRadius: 1,
            blurRadius: 3,
            offset: const Offset(0, 1),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                tr.extras,
                style: TextStyle(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w600,
                ),
              ),
              GestureDetector(
                onTap: () {
                  // Handle delete all extras
                },
                child: Icon(
                  Icons.delete_outline,
                  color: Colors.red[400],
                  size: 6.w,
                ),
              ),
            ],
          ),
          vSpace(2),
          SizedBox(
            height: 15.h,
            child: BlocBuilder<ProductBloc, ProductState>(
              builder: (context, state) {
                return state.maybeWhen(
                  orElse: () => ListView.builder(
                    itemCount: bloc.extras.length,
                    itemBuilder: (context, index) {
                      final extra = bloc.extras[index];
                      return CheckboxListTile(
                        value: false,
                        controlAffinity: ListTileControlAffinity.leading,
                        title: Text(
                          extra.name,
                          style: TextStyle(fontSize: 14.sp),
                        ),
                        onChanged: (v) {},
                        contentPadding: EdgeInsets.zero,
                      );
                    },
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }

  Widget _buildSideItemsSection() {
    return Container(
      padding: EdgeInsets.all(4.w),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.1),
            spreadRadius: 1,
            blurRadius: 3,
            offset: const Offset(0, 1),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                tr.sideItems,
                style: TextStyle(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w600,
                ),
              ),
              GestureDetector(
                onTap: () {
                  // Handle delete all side items
                },
                child: Icon(
                  Icons.delete_outline,
                  color: Colors.red[400],
                  size: 6.w,
                ),
              ),
            ],
          ),
          vSpace(2),
          SizedBox(
            height: 20.h,
            child: BlocBuilder<ProductBloc, ProductState>(
              builder: (context, state) {
                return state.maybeWhen(
                  orElse: () => ListView.builder(
                    itemCount: bloc.sideItems.length,
                    itemBuilder: (context, index) {
                      final sideItem = bloc.sideItems[index];
                      log(sideItem.side_items.length.toString(), name: sideItem.Question);
                      return Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            tr.chooseYourSideItem(sideItem.Question),
                            style: TextStyle(
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          vSpace(1),
                          SizedBox(
                            height: 12.h,
                            child: ListView.builder(
                              itemCount: sideItem.side_items.length,
                              itemBuilder: (context, index) {
                                final items = sideItem.side_items[index];
                                return CheckboxListTile(
                                  value: false,
                                  controlAffinity: ListTileControlAffinity.leading,
                                  title: Text(
                                    items['name'],
                                    style: TextStyle(fontSize: 13.sp),
                                  ),
                                  onChanged: (v) {},
                                  contentPadding: EdgeInsets.zero,
                                );
                              },
                            ),
                          ),
                          if (index < bloc.sideItems.length - 1) Divider(height: 2.h),
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
    );
  }

  Widget _buildBottomActions() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 5.w, vertical: 2.h),
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            spreadRadius: 1,
            blurRadius: 5,
            offset: Offset(0, -1),
          ),
        ],
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              _buildActionButton(
                icon: Icons.add_circle_outline,
                label: tr.extras,
                onTap: () {
                  showPrezzaBtm(
                    context,
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          tr.extras,
                          style: TextStyle(
                            fontSize: 18.sp,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
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
                                    return Container(
                                      margin: EdgeInsets.only(bottom: 1.h),
                                      padding: EdgeInsets.all(2.w),
                                      decoration: BoxDecoration(
                                        color: Colors.grey[50],
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      child: Row(
                                        children: [
                                          Expanded(
                                            child: TextFormField(
                                              controller: extra['nameCn'],
                                              decoration: InputDecoration(
                                                hintText: tr.extraname,
                                                filled: true,
                                                fillColor: Colors.white,
                                                contentPadding: EdgeInsets.symmetric(
                                                  horizontal: 3.w,
                                                  vertical: 1.h,
                                                ),
                                                border: OutlineInputBorder(
                                                  borderRadius: BorderRadius.circular(8),
                                                  borderSide: BorderSide.none,
                                                ),
                                              ),
                                            ),
                                          ),
                                          SizedBox(width: 2.w),
                                          SizedBox(
                                            width: 25.w,
                                            child: TextFormField(
                                              controller: extra['priceCn'],
                                              inputFormatters: [
                                                FilteringTextInputFormatter.digitsOnly
                                              ],
                                              decoration: InputDecoration(
                                                hintText: tr.extraCharge,
                                                filled: true,
                                                fillColor: Colors.white,
                                                contentPadding: EdgeInsets.symmetric(
                                                  horizontal: 3.w,
                                                  vertical: 1.h,
                                                ),
                                                border: OutlineInputBorder(
                                                  borderRadius: BorderRadius.circular(8),
                                                  borderSide: BorderSide.none,
                                                ),
                                              ),
                                            ),
                                          ),
                                          SizedBox(width: 2.w),
                                          GestureDetector(
                                            onTap: () {
                                              bloc.add(ProductEvent.removeExtraUi(index));
                                            },
                                            child: Icon(
                                              Icons.remove_circle_outline,
                                              color: Colors.red[400],
                                              size: 6.w,
                                            ),
                                          )
                                        ],
                                      ),
                                    );
                                  },
                                );
                              });
                            },
                          ),
                        ),
                        vSpace(2),
                        GestureDetector(
                          onTap: () {
                            bloc.add(const ProductEvent.addExtraUi());
                          },
                          child: Container(
                            padding: EdgeInsets.symmetric(vertical: 1.5.h),
                            decoration: BoxDecoration(
                              color: primary.withOpacity(0.1),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.add,
                                  color: primary,
                                  size: 5.w,
                                ),
                                SizedBox(width: 2.w),
                                Text(
                                  tr.addOption,
                                  style: TextStyle(
                                    color: primary,
                                    fontSize: 14.sp,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ],
                            ),
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
                                child: Text(
                                  tr.cancel,
                                  style: TextStyle(
                                    color: Colors.grey[600],
                                    fontSize: 14.sp,
                                  ),
                                ),
                              ),
                            ),
                            hSpace(3),
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
                                  return SizedBox(
                                    height: 6.h,
                                    child: ElevatedButton(
                                      onPressed: () {
                                        if (bloc.extraUI.every((e) =>
                                            (e['nameCn'] as TextEditingController).text.isNotEmpty &&
                                            (e['priceCn'] as TextEditingController).text.isNotEmpty)) {
                                          bloc.add(const ProductEvent.addProductExtra());
                                        } else {
                                          BotToast.showText(text: tr.requiredField);
                                        }
                                      },
                                      style: ElevatedButton.styleFrom(
                                        backgroundColor: primary,
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(10),
                                        ),
                                      ),
                                      child: state.maybeWhen(
                                        loading: () => defLoadingCenter,
                                        orElse: () {
                                          return Text(
                                            tr.add,
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 14.sp,
                                            ),
                                          );
                                        },
                                      ),
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
              ),
              _buildActionButton(
                icon: Icons.add_circle_outline,
                label: tr.sideItems,
                onTap: () {
                  showPrezzaBtm(
                    context,
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          tr.sideItems,
                          style: TextStyle(
                            fontSize: 18.sp,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        vSpace(3),
                        TextFormField(
                          controller: bloc.question,
                          decoration: InputDecoration(
                            hintText: tr.sideItemName,
                            filled: true,
                            fillColor: Colors.grey[100],
                            contentPadding: EdgeInsets.symmetric(
                              horizontal: 4.w,
                              vertical: 2.h,
                            ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12),
                              borderSide: BorderSide.none,
                            ),
                          ),
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
                                    final sideItem = bloc.sideItemsUI[index];
                                    return Container(
                                      margin: EdgeInsets.only(bottom: 1.h),
                                      padding: EdgeInsets.all(2.w),
                                      decoration: BoxDecoration(
                                        color: Colors.grey[50],
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      child: Row(
                                        children: [
                                          Expanded(
                                            child: TextFormField(
                                              controller: sideItem['nameCn'],
                                              decoration: InputDecoration(
                                                hintText: tr.sideItemName,
                                                filled: true,
                                                fillColor: Colors.white,
                                                contentPadding: EdgeInsets.symmetric(
                                                  horizontal: 3.w,
                                                  vertical: 1.h,
                                                ),
                                                border: OutlineInputBorder(
                                                  borderRadius: BorderRadius.circular(8),
                                                  borderSide: BorderSide.none,
                                                ),
                                              ),
                                            ),
                                          ),
                                          SizedBox(width: 2.w),
                                          GestureDetector(
                                            onTap: () {
                                              bloc.add(ProductEvent.removeSideItem(index));
                                            },
                                            child: Icon(
                                              Icons.remove_circle_outline,
                                              color: Colors.red[400],
                                              size: 6.w,
                                            ),
                                          )
                                        ],
                                      ),
                                    );
                                  },
                                );
                              });
                            },
                          ),
                        ),
                        vSpace(2),
                        GestureDetector(
                          onTap: () {
                            bloc.add(const ProductEvent.addSideItemUi());
                          },
                          child: Container(
                            padding: EdgeInsets.symmetric(vertical: 1.5.h),
                            decoration: BoxDecoration(
                              color: primary.withOpacity(0.1),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.add,
                                  color: primary,
                                  size: 5.w,
                                ),
                                SizedBox(width: 2.w),
                                Text(
                                  tr.addOption,
                                  style: TextStyle(
                                    color: primary,
                                    fontSize: 14.sp,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ],
                            ),
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
                                child: Text(
                                  tr.cancel,
                                  style: TextStyle(
                                    color: Colors.grey[600],
                                    fontSize: 14.sp,
                                  ),
                                ),
                              ),
                            ),
                            hSpace(3),
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
                                  return SizedBox(
                                    height: 6.h,
                                    child: ElevatedButton(
                                      onPressed: () {
                                        if (bloc.sideItemsUI.every((e) =>
                                                (e['nameCn'] as TextEditingController).text.isNotEmpty) &&
                                            bloc.question.text.isNotEmpty) {
                                          bloc.add(const ProductEvent.addProductSideItem());
                                        } else {
                                          BotToast.showText(text: tr.requiredField);
                                        }
                                      },
                                      style: ElevatedButton.styleFrom(
                                        backgroundColor: primary,
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(10),
                                        ),
                                      ),
                                      child: state.maybeWhen(
                                        loading: () => defLoadingCenter,
                                        orElse: () {
                                          return Text(
                                            tr.add,
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 14.sp,
                                            ),
                                          );
                                        },
                                      ),
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
              ),
            ],
          ),
          vSpace(2),
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
                child: SizedBox(
                  width: double.infinity,
                  height: 6.h,
                  child: ElevatedButton(
                    onPressed: () {
                      bloc.add(const ProductEvent.addProductDetails());
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: primary,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                    child: state.maybeWhen(
                      loading: () => defLoadingCenter,
                      orElse: () {
                        return Text(
                          tr.addItem,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w600,
                          ),
                        );
                      },
                    ),
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }

  Widget _buildActionButton({
    required IconData icon,
    required String label,
    required VoidCallback onTap,
  }) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            width: 12.w,
            height: 12.w,
            decoration: BoxDecoration(
              color: primary.withOpacity(0.1),
              shape: BoxShape.circle,
            ),
            child: Icon(
              icon,
              color: primary,
              size: 7.w,
            ),
          ),
          SizedBox(height: 1.h),
          Text(
            label,
            style: TextStyle(
              fontSize: 12.sp,
              color: primary,
              fontWeight: FontWeight.w500,
            ),
          )
        ],
      ),
    );
  }
}