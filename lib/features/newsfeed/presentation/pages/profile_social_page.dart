import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:prezza/config/custom_colors.dart';
import 'package:prezza/core/extension/widget_ext.dart';
import 'package:prezza/core/helper/tools.dart';
import 'package:prezza/features/newsfeed/presentation/bloc/newsfeed_bloc.dart';
import 'package:prezza/features/newsfeed/presentation/widgets/feed_widget.dart';
import 'package:prezza/features/newsfeed/domain/entities/profile_social_entity.dart';

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
    with TickerProviderStateMixin {
  late final TabController _controller;
  late final NewsfeedBloc bloc;
  ProfileSocialEntity? currentProfile;
  bool isFollowing = false;

  @override
  void initState() {
    _controller = TabController(length: 2, vsync: this);
    bloc = NewsfeedBloc.get(context);
    bloc.add(NewsfeedEvent.getUserInfo(widget.userId));
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  Widget _buildProfileInfo(ProfileSocialEntity profile) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              children: [
                Text(
                  profile.number_of_followers.toString(),
                  style: tstyle.headlineSmall?.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'Followers',
                  style: tstyle.bodyMedium?.copyWith(
                    color: Colors.grey.shade600,
                  ),
                ),
              ],
            ),
            GestureDetector(
              onTap: () {
                // You can add profile picture tap functionality here
              },
              child: CircleAvatar(
                radius: 60,
                backgroundColor: Colors.grey.shade200,
                child: ClipOval(
                  child: CachedImage(
                    imageUrl: profile.profile_picture_url,
                    width: 120,
                    height: 120,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Column(
              children: [
                Text(
                  profile.number_of_following.toString(),
                  style: tstyle.headlineSmall?.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'Following',
                  style: tstyle.bodyMedium?.copyWith(
                    color: Colors.grey.shade600,
                  ),
                ),
              ],
            ),
          ],
        ),
        vSpace(2),
        Text(
          profile.full_name,
          style: tstyle.headlineSmall?.copyWith(
            fontWeight: FontWeight.bold,
          ),
          textAlign: TextAlign.center,
        ),
        vSpace(1),
        Text(
          '@${profile.user_name}',
          style: tstyle.bodyMedium?.copyWith(
            color: Colors.grey.shade600,
          ),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }

  Widget _buildFollowButton() {
    return BlocListener<NewsfeedBloc, NewsfeedState>(
      listener: (context, state) {
        state.maybeWhen(
          followSuccess: () {
            setState(() {
              isFollowing = true;
              if (currentProfile != null) {
                currentProfile = currentProfile!.copyWith(
                  number_of_followers: currentProfile!.number_of_followers + 1,
                );
              }
            });
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(content: Text('Successfully followed user')),
            );
          },
          unfollowSuccess: () {
            setState(() {
              isFollowing = false;
              if (currentProfile != null) {
                // Update follower count locally for immediate UI feedback
                currentProfile = currentProfile!.copyWith(
                  number_of_followers: currentProfile!.number_of_followers - 1,
                );
              }
            });
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(content: Text('Successfully unfollowed user')),
            );
          },
          failure: (error) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text('Error: $error'),
                backgroundColor: Colors.red,
              ),
            );
          },
          orElse: () {},
        );
      },
      child: BlocBuilder<NewsfeedBloc, NewsfeedState>(
        builder: (context, state) {
          final isLoading = state.maybeWhen(
            loadingFollow: () => true,
            orElse: () => false,
          );

          return SizedBox(
            width: 200,
            child: ElevatedButton(
              onPressed: isLoading
                  ? null
                  : () {
                      if (isFollowing) {
                        bloc.add(NewsfeedEvent.unFollow(widget.userId));
                      } else {
                        bloc.add(NewsfeedEvent.follow(widget.userId));
                      }
                    },
              style: ElevatedButton.styleFrom(
                backgroundColor: isFollowing ? Colors.grey.shade300 : primary,
                foregroundColor: isFollowing ? Colors.black : Colors.white,
                padding: const EdgeInsets.symmetric(vertical: 12),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              child: isLoading
                  ? const SizedBox(
                      height: 20,
                      width: 20,
                      child: CircularProgressIndicator(
                        strokeWidth: 2,
                        valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
                      ),
                    )
                  : Text(
                      isFollowing ? tr.unfollow : tr.follow,
                      style: const TextStyle(
                        fontWeight: FontWeight.w600,
                      ),
                    ),
            ),
          );
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(tr.profile),
        actions: [
          if (widget.userId == usr.user.uuid)
            IconButton(
              onPressed: () {
                // Navigate to edit profile or settings
              },
              icon: const Icon(Icons.settings),
            ),
        ],
      ).prezzaLeading(),
      body: SafeArea(
        child: Column(
          children: [
            vSpace(3),
            BlocBuilder<NewsfeedBloc, NewsfeedState>(
              builder: (context, state) {
                return state.maybeWhen(
                  loadingProfile: () {
                    return const ShimmerProfilePlaceholder();
                  },
                  profileLoaded: (profile) {
                    currentProfile = profile;
                    isFollowing = profile.is_following ?? false;
                    return _buildProfileInfo(profile);
                  },
                  failure: (error) {
                    return Center(
                      child: Column(
                        children: [
                          Icon(
                            Icons.error_outline,
                            size: 64,
                            color: Colors.red.shade400,
                          ),
                          vSpace(2),
                          Text(
                            'Failed to load profile',
                            style: tstyle.headlineSmall?.copyWith(
                              color: Colors.red.shade600,
                            ),
                          ),
                          vSpace(1),
                          Text(
                            error,
                            style: tstyle.bodyMedium?.copyWith(
                              color: Colors.grey.shade600,
                            ),
                            textAlign: TextAlign.center,
                          ),
                          vSpace(2),
                          ElevatedButton(
                            onPressed: () {
                              bloc.add(
                                  NewsfeedEvent.getUserInfo(widget.userId));
                            },
                            child: const Text('Retry'),
                          ),
                        ],
                      ),
                    );
                  },
                  orElse: () {
                    if (currentProfile != null) {
                      return _buildProfileInfo(currentProfile!);
                    }
                    return const ShimmerProfilePlaceholder();
                  },
                );
              },
            ),
            if (widget.userId != usr.user.uuid) ...[
              vSpace(3),
              _buildFollowButton(),
              vSpace(2),
            ],
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 16),
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    color: Colors.grey.shade300,
                    width: 1,
                  ),
                ),
              ),
              child: TabBar(
                controller: _controller,
                unselectedLabelColor: lightCoral,
                labelColor: primary,
                indicatorColor: primary,
                indicatorWeight: 3,
                labelStyle: const TextStyle(
                  fontWeight: FontWeight.w600,
                ),
                unselectedLabelStyle: const TextStyle(
                  fontWeight: FontWeight.normal,
                ),
                tabs: [
                  Tab(text: tr.feed),
                  Tab(text: tr.saved),
                ],
              ),
            ),
            vSpace(2),
            Expanded(
              child: TabBarView(
                controller: _controller,
                children: [
                  FeedWidget(userId: widget.userId, isFeedPosts: true),
                  FeedWidget(userId: widget.userId, isFeedPosts: false),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
