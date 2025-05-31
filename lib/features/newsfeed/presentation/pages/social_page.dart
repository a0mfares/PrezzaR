import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:prezza/core/service/routes.gr.dart';
import 'package:prezza/features/newsfeed/presentation/widgets/post_widget.dart';
import 'package:prezza/prezza_page.dart';
import 'package:sizer/sizer.dart';

import '../../../../config/custom_colors.dart';
import '../../../../core/constants/assets.dart';
import '../../../../core/helper/tools.dart';
import '../bloc/newsfeed_bloc.dart';
import '../widgets/add_story_widget.dart';
import '../widgets/post_loading_widget.dart';
import '../widgets/story_widget.dart';

@RoutePage()
class SocialPage extends StatefulWidget {
  const SocialPage({super.key});

  @override
  State<SocialPage> createState() => _SocialPageState();
}

class _SocialPageState extends State<SocialPage> {
  late final NewsfeedBloc bloc;

  @override
  void initState() {
    bloc = NewsfeedBloc.get(context);
    bloc.add(const NewsfeedEvent.fetchPosts());
    super.initState();
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
          icon: const CircleAvatar(
            // radius: 70,
            child: Icon(
              Icons.person,
            ),
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
      body: SingleChildScrollView(
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
            SizedBox(
              width: 100.w,
              height: 200,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 5,
                itemBuilder: (context, index) {
                  if (index == 0) {
                    return const AddStoryWidget();
                  }
                  return const StoryWidget();
                },
              ),
            ),
            vSpace(3),
            const Divider(),
            SizedBox(
              height: 70.h,
              child: BlocBuilder<NewsfeedBloc, NewsfeedState>(
                builder: (context, state) {
                  return state.maybeWhen(
                    loading: () {
                      return const LoadingPostWidget();
                    },
                    orElse: () {
                      return ListView.builder(
                        itemCount: bloc.posts.length,
                        itemBuilder: (context, index) {
                          final post = bloc.posts[index];
                          return PostWidget(post: post);
                        },
                      );
                    },
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
