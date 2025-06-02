import 'package:auto_route/auto_route.dart';
import 'package:bot_toast/bot_toast.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:prezza/core/extension/widget_ext.dart';
import 'package:sizer/sizer.dart';

import '../../../../config/txt_themes.dart';
import '../../../../core/constants/assets.dart';
import '../../../../core/helper/tools.dart';
import '../../../../core/service/routes.gr.dart';
import '../../../../core/shared/widgets/under_montains.dart';
import '../../../../prezza_page.dart';
import '../../../vendor/presentation/widgets/shimmer_card_loading.dart';
import '../bloc/category_bloc.dart';

class CategorySheetWidget extends StatefulWidget {
  const CategorySheetWidget({super.key, this.isBooking = false});
  final bool isBooking;
  @override
  State<CategorySheetWidget> createState() => _CategorySheetWidgetState();
}

class _CategorySheetWidgetState extends State<CategorySheetWidget> {
  late final CategoryBloc bloc;
  @override
  void initState() {
    super.initState();
    bloc = CategoryBloc.get(context);
    bloc.add(CategoryEvent.getCategories(widget.isBooking));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(tr.categories),
      ).prezzaLeading(onTap: () {
        context.maybePop();
      }),
      body: BlocConsumer<CategoryBloc, CategoryState>(
        listener: (context, state) {
          state.maybeMap(
            failure: (err) {
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
                gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                  maxCrossAxisExtent: 40.w,
                  mainAxisExtent: 17.h,
                ),
                itemCount: bloc.categories.length,
                itemBuilder: (context, index) {
                  final category = bloc.categories[index];
                  return InkWell(
                    onTap: () {
                      context.maybePop();
                      appRoute.navigate(
                        AllVendorRoute(
                          id: category.id.toString(),
                          type: widget.isBooking ? 'booking' : 'normal',
                        ),
                      );
                    },
                    child: Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      elevation: 10,
                      color: Colors.white,
                      child: Padding(
                        padding: const EdgeInsets.all(10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SvgPicture.asset(Assets.assetsImagesDrink),
                            vSpace(1),
                            Center(
                              child: Text(
                                category.name,
                                overflow: TextOverflow.ellipsis,
                                style: redText,
                              ),
                            )
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
