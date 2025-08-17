import 'package:bot_toast/bot_toast.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:prezza/core/constants/assets.dart';
import 'package:prezza/core/extension/widget_ext.dart';
import 'package:prezza/core/helper/tools.dart';
import 'package:prezza/core/shared/widgets/cached_image.dart';
import 'package:prezza/features/newsfeed/presentation/widgets/comment_widget.dart';
import 'package:sizer/sizer.dart';

import '../../../../config/custom_colors.dart';
import '../../domain/entities/post_entity.dart';
import '../bloc/newsfeed_bloc.dart';

class PostWidget extends StatefulWidget {
  const PostWidget({super.key, required this.post});
  final PostEntity post;

  @override
  State<PostWidget> createState() => _PostWidgetState();
}

class _PostWidgetState extends State<PostWidget> with TickerProviderStateMixin {
  late final NewsfeedBloc bloc;

  @override
  void initState() {
    super.initState();
    bloc = NewsfeedBloc.get(context);
    bloc.add(NewsfeedEvent.getLikes(widget.post.uuid));
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<NewsfeedBloc, NewsfeedState>(
      listener: (context, state) {
        state.maybeWhen(
          postSaved: () {
            BotToast.showText(text: tr.postSaved);
          },
          failure: (error) {
            BotToast.showText(text: error);
          },
          orElse: () {},
        );
      },
      child: Column(
        children: [
          // upload progress bar
          BlocBuilder<NewsfeedBloc, NewsfeedState>(
            builder: (context, state) {
              return state.maybeWhen(
                progress: (progress) =>
                    LinearProgressIndicator(value: progress / 100),
                orElse: () => const SizedBox(),
              );
            },
          ),

          // Post header
          ListTile(
            leading: CircleAvatar(
              child: CachedImage(
                imageUrl: widget.post.auther_info.profile_picture_url
                        .contains('https%3A')
                    ? widget.post.auther_info.profile_picture_url.replaceAll(
                        '/https%3A/prezza-media-state-bucket.s3.us-east-1.amazonaws.com',
                        '',
                      )
                    : widget.post.auther_info.profile_picture_url,
              ),
            ),
            title: Text(widget.post.auther_info.user_name),
            trailing: IconButton(
              icon: const Icon(Icons.more_vert),
              onPressed: () {},
            ),
          ),

          // Post text
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Align(
              alignment: AlignmentDirectional.centerStart,
              child: Text(widget.post.contant),
            ),
          ),

          vSpace(2),

          // Post image
          InkWell(
            onDoubleTap: () {
              bloc.add(NewsfeedEvent.likePost(widget.post.uuid));
            },
            child: CachedImage(
              key: Key(widget.post.uuid),
              imageUrl: widget.post.post_images.first.image,
              fit: BoxFit.cover,
              width: 100.w,
              height: 40.h,
            ),
          ),

          // Likes & comments row
          BlocBuilder<NewsfeedBloc, NewsfeedState>(
            builder: (context, state) {
              final likes = state.maybeWhen(
                likesLoaded: (postId, likes) => likes.length,
                orElse: () => widget.post.number_of_likes,
              );

              final comments = state.maybeWhen(
                commentsLoaded: (postId, comments) => comments.length,
                orElse: () => widget.post.number_of_comments,
              );

              return Row(
                children: [
                  IconButton(
                    icon: Icon(Icons.favorite, color: primary),
                    onPressed: () {
                      bloc.add(NewsfeedEvent.likePost(widget.post.uuid));
                    },
                  ),
                  Text(likes.toString()),
                  IconButton(
                    icon: SvgPicture.asset(Assets.assetsImagesComment),
                    onPressed: () {
                      showModalBottomSheet(
                        context: context,
                        useSafeArea: true,
                        isScrollControlled: true,
                        builder: (context) {
                          return CommentWidget(
                            uuid: widget.post.uuid,
                            onLoadData: () {
                              bloc.add(
                                  NewsfeedEvent.getComments(widget.post.uuid));
                            },
                          );
                        },
                      );
                    },
                  ),
                  Text(comments.toString()),
                ],
              ).margin(margin: const EdgeInsets.symmetric(horizontal: 10));
            },
          ),

          // Actions row
          Row(
            children: [
              InkWell(
                onTap: () {},
                child: CircleAvatar(
                  radius: 30,
                  backgroundColor: lightCream,
                  child: SvgPicture.asset(Assets.assetsImagesFavorites),
                ),
              ),
              hSpace(3),
              InkWell(
                onTap: () {
                  showModalBottomSheet(
                    context: context,
                    useSafeArea: true,
                    isScrollControlled: true,
                    builder: (context) {
                      return CommentWidget(
                        uuid: widget.post.uuid,
                        onLoadData: () {
                          bloc.add(NewsfeedEvent.getComments(widget.post.uuid));
                        },
                      );
                    },
                  );
                },
                child: CircleAvatar(
                  radius: 30,
                  backgroundColor: lightCream,
                  child: SvgPicture.asset(Assets.assetsImagesCommentOutlin),
                ),
              ),
              const Spacer(),
              InkWell(
                onTap: () {
                  bloc.add(NewsfeedEvent.savePost(widget.post.uuid));
                },
                child: CircleAvatar(
                  radius: 30,
                  backgroundColor: primary,
                  child: SvgPicture.asset(Assets.assetsImagesSaveAdd),
                ),
              ),
            ],
          ).margin(margin: const EdgeInsets.symmetric(horizontal: 15)),

          vSpace(8),
        ],
      ),
    );
  }
}
