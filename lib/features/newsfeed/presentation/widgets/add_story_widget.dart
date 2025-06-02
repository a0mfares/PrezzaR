
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:prezza/core/constants/assets.dart';
import 'package:prezza/core/shared/widgets/profile_avater_prezza.dart';
import 'package:prezza/features/newsfeed/presentation/bloc/newsfeed_bloc.dart';
// import 'package:story_designer/story_designer.dart';

import '../../../../core/helper/tools.dart';

class AddStoryWidget extends StatefulWidget {
  const AddStoryWidget({super.key});

  @override
  State<AddStoryWidget> createState() => _AddStoryWidgetState();
}

class _AddStoryWidgetState extends State<AddStoryWidget> {
  late final NewsfeedBloc bloc;

  @override
  void initState() {
    bloc = NewsfeedBloc.get(context);

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 150,
      height: 200,
      child: BlocListener<NewsfeedBloc, NewsfeedState>(
        listener: (context, state) {
          state.maybeMap(
            success: (v) async {},
            orElse: () {},
          );
        },
        child: Card(
          child: Padding(
            padding: const EdgeInsets.all(15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ProfileAvater(
                  src: SvgPicture.asset(
                    Assets.assetsImagesProfile,
                    width: 50,
                    fit: BoxFit.cover,
                  ),
                  onTap: () {},
                ),
                const Spacer(),
                Text(tr.createPost),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
