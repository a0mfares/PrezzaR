import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:prezza/core/constants/assets.dart';
import 'package:prezza/core/helper/tools.dart';
import 'package:prezza/features/newsfeed/domain/entities/post_entity.dart';
import 'package:prezza/features/newsfeed/presentation/bloc/newsfeed_bloc.dart';
import 'package:prezza/features/newsfeed/presentation/widgets/loading_posts_profile.dart';
import 'package:prezza/features/newsfeed/presentation/widgets/post_widget.dart';

class FeedWidget extends StatefulWidget {
  const FeedWidget({
    super.key,
    required this.userId,
    required this.isFeedPosts,
  });

  final String userId;
  final bool isFeedPosts;

  @override
  State<FeedWidget> createState() => _FeedWidgetState();
}

class _FeedWidgetState extends State<FeedWidget>
    with AutomaticKeepAliveClientMixin {
  late final NewsfeedBloc bloc;
  bool hasInitialized = false;

  @override
  bool get wantKeepAlive => true;

  @override
  void initState() {
    super.initState();
    bloc = NewsfeedBloc.get(context);
    _initializeFeed();
  }

  @override
  void didUpdateWidget(covariant FeedWidget oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.userId != widget.userId ||
        oldWidget.isFeedPosts != widget.isFeedPosts) {
      hasInitialized = false;
      _initializeFeed();
    }
  }

  void _initializeFeed() {
    if (hasInitialized) return;

    if (widget.isFeedPosts) {
      bloc.add(NewsfeedEvent.getUserPosts(widget.userId));
    } else {
      bloc.add(NewsfeedEvent.getSavedPosts(widget.userId));
    }

    hasInitialized = true;
  }

  void _retryFetch() {
    if (widget.isFeedPosts) {
      bloc.add(NewsfeedEvent.getUserPosts(widget.userId));
    } else {
      bloc.add(NewsfeedEvent.getSavedPosts(widget.userId));
    }
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);

    return BlocBuilder<NewsfeedBloc, NewsfeedState>(
      builder: (context, state) {
        // Pick correct list from bloc
        final posts = widget.isFeedPosts ? bloc.userPosts : bloc.savedPosts;

        return state.maybeWhen(
          loading: () => const ShimmerPostsGrid(),
          loadingPosts: () => const ShimmerPostsGrid(),
          failure: (error) => _buildErrorContent(error),
          orElse: () {
            if (posts.isNotEmpty) {
              return _buildPostsContent(posts);
            } else {
              return _buildEmptyContent(isFeed: widget.isFeedPosts);
            }
          },
        );
      },
    );
  }

  Widget _buildPostsContent(List<PostEntity> posts) {
    return RefreshIndicator(
      onRefresh: () async => _retryFetch(),
      child: ListView.builder(
        physics: const AlwaysScrollableScrollPhysics(),
        itemCount: posts.length,
        itemBuilder: (context, index) {
          final post = posts[index];
          return PostWidget(post: post);
        },
      ),
    );
  }

  Widget _buildEmptyContent({required bool isFeed}) {
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
            isFeed ? tr.noPosts : tr.noSavedPosts,
            style: tstyle.bodyLarge,
          ),
          vSpace(2),
          ElevatedButton(
            onPressed: _retryFetch,
            child: Text(tr.retry),
          ),
        ],
      ),
    );
  }

  Widget _buildErrorContent(String error) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Icon(Icons.error_outline, size: 48, color: Colors.red),
          vSpace(2),
          Text('Error loading posts', style: tstyle.bodyLarge),
          vSpace(1),
          Text(
            error,
            style: tstyle.bodySmall?.copyWith(color: Colors.grey),
            textAlign: TextAlign.center,
          ),
          vSpace(2),
          ElevatedButton(
            onPressed: _retryFetch,
            child: Text(tr.retry),
          ),
        ],
      ),
    );
  }
}
