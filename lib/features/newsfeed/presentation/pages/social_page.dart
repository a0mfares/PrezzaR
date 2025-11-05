import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:prezza/core/service/routes.gr.dart';
import 'package:prezza/features/newsfeed/presentation/widgets/post_widget.dart';
import 'package:prezza/prezza_page.dart';

import '../../../../config/custom_colors.dart';
import '../../../../core/constants/assets.dart';
import '../../../../core/helper/tools.dart';
import '../bloc/newsfeed_bloc.dart';
import '../widgets/post_loading_widget.dart';

@RoutePage()
class SocialPage extends StatefulWidget {
  const SocialPage({super.key});

  @override
  State<SocialPage> createState() => _SocialPageState();
}

class _SocialPageState extends State<SocialPage> 
    with AutoRouteAwareStateMixin<SocialPage> {
  late final NewsfeedBloc _bloc;
  final ScrollController _scrollController = ScrollController();
  final GlobalKey<RefreshIndicatorState> _refreshIndicatorKey = 
      GlobalKey<RefreshIndicatorState>();

  @override
  void initState() {
    super.initState();
    _bloc = NewsfeedBloc.get(context);
    _fetchPosts();
  }

  void _fetchPosts() {
    _bloc.add(const NewsfeedEvent.fetchPosts());
  }
  
  @override
  void didPopNext() {
    // Refresh posts when returning to this page
    _fetchPosts();
  }
  
  @override
  void didPush() {
    // Initial load is already handled in initState
  }
  
  @override
  void didPop() {
    // This is called when we're navigating away from this page
  }
  
  @override
  void didPushNext() {
    // This is called when we're navigating to a new page
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  Future<void> _onRefresh() async {
    _fetchPosts();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(tr.newsFeed),
        leading: IconButton(
          onPressed: () {
            appRoute.navigate(ProfileSocialRoute(userId: usr.user.uuid));
          },
          icon: CircleAvatar(
            backgroundImage: usr.user.profile_picture.isNotEmpty
                ? NetworkImage(usr.user.profile_picture.replaceAll("https%3A/prezza-media-state-bucket.s3.us-east-1.amazonaws.com/https%253A/prezza-media-state-bucket.s3.us-east-1.amazonaws.com/", ""))
                : null,
            child: usr.user.profile_picture.isNotEmpty
                ? const Icon(Icons.person)
                : null,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {
              appRoute.navigate(const UsersSearchRoute());
            },
            icon: const Icon(Icons.search),
          ),
        ],
      ),
      body: RefreshIndicator(
        key: _refreshIndicatorKey,
        onRefresh: _onRefresh,
        child: CustomScrollView(
          controller: _scrollController,
          slivers: [
            SliverToBoxAdapter(
              child: Column(
                children: [
                  vSpace(3),
                  Card(
                    elevation: 10,
                    color: Colors.white,
                    child: ListTile(
                      onTap: () {
                        appRoute.navigate(const CreatePostRoute());
                      },
                      leading: const Icon(Icons.image),
                      title: Text(
                        tr.shareExp,
                        style: tstyle.bodyLarge!.copyWith(
                          color: primary,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      trailing: SvgPicture.asset(Assets.assetsImagesGallery),
                    ),
                  ),
                  vSpace(3),
                ],
              ),
            ),
            BlocConsumer<NewsfeedBloc, NewsfeedState>(
              listener: (context, state) {
                state.maybeWhen(
                  failurePosts: (err) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text(err),
                        backgroundColor: Colors.red,
                      ),
                    );
                  },
                  successCreatePost: () {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text(tr.done),
                        backgroundColor: Colors.green,
                      ),
                    );
                    // Refresh posts after creation
                    _fetchPosts();
                  },
                  failureCreatePost: (err) {
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
                  initial: () => const SliverFillRemaining(
                    child: Center(child: CircularProgressIndicator()),
                  ),
                  loadingPosts: () => const SliverFillRemaining(
                    child: LoadingPostWidget(),
                  ),
                  creatingPost: (progress) => SliverFillRemaining(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CircularProgressIndicator(value: progress / 100),
                        vSpace(2),
                        Text('${tr.uploading} ${progress.round()}%'),
                      ],
                    ),
                  ),
                  failurePosts: (err) => SliverFillRemaining(
                    child: Center(
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
                  ),
                  successPosts: () {
                    if (_bloc.posts.isEmpty) {
                      return SliverFillRemaining(
                        child: Center(
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
                        ),
                      );
                    }
                    
                    return SliverList(
                      delegate: SliverChildBuilderDelegate(
                        (context, index) {
                          final post = _bloc.posts[index];
                          return PostWidget(post: post);
                        },
                        childCount: _bloc.posts.length,
                      ),
                    );
                  },
                  // Keep showing posts on these states
                  successLikePost: () => SliverList(
                    delegate: SliverChildBuilderDelegate(
                      (context, index) {
                        final post = _bloc.posts[index];
                        return PostWidget(post: post);
                      },
                      childCount: _bloc.posts.length,
                    ),
                  ),
                  successUnlikePost: () => SliverList(
                    delegate: SliverChildBuilderDelegate(
                      (context, index) {
                        final post = _bloc.posts[index];
                        return PostWidget(post: post);
                      },
                      childCount: _bloc.posts.length,
                    ),
                  ),
                  successPostSaved: () => SliverList(
                    delegate: SliverChildBuilderDelegate(
                      (context, index) {
                        final post = _bloc.posts[index];
                        return PostWidget(post: post);
                      },
                      childCount: _bloc.posts.length,
                    ),
                  ),
                  orElse: () => SliverList(
                    delegate: SliverChildBuilderDelegate(
                      (context, index) {
                        final post = _bloc.posts[index];
                        return PostWidget(post: post);
                      },
                      childCount: _bloc.posts.length,
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}