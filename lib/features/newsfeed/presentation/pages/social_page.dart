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

class _SocialPageState extends State<SocialPage> {
  late NewsfeedBloc bloc;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    bloc = NewsfeedBloc.get(context);
    bloc.add(const NewsfeedEvent.fetchPosts());
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
            child: Icon(Icons.person),
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
      body: Column(
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
                style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                      color: primary,
                      fontWeight: FontWeight.bold,
                    ),
              ),
              trailing: SvgPicture.asset(Assets.assetsImagesGallery),
            ),
          ),
          vSpace(3),
          Expanded(
            child: BlocBuilder<NewsfeedBloc, NewsfeedState>(
              builder: (context, state) {
                return state.maybeWhen(
                  loadingPosts: () => const LoadingPostWidget(),
                  failure: (error) => Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Error: $error'),
                        ElevatedButton(
                          onPressed: () {
                            bloc.add(const NewsfeedEvent.fetchPosts());
                          },
                          child: Text(tr.retry),
                        ),
                      ],
                    ),
                  ),
                  orElse: () {
                    if (bloc.posts.isEmpty) {
                      return Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SvgPicture.asset(
                              Assets.assetsImagesNoData,
                              width: 200,
                            ),
                            vSpace(3),
                            Text(tr.noPosts),
                          ],
                        ),
                      );
                    }
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
    );
  }
}
