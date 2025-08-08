import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:prezza/core/constants/assets.dart';
import 'package:prezza/core/helper/tools.dart';
import 'package:prezza/features/newsfeed/presentation/bloc/newsfeed_bloc.dart';
import 'package:prezza/features/newsfeed/presentation/widgets/loading_posts_profile.dart';
import '../../../../core/shared/widgets/cached_image.dart';
import 'dart:developer';

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
    super.initState();
    bloc = NewsfeedBloc.get(context);

    log('FeedWidget: Initializing with userId: ${widget.userId}, isFeedPosts: ${widget.isFeedPosts}');

    if (widget.isFeedPosts) {
      log('FeedWidget: Fetching user posts...');
      bloc.add(NewsfeedEvent.getUserPosts(widget.userId));
    } else {
      log('FeedWidget: Fetching saved posts...');
      bloc.add(NewsfeedEvent.getSavedPosts(widget.userId));
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewsfeedBloc, NewsfeedState>(
      builder: (context, state) {
        log('FeedWidget: Current state: $state');
        log('FeedWidget: Posts count: ${bloc.posts.length}');

        return state.maybeWhen(
          loadingPosts: () {
            log('FeedWidget: Showing loading state');
            return const ShimmerPostsGrid();
          },
          success: () {
            log('FeedWidget: Success state - Posts count: ${bloc.posts.length}');

            if (bloc.posts.isEmpty) {
              log('FeedWidget: No posts found, showing empty state');
              return Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
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

            log('FeedWidget: Showing ${bloc.posts.length} posts in grid');
            return GridView.builder(
              gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: 120,
                mainAxisExtent: 170,
                crossAxisSpacing: 2,
                mainAxisSpacing: 2,
              ),
              itemCount: bloc.posts.length,
              itemBuilder: (context, index) {
                final post = bloc.posts[index];
                log('FeedWidget: Rendering post $index with ${post.post_images.length} images');

                return GestureDetector(
                  onTap: () {
                    log('FeedWidget: Post $index tapped');
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(color: Colors.grey.shade200),
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                      child: CachedImage(
                        imageUrl: post.post_images.isNotEmpty
                            ? post.post_images.first.image
                            : '', // Handle empty images
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                );
              },
            );
          },
          failure: (error) {
            log('FeedWidget: Error state: $error');
            return Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(Icons.error_outline, size: 48, color: Colors.red),
                  vSpace(2),
                  Text(
                    'Error loading posts',
                    style: tstyle.bodyLarge,
                  ),
                  vSpace(1),
                  Text(
                    error,
                    style: tstyle.bodySmall?.copyWith(color: Colors.grey),
                    textAlign: TextAlign.center,
                  ),
                  vSpace(2),
                  ElevatedButton(
                    onPressed: () {
                      if (widget.isFeedPosts) {
                        bloc.add(NewsfeedEvent.getUserPosts(widget.userId));
                      } else {
                        bloc.add(NewsfeedEvent.getSavedPosts(widget.userId));
                      }
                    },
                    child: const Text('Retry'),
                  ),
                ],
              ),
            );
          },
          orElse: () {
            log('FeedWidget: Default state (orElse)');
            return const SizedBox();
          },
        );
      },
    );
  }
}
