import 'dart:developer';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_svg/svg.dart';
import 'package:prezza/core/constants/assets.dart';
import 'package:prezza/core/extension/widget_ext.dart';
import 'package:prezza/core/helper/tools.dart';
import 'package:prezza/core/shared/widgets/under_montains.dart';

import '../../../../config/custom_colors.dart';
import '../bloc/landing_bloc.dart';

@RoutePage()
class FeedbackPage extends StatefulWidget {
  const FeedbackPage({super.key});

  @override
  State<FeedbackPage> createState() => _FeedbackPageState();
}

class _FeedbackPageState extends State<FeedbackPage> {
  late final LandingBloc bloc;

  @override
  void initState() {
    bloc = LandingBloc.get(context);
    bloc.add(const LandingEvent.getAppReviews());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 400,
        backgroundColor: teal,
      ).prezzaLeading(),
      body: SafeArea(
        child: Column(
          children: [
            Container(
              // height: 100,
              padding: const EdgeInsets.only(left: 35, top: 30, bottom: 20),
              width: double.infinity,
              decoration: BoxDecoration(
                color: teal,
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(15),
                  bottomRight: Radius.circular(15),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    tr.overallRating,
                    style: tstyle.headlineSmall!.copyWith(color: Colors.white),
                  ),
                  vSpace(2),
                  BlocBuilder<LandingBloc, LandingState>(
                    builder: (context, state) {
                      return state.maybeWhen(
                        orElse: () {
                          return Row(
                            children: [
                              RatingBar(
                                initialRating: bloc.averageRate,
                                direction: Axis.horizontal,
                                allowHalfRating: true,
                                ignoreGestures: true,
                                itemCount: 5,
                                itemPadding: const EdgeInsets.only(right: 15),
                                unratedColor: lightCream,
                                glowColor: lightCoral,
                                ratingWidget: RatingWidget(
                                  full: SvgPicture.asset(
                                      Assets.assetsImagesStartFull),
                                  half: SvgPicture.asset(
                                      Assets.assetsImagesStarHalf),
                                  empty: SvgPicture.asset(
                                      Assets.assetsImagesStarEMpty),
                                ),
                                onRatingUpdate: (rating) {
                                  log(rating.toString());
                                },
                              ),
                              hSpace(1),
                              Text(
                                bloc.averageRate.toStringAsFixed(1),
                                style: tstyle.headlineSmall!.copyWith(
                                  color: lightCoral,
                                ),
                              )
                            ],
                          );
                        },
                      );
                    },
                  ),
                ],
              ),
            ),
            vSpace(3),
            Text(
              tr.customerOpinions,
              style: tstyle.bodyLarge,
            ),
            vSpace(3),
            Expanded(
              child: BlocBuilder<LandingBloc, LandingState>(
                builder: (context, state) {
                  return state.maybeWhen(
                    success: () {
                      return GridView.builder(
                        gridDelegate:
                            const SliverGridDelegateWithMaxCrossAxisExtent(
                          maxCrossAxisExtent: 200,
                        ),
                        itemCount: bloc.appReviews.length,
                        itemBuilder: (context, index) {
                          final review = bloc.appReviews[index];
                          return Card(
                            color: Colors.white,
                            margin: const EdgeInsets.symmetric(
                                horizontal: 10, vertical: 10),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15)),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  RichText(
                                    overflow: TextOverflow.ellipsis,
                                    text: TextSpan(
                                      style: tstyle.bodyLarge!
                                          .copyWith(color: Colors.grey),
                                      children: [
                                        TextSpan(
                                            text: '\u201C',
                                            style: tstyle.headlineSmall),
                                        TextSpan(
                                          text: review.review,
                                        ),
                                      ],
                                    ),
                                  ),
                                  vSpace(3),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      RatingBar(
                                        initialRating: review.stars.toDouble(),
                                        direction: Axis.horizontal,
                                        allowHalfRating: true,
                                        itemCount: 5,
                                        itemSize: 15,
                                        itemPadding:
                                            const EdgeInsets.only(right: 5),
                                        unratedColor: lightCream,
                                        glowColor: lightCoral,
                                        ratingWidget: RatingWidget(
                                          full: Icon(
                                            Icons.star,
                                            color: deepRed,
                                          ),
                                          half: Icon(
                                            Icons.star_half,
                                            color: deepRed,
                                          ),
                                          empty: const Icon(
                                            Icons.star,
                                            color: Colors.grey,
                                          ),
                                        ),
                                        onRatingUpdate: (rating) {},
                                      ),
                                      hSpace(1),
                                      Text(
                                        review.stars.toString(),
                                        style: tstyle.bodyLarge!.copyWith(
                                          color: deepRed,
                                        ),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ),
                          );
                        },
                      );
                    },
                    orElse: () {
                      return const UnderMontains();
                    },
                  );
                },
              ),
            ),
            vSpace(2),
            ElevatedButton(
              onPressed: () {
                showModalBottomSheet(
                    context: context,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15)),
                    builder: (context) {
                      return Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            vSpace(4),
                            Text(
                              tr.rateUs,
                              style: tstyle.headlineSmall,
                            ),
                            vSpace(3),
                            BlocBuilder<LandingBloc, LandingState>(
                              builder: (context, state) {
                                return state.maybeWhen(
                                  orElse: () {
                                    return Row(
                                      children: [
                                        RatingBar(
                                          initialRating: bloc.rate.toDouble(),
                                          direction: Axis.horizontal,
                                          allowHalfRating: true,
                                          itemCount: 5,
                                          itemPadding:
                                              const EdgeInsets.only(right: 15),
                                          unratedColor: lightCream,
                                          glowColor: lightCoral,
                                          ratingWidget: RatingWidget(
                                            full: SvgPicture.asset(
                                                Assets.assetsImagesStartFull),
                                            half: SvgPicture.asset(
                                                Assets.assetsImagesStarHalf),
                                            empty: SvgPicture.asset(
                                                Assets.assetsImagesStarEMpty),
                                          ),
                                          onRatingUpdate: (rating) {
                                            bloc.add(LandingEvent.changeRate(
                                                rating));
                                          },
                                        ),
                                        hSpace(1),
                                        Text(
                                          bloc.rate.toStringAsFixed(1),
                                          style: tstyle.headlineSmall!.copyWith(
                                            color: lightCoral,
                                          ),
                                        ),
                                      ],
                                    );
                                  },
                                );
                              },
                            ),
                            vSpace(3),
                            TextFormField(
                              controller: bloc.review,
                              decoration: InputDecoration(
                                hintText: tr.writeHere,
                              ),
                              maxLines: 10,
                              minLines: 5,
                            ).prezaa(
                              label: tr.leaveFeedback,
                              style: tstyle.headlineSmall,
                            ),
                            vSpace(3),
                            Center(
                              child: BlocBuilder<LandingBloc, LandingState>(
                                builder: (context, state) {
                                  return ElevatedButton(
                                    onPressed: () {
                                      bloc.add(
                                          const LandingEvent.addAppReview());
                                    },
                                    child: state.maybeWhen(
                                      loading: () => defLoadingCenter,
                                      orElse: () {
                                        return Text(tr.send);
                                      },
                                    ),
                                  );
                                },
                              ),
                            ),
                          ],
                        ),
                      );
                    });
              },
              child: Text(tr.leaveFeedback),
            ),
            vSpace(3),
          ],
        ),
      ),
    );
  }
}
