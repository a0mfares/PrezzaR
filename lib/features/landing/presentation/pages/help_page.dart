import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_widget_from_html/flutter_widget_from_html.dart';
import 'package:prezza/core/constants/assets.dart';
import 'package:prezza/core/extension/widget_ext.dart';
import 'package:prezza/core/helper/tools.dart';
import 'package:prezza/core/shared/widgets/under_montains.dart';
import 'package:prezza/features/landing/presentation/bloc/landing_bloc.dart';

import '../../../../config/custom_colors.dart';

@RoutePage()
class HelpPage extends StatefulWidget {
  const HelpPage({super.key});

  @override
  State<HelpPage> createState() => _HelpPageState();
}

class _HelpPageState extends State<HelpPage> {
  late final LandingBloc bloc;

  @override
  void initState() {
    bloc = LandingBloc.get(context);
    bloc.add(const LandingEvent.getCommonIssue());
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
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              // height: 100,
              padding: const EdgeInsets.all(35),
              width: double.infinity,
              decoration: BoxDecoration(
                color: teal,
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(15),
                  bottomRight: Radius.circular(15),
                ),
              ),
              child: TextFormField(
                decoration: InputDecoration(
                  // suffix: ,
                  hintText: tr.describeIssue,
                  suffixIcon: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Container(
                        height: 40,
                        width: 1,
                        color: Colors.grey,
                      ),
                      hSpace(1),
                      const Icon(
                        Icons.search,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            vSpace(3),
            Text(
              tr.commonIssues,
              style: tstyle.headlineSmall,
            ).margin(
              margin: const EdgeInsets.symmetric(horizontal: 20),
            ),
            vSpace(3),
            Expanded(
              child: BlocBuilder<LandingBloc, LandingState>(
                builder: (context, state) {
                  return state.maybeWhen(
                    loading: () => defLoadingCenter,
                    success: () {
                      return RefreshIndicator(
                        onRefresh: () async {
                          bloc.add(const LandingEvent.getCommonIssue());
                        },
                        child: GridView.builder(
                          gridDelegate:
                              const SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 1, mainAxisExtent: 200),
                          itemCount: bloc.commonIssues.length,
                          itemBuilder: (context, index) {
                            final commonIssue = bloc.commonIssues[index];
                            return Card(
                              color: Colors.white,
                              margin: const EdgeInsets.symmetric(
                                  horizontal: 20, vertical: 10),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15)),
                              child: Padding(
                                padding: const EdgeInsets.all(20),
                                child: Column(
                                  // mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    HtmlWidget(commonIssue.issue),
                                    // Text(
                                    //   'Lorem ipsum dolor sit amet consectetur. Consequat diam et quis integer diam aenean quisque. Curabitur nibh pharetra adipiscing....Lorem ipsum dolor sit amet consectetur. Consequat diam et quis integer di....',
                                    //   style: tstyle.bodyLarge!.copyWith(
                                    //     color: Colors.grey,
                                    //   ),
                                    // ),
                                  ],
                                ),
                              ),
                            );
                          },
                        ),
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
            Center(
              child: ElevatedButton(
                onPressed: () {},
                child: Text(tr.furtherHelp),
              ),
            ),
            vSpace(3),
          ],
        ),
      ),
    );
  }
}
