import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:prezza/core/constants/assets.dart';
import 'package:prezza/core/helper/tools.dart';
import 'package:prezza/features/newsfeed/presentation/bloc/newsfeed_bloc.dart';
import 'package:prezza/features/newsfeed/presentation/widgets/loading_posts_profile.dart';

import '../../../../core/shared/widgets/cached_image.dart';

class FeedWidget extends StatefulWidget {
  const FeedWidget(
      {super.key, required this.userId, required this.isFeedPosts});
  final String userId;
  final bool isFeedPosts;
  @override
  State<FeedWidget> createState() => _FeedWidgetState();
}

class _FeedWidgetState extends State<FeedWidget> {
  late final NewsfeedBloc bloc;

  @override
  void initState() {
    bloc = NewsfeedBloc.get(context);
    if (widget.isFeedPosts) {
      bloc.add(NewsfeedEvent.getUserPosts(widget.userId));
    } else {
      bloc.add(NewsfeedEvent.getSavedPosts(widget.userId));
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewsfeedBloc, NewsfeedState>(
      builder: (context, state) {
        return state.maybeWhen(
          loadingPosts: () {
            return const ShimmerPostsGrid();
          },
          success: () {
            if (bloc.posts.isEmpty) {
              return Center(
                child: Column(
                  children: [
                    SvgPicture.asset(
                      Assets.assetsImagesNoData,
                      width: 200,
                    ),
                    vSpace(3),
                    Text(
                      widget.isFeedPosts ? tr.noPosts : tr.noSavedPosts,
                      style: tstyle.bodyLarge,
                    ),
                  ],
                ),
              );
            }
            return GridView.builder(
              gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: 120,
                mainAxisExtent: 170,
              ),
              itemCount: bloc.posts.length,
              itemBuilder: (context, index) {
                final post = bloc.posts[index];
                return CachedImage(
                  imageUrl: post.post_images.first.image,
                  fit: BoxFit.cover,
                );
              },
            );
          },
          orElse: () => const SizedBox(),
        );
      },
    );
  }
}
