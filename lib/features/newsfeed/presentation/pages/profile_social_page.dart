import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:prezza/config/custom_colors.dart';
import 'package:prezza/core/extension/widget_ext.dart';
import 'package:prezza/core/helper/tools.dart';
import 'package:prezza/features/newsfeed/presentation/bloc/newsfeed_bloc.dart';
import 'package:prezza/features/newsfeed/presentation/widgets/feed_widget.dart';

import '../../../../core/shared/widgets/cached_image.dart';
import '../widgets/profile_loading_page.dart';

@RoutePage()
class ProfileSocialPage extends StatefulWidget {
  const ProfileSocialPage({super.key, required this.userId});
  final String userId;
  
  @override
  State<ProfileSocialPage> createState() => _ProfileSocialPageState();
}

class _ProfileSocialPageState extends State<ProfileSocialPage>
    with TickerProviderStateMixin, AutoRouteAwareStateMixin<ProfileSocialPage> {
  late final TabController _tabController;
  late final NewsfeedBloc _bloc;
  bool _isFollowing = false;
  
  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
    _bloc = NewsfeedBloc.get(context);
    _loadUserData();
    
    _tabController.addListener(() {
      if (!_tabController.indexIsChanging) {
        _loadTabContent();
      }
    });
  }
  
  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }
  
  void _loadUserData() {
    _bloc.add(NewsfeedEvent.getUserInfo(widget.userId));
    _loadTabContent();
  }
  
  void _loadTabContent() {
    if (_tabController.index == 0) {
      _bloc.add(NewsfeedEvent.getUserPosts(widget.userId));
    } else {
      _bloc.add(NewsfeedEvent.getSavedPosts(widget.userId));
    }
  }
  
  void _refreshContent() {
    _bloc.add(NewsfeedEvent.getUserInfo(widget.userId));
    _loadTabContent();
  }
  
  void _toggleFollow() {
    if (_isFollowing) {
      _bloc.add(NewsfeedEvent.unFollow(widget.userId));
    } else {
      _bloc.add(NewsfeedEvent.follow(widget.userId));
    }
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(tr.profile),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            context.router.back();
          },
        ),
      ).prezzaLeading(),
      body: RefreshIndicator(
        onRefresh: () async {
          _refreshContent();
        },
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: Column(
                children: [
                  vSpace(3),
                  BlocConsumer<NewsfeedBloc, NewsfeedState>(
                    listener: (context, state) {
                      state.maybeWhen(
                        successFollow: () {
                          setState(() {
                            _isFollowing = true;
                          });
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(content: Text(tr.follow)),
                          );
                        },
                        successUnfollow: () {
                          setState(() {
                            _isFollowing = false;
                          });
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(content: Text(tr.unfollow)),
                          );
                        },
                        failureFollow: (err) {
                          setState(() {
                            _isFollowing = false;
                          });
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              content: Text(err),
                              backgroundColor: Colors.red,
                            ),
                          );
                        },
                        failureUnfollow: (err) {
                          setState(() {
                            _isFollowing = true;
                          });
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              content: Text(err),
                              backgroundColor: Colors.red,
                            ),
                          );
                        },
                        failureProfile: (err) {
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
                        initial: () => const ShimmerProfilePlaceholder(),
                        loadingProfile: () => const ShimmerProfilePlaceholder(),
                        failureProfile: (err) => Center(
                          child: Column(
                            children: [
                              Text(err),
                              vSpace(2),
                              ElevatedButton(
                                onPressed: _loadUserData,
                                child: Text(tr.clickAgain),
                              ),
                            ],
                          ),
                        ),
                        successProfile: () => _buildProfileHeader(),
                        // Also show profile on these states
                        loadingFollow: () => _buildProfileHeader(),
                        loadingUnfollow: () => _buildProfileHeader(),
                        successFollow: () => _buildProfileHeader(),
                        successUnfollow: () => _buildProfileHeader(),
                        loadingUserPosts: () => _buildProfileHeader(),
                        loadingSavedPosts: () => _buildProfileHeader(),
                        successUserPosts: () => _buildProfileHeader(),
                        successSavedPosts: () => _buildProfileHeader(),
                        orElse: () => const ShimmerProfilePlaceholder(),
                      );
                    },
                  ),
                  if (widget.userId != usr.user.uuid) ...[
                    vSpace(2),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16.0),
                      child: BlocBuilder<NewsfeedBloc, NewsfeedState>(
                        builder: (context, state) {
                          final isLoading = state.maybeWhen(
                            loadingFollow: () => true,
                            loadingUnfollow: () => true,
                            orElse: () => false,
                          );
                          
                          return ElevatedButton(
                            onPressed: isLoading ? null : _toggleFollow,
                            style: ElevatedButton.styleFrom(
                              backgroundColor: _isFollowing ? Colors.grey : primary,
                              minimumSize: const Size(double.infinity, 40),
                            ),
                            child: isLoading
                                ? const SizedBox(
                                    height: 20,
                                    width: 20,
                                    child: CircularProgressIndicator(
                                      strokeWidth: 2,
                                      color: Colors.white,
                                    ),
                                  )
                                : Text(
                                    _isFollowing ? tr.unfollow : tr.follow,
                                    style: const TextStyle(color: Colors.white),
                                  ),
                          );
                        },
                      ),
                    ),
                    vSpace(2),
                  ],
                  TabBar(
                    controller: _tabController,
                    unselectedLabelColor: lightCoral,
                    labelColor: primary,
                    indicatorColor: primary,
                    tabs: [
                      Tab(text: tr.feed),
                      Tab(text: tr.saved),
                    ],
                  ),
                  vSpace(5),
                ],
              ),
            ),
            SliverFillRemaining(
              child: TabBarView(
                controller: _tabController,
                children: [
                  FeedWidget(
                    userId: widget.userId,
                    isFeedPosts: true,
                    onRefresh: () => _bloc.add(NewsfeedEvent.getUserPosts(widget.userId)),
                  ),
                  FeedWidget(
                    userId: widget.userId,
                    isFeedPosts: false,
                    onRefresh: () => _bloc.add(NewsfeedEvent.getSavedPosts(widget.userId)),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
  
  Widget _buildProfileHeader() {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            _buildStatColumn(
              _bloc.profile.number_of_followers.toString(),
              tr.followers,
            ),
            CircleAvatar(
              radius: 60,
              backgroundColor: Colors.grey[200],
              child: ClipOval(
                child: CachedImage(
                  imageUrl: _bloc.profile.profile_picture_url,
                  width: 120,
                  height: 120,
                ),
              ),
            ),
            _buildStatColumn(
              _bloc.profile.number_of_following.toString(),
              tr.following,
            ),
          ],
        ),
        vSpace(2),
        Text(
          _bloc.profile.full_name,
          style: tstyle.headlineSmall!.copyWith(
            fontWeight: FontWeight.bold,
          ),
        ),
        vSpace(1),
        Text(
          '@${_bloc.profile.user_name}',
          style: tstyle.bodyMedium?.copyWith(
            color: Colors.grey,
          ),
        ),
        vSpace(2),
      ],
    );
  }
  
  Widget _buildStatColumn(String value, String label) {
    return Column(
      children: [
        Text(
          value,
          style: tstyle.headlineSmall,
        ),
        Text(
          label,
          style: tstyle.bodyMedium?.copyWith(
            color: Colors.grey,
          ),
        ),
      ],
    );
  }
}