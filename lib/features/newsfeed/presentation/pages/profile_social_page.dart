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
    with TickerProviderStateMixin {
  late final TabController _controller;
  late final NewsfeedBloc bloc;

  @override
  void initState() {
    _controller = TabController(length: 2, vsync: this);
    bloc = NewsfeedBloc.get(context);
    bloc.add(NewsfeedEvent.getUserInfo(widget.userId));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(tr.profile),
      ).prezzaLeading(),
      body: SafeArea(
        child: Column(
          children: [
            vSpace(3),
            BlocBuilder<NewsfeedBloc, NewsfeedState>(
              builder: (context, state) {
                return state.maybeWhen(
                  loadigProfile: () {
                    return const ShimmerProfilePlaceholder();
                  },
                  orElse: () {
                    return Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Column(
                              children: [
                                Text(
                                  bloc.profile.number_of_followers.toString(),
                                  style: tstyle.headlineSmall,
                                ),
                                Text(
                                  'Folllowers',
                                  style: tstyle.headlineSmall,
                                ),
                              ],
                            ),
                            CircleAvatar(
                              radius: 60,
                              child: CachedImage(
                                imageUrl: bloc.profile.profile_picture_url,
                                radius: BorderRadius.circular(360),
                              ),
                            ),
                            Column(
                              children: [
                                Text(
                                  bloc.profile.number_of_following.toString(),
                                  style: tstyle.headlineSmall,
                                ),
                                Text(
                                  'Following',
                                  style: tstyle.headlineSmall,
                                ),
                              ],
                            ),
                          ],
                        ),
                        Text(
                          bloc.profile.full_name,
                          style: tstyle.headlineSmall!
                              .copyWith(fontWeight: FontWeight.bold),
                        ),
                        vSpace(2),
                        Text(
                          bloc.profile.user_name,
                          style: tstyle.headlineSmall!.copyWith(
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    );
                  },
                  // orElse: () => const SizedBox(),
                );
              },
            ),
            if (widget.userId != usr.user.uuid) ...[
              vSpace(2),
              ElevatedButton(
                onPressed: () {},
                child: Text(tr.follow),
              ),
              vSpace(2),
            ],
            TabBar(
              controller: _controller,
              unselectedLabelColor: lightCoral,
              labelColor: primary,
              tabs: [
                Tab(
                  text: tr.feed,
                ),
                Tab(
                  text: tr.saved,
                ),
              ],
            ),
            vSpace(5),
            Expanded(
              child: TabBarView(
                controller: _controller,
                children: [
                  FeedWidget(userId: widget.userId, isFeedPosts: true),
                  FeedWidget(userId: widget.userId, isFeedPosts: false),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
