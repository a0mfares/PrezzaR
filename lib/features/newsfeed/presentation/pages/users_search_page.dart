import 'package:auto_route/auto_route.dart';
import 'package:bot_toast/bot_toast.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:prezza/core/extension/widget_ext.dart';
import 'package:prezza/core/helper/tools.dart';
import 'package:flutter/material.dart';
import 'package:prezza/core/service/routes.gr.dart';
import 'package:prezza/features/newsfeed/presentation/bloc/newsfeed_bloc.dart';
import 'package:prezza/prezza_page.dart';
import '../widgets/loading_users_widget.dart';
import 'package:prezza/features/newsfeed/domain/entities/user_search_entity.dart';
import 'package:prezza/features/newsfeed/domain/entities/follower_entity.dart';

@RoutePage()
class UsersSearchPage extends StatefulWidget {
  const UsersSearchPage({super.key});

  @override
  State<UsersSearchPage> createState() => _UsersSearchPageState();
}

class _UsersSearchPageState extends State<UsersSearchPage> {
  late final NewsfeedBloc bloc;
  List<UserSearchEntity> users = [];
  List<FollowerEntity> followers = [];
  List<FollowerEntity> following = [];
  String? currentUserUuid;

  @override
  void initState() {
    super.initState();
    bloc = NewsfeedBloc.get(context);
    // Get current user UUID (you'll need to implement this based on your app's auth system)
    _loadData();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    // Reload data when returning from other pages
    _loadData();
  }

  void _loadData() {
    bloc.add(const NewsfeedEvent.getUsers());
    // Get current user's followers and following
    if (currentUserUuid != null) {
      bloc.add(NewsfeedEvent.getUserFollowers(currentUserUuid!));
      bloc.add(NewsfeedEvent.getUserFollowing(currentUserUuid!));
    }
  }

  FollowStatus _getFollowStatus(String userUuid) {
    final isIFollowedHim = following.any(
        (f) => f.followerInfo.uuid == userUuid && f.isIFollowedHim == true);
    final isHeFollowedMe = followers.any(
        (f) => f.followerInfo.uuid == userUuid && f.isHeFollowedMe == true);

    if (isIFollowedHim && isHeFollowedMe) {
      return FollowStatus.mutual;
    } else if (isIFollowedHim) {
      return FollowStatus.following;
    } else if (isHeFollowedMe) {
      return FollowStatus.followBack;
    } else {
      return FollowStatus.notFollowing;
    }
  }

  Widget _buildFollowButton(UserSearchEntity user, FollowStatus status) {
    return BlocBuilder<NewsfeedBloc, NewsfeedState>(
      builder: (context, state) {
        final isLoading = state.maybeWhen(
          loadingFollow: () => true,
          orElse: () => false,
        );

        Color backgroundColor = Colors.grey[300]!;
        Color textColor = Colors.black87;
        String buttonText = tr.following;

        switch (status) {
          case FollowStatus.following:
            backgroundColor = Colors.grey[300]!;
            textColor = Colors.black87;
            buttonText = tr.following;
            break;
          case FollowStatus.followBack:
            backgroundColor = Theme.of(context).primaryColor.withAlpha(8);
            textColor = Colors.white;
            buttonText = "Follow Back";
            break;
          case FollowStatus.mutual:
            backgroundColor = Colors.green[300]!;
            textColor = Colors.white;
            buttonText = "Friends";
            break;
          case FollowStatus.notFollowing:
        }

        return SizedBox(
          width: 100,
          height: 36,
          child: ElevatedButton(
            onPressed: isLoading
                ? null
                : () {
                    if (status == FollowStatus.following ||
                        status == FollowStatus.mutual) {
                      bloc.add(NewsfeedEvent.unFollow(user.uuid));
                    } else {
                      bloc.add(NewsfeedEvent.follow(user.uuid));
                    }
                  },
            style: ElevatedButton.styleFrom(
              backgroundColor: backgroundColor,
              foregroundColor: textColor,
              elevation: status == FollowStatus.followBack ? 2 : 1,
            ),
            child: isLoading
                ? const SizedBox(
                    width: 16,
                    height: 16,
                    child: CircularProgressIndicator(
                      strokeWidth: 2,
                    ),
                  )
                : Text(
                    buttonText,
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: status == FollowStatus.followBack
                          ? FontWeight.w600
                          : FontWeight.normal,
                    ),
                  ),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(tr.users),
      ).prezzaLeading(),
      body: BlocConsumer<NewsfeedBloc, NewsfeedState>(
        listener: (context, state) {
          state.maybeWhen(
            followSuccess: () {
              BotToast.showText(text: "Followed successfully");

              // Refresh all data to update follow status
              _loadData();
            },
            unfollowSuccess: () {
              BotToast.showText(text: "Unfollowed successfully");
              // Refresh all data to update follow status
              _loadData();
            },
            followersLoaded: (loadedFollowers) {
              setState(() {
                followers = loadedFollowers;
              });
            },
            followingLoaded: (loadedFollowing) {
              setState(() {
                following = loadedFollowing;
              });
            },
            usersLoaded: (loadedUsers) {
              setState(() {
                users = loadedUsers;
              });
            },
            failure: (error) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text("Error: $error"),
                  backgroundColor: Colors.red,
                ),
              );
            },
            orElse: () {},
          );
        },
        builder: (context, state) {
          return state.maybeWhen(
            loadingUsers: () => const LoadingUsersWidget(),
            loadingFollowers: () =>
                const Center(child: CircularProgressIndicator()),
            loadingFollowing: () =>
                const Center(child: CircularProgressIndicator()),
            usersLoaded: (loadedUsers) {
              if (loadedUsers.isEmpty) {
                return Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.people_outline,
                        size: 64,
                        color: Colors.grey[400],
                      ),
                      const SizedBox(height: 16),
                      Text(
                        "No Users Found",
                        style: Theme.of(context).textTheme.titleLarge?.copyWith(
                              color: Colors.grey[600],
                            ),
                      ),
                    ],
                  ),
                );
              }

              return RefreshIndicator(
                onRefresh: () async {
                  _loadData();
                },
                child: ListView.builder(
                  padding: const EdgeInsets.all(8.0),
                  itemCount: users.length,
                  itemBuilder: (context, index) {
                    final user = users[index];
                    final followStatus = _getFollowStatus(user.uuid);

                    return Card(
                      margin: const EdgeInsets.symmetric(vertical: 4.0),
                      child: ListTile(
                        leading: CircleAvatar(
                          backgroundColor: _getAvatarColor(followStatus),
                          child: Text(
                            user.username.isNotEmpty
                                ? user.username[0].toUpperCase()
                                : '?',
                            style: const TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        title: Row(
                          children: [
                            Expanded(
                              child: Text(
                                user.username,
                                style: const TextStyle(
                                    fontWeight: FontWeight.w500),
                              ),
                            ),
                            if (followStatus == FollowStatus.followBack)
                              Container(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 6, vertical: 2),
                                decoration: BoxDecoration(
                                  color: Theme.of(context)
                                      .primaryColor
                                      .withOpacity(0.1),
                                  borderRadius: BorderRadius.circular(8),
                                  border: Border.all(
                                    color: Theme.of(context)
                                        .primaryColor
                                        .withOpacity(0.3),
                                  ),
                                ),
                                child: Text(
                                  "Follows you",
                                  style: TextStyle(
                                    fontSize: 10,
                                    color: Theme.of(context).primaryColor,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                            if (followStatus == FollowStatus.mutual)
                              Container(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 6, vertical: 2),
                                decoration: BoxDecoration(
                                  color: Colors.green.withOpacity(0.1),
                                  borderRadius: BorderRadius.circular(8),
                                  border: Border.all(
                                    color: Colors.green.withOpacity(0.3),
                                  ),
                                ),
                                child: const Text(
                                  "Mutual",
                                  style: TextStyle(
                                    fontSize: 10,
                                    color: Colors.green,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                          ],
                        ),
                        subtitle: Text(user.username),
                        onTap: () {
                          appRoute.navigate(
                            ProfileSocialRoute(userId: user.uuid),
                          );
                        },
                        trailing: _buildFollowButton(user, followStatus),
                      ),
                    );
                  },
                ),
              );
            },
            failure: (error) => Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.error_outline,
                    size: 64,
                    color: Colors.red[300],
                  ),
                  const SizedBox(height: 16),
                  Text(
                    "Error loading users",
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                  const SizedBox(height: 8),
                  Text(
                    error,
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                          color: Colors.grey[600],
                        ),
                  ),
                  const SizedBox(height: 16),
                  ElevatedButton(
                    onPressed: () {
                      _loadData();
                    },
                    child: Text(tr.retry),
                  ),
                ],
              ),
            ),
            orElse: () => const Center(
              child: CircularProgressIndicator(),
            ),
          );
        },
      ),
    );
  }

  Color _getAvatarColor(FollowStatus status) {
    switch (status) {
      case FollowStatus.mutual:
        return Colors.green;
      case FollowStatus.followBack:
        return Theme.of(context).primaryColor.withOpacity(0.8);
      case FollowStatus.following:
        return Colors.grey;
      case FollowStatus.notFollowing:
      default:
        return Theme.of(context).primaryColor;
    }
  }
}

enum FollowStatus {
  notFollowing,
  following,
  followBack,
  mutual,
}
