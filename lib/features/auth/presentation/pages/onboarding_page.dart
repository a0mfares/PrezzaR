import 'package:prezza/core/helper/tools.dart';
// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:prezza/core/service/hive_storage.dart';
import 'package:prezza/core/service/routes.gr.dart';
import 'package:prezza/prezza_page.dart';
import 'package:sizer/sizer.dart';

import 'package:prezza/core/constants/assets.dart';

import '../../../../config/custom_colors.dart';

@RoutePage()
class OnboardingPage extends StatefulWidget {
  const OnboardingPage({super.key});

  @override
  State<OnboardingPage> createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage>
    with TickerProviderStateMixin {
  late final PageController _controller;
  final List<OnBoardModel> onboarding = [
    OnBoardModel(
        img: Assets.assetsImagesWelcomePage,
        heading: tr.welcome,
        title: tr.welcomeTitle),
    OnBoardModel(
        img: Assets.assetsImagesOrderAhead,
        heading: tr.orderAhead,
        title: tr.orderAheadTitle),
    OnBoardModel(
        img: Assets.assetsImagesBookTable,
        heading: tr.bookTable,
        title: tr.bookTableTitle),
    OnBoardModel(
        img: Assets.assetsImagesAllFavorite,
        heading: tr.allFav,
        title: tr.allFavTitle),
  ];

  late AnimationController _controllerAnime;
  late Animation<Alignment> _alignmentAnimation;

  int currentIndex = 0;
  @override
  void initState() {
    _controller = PageController();
    _controllerAnime = AnimationController(
      duration: const Duration(milliseconds: 1000),
      vsync: this,
    );

    _alignmentAnimation = AlignmentTween(
      begin: Alignment.bottomCenter,
      end: Alignment.center,
    ).animate(
      CurvedAnimation(parent: _controllerAnime, curve: Curves.easeInOut),
    );

    super.initState();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    precacheImage(const AssetImage(Assets.assetsImagesWelcomePage), context);
    precacheImage(const AssetImage(Assets.assetsImagesOrderAhead), context);
    precacheImage(const AssetImage(Assets.assetsImagesBookTable), context);
    precacheImage(const AssetImage(Assets.assetsImagesAllFavorite), context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView.builder(
            physics: const NeverScrollableScrollPhysics(),
            controller: _controller,
            itemCount: onboarding.length,
            onPageChanged: (index) {
              currentIndex = index;
              setState(() {});
            },
            itemBuilder: (context, index) {
              return OnBoardItem(
                onBoard: onboarding[index],
                index: index,
              );
            },
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 50, horizontal: 20),
            child: Align(
              alignment: AlignmentDirectional.bottomEnd,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  AnimatedBuilder(
                    animation: _controllerAnime,
                    builder: (context, child) {
                      return Align(
                        alignment: _alignmentAnimation.value,
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            if (currentIndex > 0 &&
                                currentIndex != onboarding.length - 1) ...[
                              AnimatedOpacity(
                                duration: const Duration(milliseconds: 500),
                                opacity: currentIndex > 0 &&
                                        currentIndex != onboarding.length - 1
                                    ? 1
                                    : 0,
                                child: TextButton(
                                  onPressed: () {
                                    appRoute.replace(const LoginRoute());
                                    appRoute.removeLast();
                                    HiveStorage.set(kOnBoard, true);
                                  },
                                  style: TextButton.styleFrom(
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(12),
                                    ),
                                    minimumSize: const Size(100, 40),
                                    maximumSize: const Size(100, 40),
                                  ),
                                  child: Text(tr.skip),
                                ),
                              ),
                            ],
                            hSpace(2),
                            AnimatedContainer(
                              duration: const Duration(milliseconds: 500),
                              width: currentIndex > 0 ? 150 : 200,
                              height: currentIndex > 0 ? 40 : 50,
                              child: ElevatedButton(
                                onPressed: () {
                                  if (currentIndex == onboarding.length - 1) {
                                    appRoute.replace(const LoginRoute());
                                    appRoute.removeLast();
                                    HiveStorage.set(kOnBoard, true);
                                  } else if (currentIndex == 2) {
                                    _controllerAnime.forward();
                                    _controller.nextPage(
                                        duration:
                                            const Duration(milliseconds: 500),
                                        curve: Curves.easeIn);
                                  } else {
                                    _controller.nextPage(
                                        duration:
                                            const Duration(milliseconds: 500),
                                        curve: Curves.easeIn);
                                  }
                                },
                                style: ElevatedButton.styleFrom(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(12),
                                  ),
                                ),
                                child: Text(currentIndex > 0
                                    ? currentIndex == onboarding.length - 1
                                        ? tr.enjoy
                                        : tr.next
                                    : tr.letsStarted),
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                  vSpace(3),
                  AnimatedOpacity(
                    // visible: currentIndex > 0,
                    duration: const Duration(milliseconds: 100),
                    opacity: currentIndex > 0 ? 1 : 0,
                    child: Center(
                      child: SizedBox(
                        height: 10,
                        width: 200,
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: onboarding.length - 1,
                          itemBuilder: (context, i) {
                            return AnimatedContainer(
                              duration: const Duration(milliseconds: 500),
                              margin:
                                  const EdgeInsets.symmetric(horizontal: 10),
                              height: 5,
                              width: (currentIndex - 1) != i ? 35 : 60,
                              decoration: BoxDecoration(
                                color: (currentIndex - 1) == i
                                    ? primary
                                    : lightCream,
                                borderRadius: BorderRadius.circular(20),
                              ),
                            );
                          },
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

class OnBoardModel {
  final String img;
  final String heading;
  final String title;
  OnBoardModel({
    required this.img,
    required this.heading,
    required this.title,
  });
}

class OnBoardItem extends StatelessWidget {
  const OnBoardItem({
    super.key,
    required this.onBoard,
    required this.index,
  });
  final OnBoardModel onBoard;
  final int index;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          onBoard.img,
          fit: BoxFit.cover,
          height: 100.h,
          width: 100.w,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 70, horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: 81.w,
                child: Text(
                  onBoard.heading,
                  style: tstyle.bodyLarge!
                      .copyWith(color: lightCream, fontSize: 34.sp),
                ),
              ),
              SizedBox(
                width: 45.w,
                child: Text(
                  onBoard.title,
                  style: tstyle.bodyLarge!
                      .copyWith(color: lightCream, fontSize: 18.sp),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
