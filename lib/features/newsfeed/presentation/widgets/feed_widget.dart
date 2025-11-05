import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:prezza/core/constants/assets.dart';
import 'package:prezza/core/helper/tools.dart';
import 'package:prezza/features/newsfeed/presentation/bloc/newsfeed_bloc.dart';
import 'package:prezza/features/newsfeed/presentation/widgets/loading_posts_profile.dart';
import 'package:prezza/features/newsfeed/presentation/widgets/post_widget.dart';
import 'package:prezza/features/newsfeed/presentation/widgets/user_post_widget.dart';


class FeedWidget extends StatefulWidget {
  const FeedWidget({
    super.key, 
    required this.userId, 
    required this.isFeedPosts,
    this.onRefresh,
  });
  final String userId;
  final bool isFeedPosts;
  final VoidCallback? onRefresh;
  
  @override
  State<FeedWidget> createState() => _FeedWidgetState();
}

class _FeedWidgetState extends State<FeedWidget> {
  late final NewsfeedBloc bloc;
  final GlobalKey<RefreshIndicatorState> _refreshIndicatorKey = GlobalKey<RefreshIndicatorState>();

  @override
  void initState() {
    bloc = NewsfeedBloc.get(context);
    _fetchPosts();
    super.initState();
  }

  void _fetchPosts() {
    if (widget.isFeedPosts) {
      bloc.add(NewsfeedEvent.getUserPosts(widget.userId));
    } else {
      bloc.add(NewsfeedEvent.getSavedPosts(widget.userId));
    }
  }

  Future<void> _onRefresh() async {
    _fetchPosts();
    widget.onRefresh?.call();
  }

  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      key: _refreshIndicatorKey,
      onRefresh: _onRefresh,
      child: BlocConsumer<NewsfeedBloc, NewsfeedState>(
        listener: (context, state) {
          state.maybeWhen(
            failureUserPosts: (err) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text(err),
                  backgroundColor: Colors.red,
                ),
              );
            },
            failureSavedPosts: (err) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text(err),
                  backgroundColor: Colors.red,
                ),
              );
            },
            orElse: () {},
          );
        },
        builder: (context, state) {
          return state.maybeWhen(
            loadingUserPosts: () {
              return const ShimmerPostsGrid();
            },
            loadingSavedPosts: () {
              return const ShimmerPostsGrid();
            },
            successUserPosts: () {
              if (bloc.userPosts.isEmpty) {
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
                        tr.noPosts,
                        style: tstyle.bodyLarge,
                      ),
                    ],
                  ),
                );
              }
              return ListView.builder(
                physics: const AlwaysScrollableScrollPhysics(), 
                itemCount: bloc.userPosts.length,
                itemBuilder: (context, index) {
                  final post = bloc.userPosts[index];
                  return UserPostWidget(post: post);
                },
              );
            },
            successSavedPosts: () {
              if (bloc.savedPosts.isEmpty) {
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
                        tr.noSavedPosts,
                        style: tstyle.bodyLarge,
                      ),
                    ],
                  ),
                );
              }
              return ListView.builder(
                physics: const AlwaysScrollableScrollPhysics(), 
                itemCount: bloc.savedPosts.length,
                itemBuilder: (context, index) {
                  final post = bloc.savedPosts[index];
                  return PostWidget(post: post);
                },
              );
            },
            failureUserPosts: (err) => Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(Icons.error_outline, size: 60, color: Colors.red),
                  vSpace(2),
                  Text(err),
                  vSpace(2),
                  ElevatedButton(
                    onPressed: _fetchPosts,
                    child: Text(tr.clickAgain),
                  ),
                ],
              ),
            ),
            failureSavedPosts: (err) => Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(Icons.error_outline, size: 60, color: Colors.red),
                  vSpace(2),
                  Text(err),
                  vSpace(2),
                  ElevatedButton(
                    onPressed: _fetchPosts,
                    child: Text(tr.clickAgain),
                  ),
                ],
              ),
            ),
            // Show posts on like/save states
            successLikePost: () => _buildPostsList(),
            successUnlikePost: () => _buildPostsList(),
            successPostSaved: () => _buildPostsList(),
            orElse: () => const SizedBox(),
          );
        },
      ),
    );
  }

  Widget _buildPostsList() {
    final posts = widget.isFeedPosts ? bloc.userPosts : bloc.savedPosts;
    
    if (posts.isEmpty) {
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
    
    return ListView.builder(
      physics: const AlwaysScrollableScrollPhysics(),
      itemCount: posts.length,
      itemBuilder: (context, index) {
        final post = posts[index];
        return UserPostWidget(post: post);
      },
    );
  }
}