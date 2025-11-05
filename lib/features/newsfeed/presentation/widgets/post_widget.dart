// post_widget.dart
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

class PostWidget extends StatelessWidget {
  const PostWidget({super.key, required this.post});
  final PostEntity post;

  @override
  Widget build(BuildContext context) {
    final bloc = NewsfeedBloc.get(context);
    
    return BlocListener<NewsfeedBloc, NewsfeedState>(
      listener: (context, state) {
        state.maybeMap(
          successPostSaved: (_) {
            BotToast.showText(text: tr.postSaved);
          },
          failurePostSaved: (err) {
            BotToast.showText(text: err.err);
          },
          successLikePost: (_) {
            BotToast.showText(text: tr.myLikeAdd);
          },
          failureLikePost: (err) {
            BotToast.showText(text: err.err);
          },
          successUnlikePost: (_) {
            BotToast.showText(text: tr.likes);
          },
          failureUnlikePost: (err) {
            BotToast.showText(text: err.err);
          },
          orElse: () {},
        );
      },
      child: Column(
        children: [
          BlocBuilder<NewsfeedBloc, NewsfeedState>(
            builder: (context, state) {
              return state.maybeWhen(
                creatingPost: (progress) {
                  return LinearProgressIndicator(value: progress / 100);
                },
                orElse: () => const SizedBox(),
              );
            },
          ),
          ListTile(
            leading: CircleAvatar(
              child: CachedImage(
                  imageUrl: post.auther_info.profile_picture_url
                          .contains('https%3A')
                      ? post.auther_info.profile_picture_url.replaceAll(
                          '/https%3A/prezza-media-state-bucket.s3.us-east-1.amazonaws.com',
                          '',
                        )
                      : post.auther_info.profile_picture_url),
            ),
            title: Text(post.auther_info.user_name),
            subtitle: const Text(''),
          
          ),
          vSpace(2),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Align(
                alignment: AlignmentDirectional.centerStart,
                child: Text(post.contant)),
          ),
          vSpace(2),
          InkWell(
            onDoubleTap: () {
              if (!post.is_liked) {
                bloc.add(NewsfeedEvent.likePost(post.uuid));
              }
            },
            child: Stack(
              alignment: Alignment.center,
              children: [
                CachedImage(
                  key: Key(post.uuid),
                  imageUrl: post.post_images.first.image,
                  fit: BoxFit.cover,
                  width: 100.w,
                  height: 40.h,
                ),
              ],
            ),
          ),

          Row(
            children: [
              IconButton(
                icon: Icon(
                  post.is_liked ? Icons.favorite : Icons.favorite_border,
                  color: post.is_liked ? Colors.red : primary,
                ),
                onPressed: () {
                 
                },
              ),
              Text(post.number_of_likes.toString()),
              IconButton(
                icon: SvgPicture.asset(Assets.assetsImagesComment),
                onPressed: () {},
              ),
              Text(post.number_of_comments.toString()),
            ],
          ).margin(
            margin: const EdgeInsets.symmetric(horizontal: 10),
          ),
          // vSpace(1),
          Row(
            children: [
              InkWell(
                onTap: () {
                   if (post.is_liked) {
                    bloc.add(NewsfeedEvent.unLikePost(post.uuid));
                  } else {
                    bloc.add(NewsfeedEvent.likePost(post.uuid));
                  }
                },
                child: CircleAvatar(
                  radius: 30,
                  backgroundColor:  lightCream,
                  child: Icon(
                    post.is_liked ? Icons.favorite : Icons.favorite_border,
                    color: post.is_liked ? Colors.red : primary,
                  ),
                ),
              ),
              hSpace(3),
              InkWell(
                onTap: () {
                  showModalBottomSheet(
                    context: context,
                    useSafeArea: true,
                    enableDrag: false,
                    isScrollControlled: true,
                    builder: (context) {
                      return CommentWidget(
                        uuid: post.uuid,
                        onLoadData: () {
                          bloc.add(NewsfeedEvent.getComments(post.uuid));
                        },
                        onCommentsClosed: () {
                          bloc.add(NewsfeedEvent.getUserPosts(usr.user.uuid));
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
                  bloc.add(NewsfeedEvent.savePost(post.uuid));
                },
                child: CircleAvatar(
                  radius: 30,
                  backgroundColor: post.is_saved ? primary : lightCream,
                  child: SvgPicture.asset(
                    Assets.assetsImagesSaveAdd,
                    color: post.is_saved ? Colors.white : primary,
                  ),
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