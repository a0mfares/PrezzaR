import 'package:prezza/core/helper/tools.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:prezza/features/category/presentation/bloc/category_bloc.dart';

import '../../../../core/shared/widgets/prezza_slider_img.dart';
import '../../../../core/shared/widgets/under_montains.dart';
import '../../../vendor/presentation/widgets/shimmer_card_loading.dart';

class SponsorsPage extends StatefulWidget {
  const SponsorsPage({super.key});

  @override
  State<SponsorsPage> createState() => _SponsorsPageState();
}

class _SponsorsPageState extends State<SponsorsPage> {
  late final CategoryBloc bloc;
  @override
  void initState() {
    super.initState();
    bloc = CategoryBloc.get(context);
    bloc.add(const CategoryEvent.getSponsors());
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CategoryBloc, CategoryState>(
      builder: (context, state) {
        return state.maybeWhen(
          loading: () => const ShimmerLoadingPageView(),
          failure: (err) => FailureWidget(error: err),
          orElse: () {
            if (bloc.sponsors.isEmpty) {
              return const SizedBox();
            }
            return Column(
              children: [
                vSpace(3),
                Text(
                  tr.sponser,
                  style: tstyle.bodyLarge!.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                vSpace(2),
                PrezzaSliderImg(
                  height: 200,
                  isOnline: true,
                  images: bloc.sponsors.map((e) => e.image).toList(),
                ),
                vSpace(3),
              ],
            );
          },
        );
      },
    );
  }
}
