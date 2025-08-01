import 'dart:developer';

import 'package:prezza/core/helper/tools.dart';
import 'package:bot_toast/bot_toast.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:prezza/core/helper/widgets.dart';
import 'package:prezza/core/service/routes.gr.dart';
import 'package:prezza/core/shared/widgets/cached_image.dart';
import 'package:prezza/core/shared/widgets/under_montains.dart';
import 'package:prezza/features/vendor/presentation/widgets/shimmer_card_loading.dart';
import 'package:prezza/prezza_page.dart';
import 'package:sizer/sizer.dart';

// Add CachedNetworkImage if you want caching, else remove the import
// import 'package:cached_network_image/cached_network_image.dart';

import '../../../../config/txt_themes.dart';
import '../../../../core/constants/assets.dart';
import '../bloc/category_bloc.dart';
import '../widgets/category_sheet_widget.dart';

class CategoryPage extends StatefulWidget {
  const CategoryPage({super.key, this.isBooking = false});
  final bool isBooking;

  @override
  State<CategoryPage> createState() => _CategoryPageState();
}

class _CategoryPageState extends State<CategoryPage> {
  late final CategoryBloc bloc;

  @override
  void initState() {
    super.initState();
    bloc = CategoryBloc.get(context);
    bloc.add(CategoryEvent.getCategories(widget.isBooking));
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 100.w,
      height: 35.h,
      child: BlocConsumer<CategoryBloc, CategoryState>(
        listener: (context, state) {
          state.maybeMap(
            failureCategory: (err) {
              BotToast.showText(text: err.err);
            },
            orElse: () {},
          );
        },
        builder: (context, state) {
          return state.maybeWhen(
            loading: () => const ShimmerLoadingGrid(),
            failureCategory: (err) => FailureWidget(error: err),
            orElse: () {
              return GridView.builder(
                physics: const NeverScrollableScrollPhysics(),
                gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                  maxCrossAxisExtent: bloc.categories.length == 2 ? 70.w : 40.w,
                  mainAxisExtent: 17.h,
                ),
                itemCount: bloc.categories.length,
                itemBuilder: (context, index) {
                  if (index == 5) {
                    return InkWell(
                      onTap: () {
                        showPrezzaBtm(
                          context,
                          CategorySheetWidget(isBooking: widget.isBooking),
                        );
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SvgPicture.asset(Assets.assetsImagesMore),
                          vSpace(1),
                          Text(tr.seeMore, style: redText),
                        ],
                      ),
                    );
                  }

                  final category = bloc.categories[index];
                  log(category.imageUrl.toString(), name: 'Category Image URL');
                  return InkWell(
                    onTap: () {
                      log('Category tapped: ${category.name}');
                      appRoute.navigate(
                        AllVendorRoute(
                          id: category.id.toString(),
                          type: widget.isBooking ? 'booking' : 'normal',
                        ),
                      );
                    },
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      elevation: 10,
                      color: Colors.white,
                      child: Padding(
                        padding: const EdgeInsets.all(10),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            // Replace SvgPicture.asset with Image.network that uses the category imageUrl
                            Center(
                              child: CachedImage(
                                imageUrl: category.imageUrl ??
                                    Assets.assetsImagesDrink,
                                height: 60,
                                width: 60,
                                fit: BoxFit.cover,
                              ),
                            ),

                            // If you want to use CachedNetworkImage for caching, replace above with below:
                            /*
                            CachedNetworkImage(
                              imageUrl: category.imageUrl,
                              height: 60,
                              width: 60,
                              fit: BoxFit.cover,
                              placeholder: (context, url) =>
                                  const CircularProgressIndicator(),
                              errorWidget: (context, url, error) =>
                                  SvgPicture.asset(
                                    Assets.assetsImagesDrink,
                                    height: 60,
                                  ),
                            ),
                            */

                            vSpace(1),
                            Text(
                              category.name,
                              overflow: TextOverflow.ellipsis,
                              style: redText,
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              );
            },
          );
        },
      ),
    );
  }
}
