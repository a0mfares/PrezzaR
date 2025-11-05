// user_post_widget.dart
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

class UserPostWidget extends StatelessWidget {
  const UserPostWidget({super.key, required this.post});
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
          successLikePost: (value) {
            BotToast.showText(text: tr.myLikeAdd);
          },
          /*postDeleted: (_) {
            BotToast.showText(text: tr.postDeleted);
            Navigator.of(context).pop(); 
          },*/
          failureLikePost: (err) {
            BotToast.showText(text: err.err);
          },
          failureAddComment: (err) {
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
            title: Row(
              children: [
                Text(post.auther_info.user_name),
                const SizedBox(width: 8),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
                  decoration: BoxDecoration(
                    color: primary.withOpacity(0.2),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Text(
                    'You',
                    style: TextStyle(
                      fontSize: 10.sp,
                      color: primary,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
            subtitle: Text(
              tr.yourPost,
              style: TextStyle(
                fontSize: 10.sp,
                color: Colors.grey[600],
              ),
            ),
            trailing: PopupMenuButton<String>(
              icon: const Icon(Icons.more_vert),
              onSelected: (value) {
                switch (value) {
                  case 'edit':
                    // Navigate to edit post screen
                    Navigator.of(context).pushNamed(
                      '/edit_post',
                      arguments: post,
                    );
                    break;
                  case 'delete':
                    _showDeleteConfirmation(context, bloc, post.uuid);
                    break;
                }
              },
              itemBuilder: (BuildContext context) => [
                 PopupMenuItem<String>(
                  value: 'edit',
                  child: Row(
                    children: [
                      const Icon(Icons.edit),
                      const SizedBox(width: 8),
                      Text(tr.editPost),
                    ],
                  ),
                ),
                 PopupMenuItem<String>(
                  value: 'delete',
                  child: Row(
                    children: [
                      const Icon(Icons.delete, color: Colors.red),
                      const SizedBox(width: 8),
                      Text(tr.deletePost, style: const TextStyle(color: Colors.red)),
                    ],
                  ),
                ),
              ],
            ),
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
                  if (post.is_liked) {
                    bloc.add(NewsfeedEvent.unLikePost(post.uuid));
                  } else {
                    bloc.add(NewsfeedEvent.likePost(post.uuid));
                  }
                },
              ),
              Text(post.number_of_likes.toString()),
              IconButton(
                icon: SvgPicture.asset(Assets.assetsImagesComment),
                onPressed: () {
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
                      );
                    },
                  );
                },
              ),
              Text(post.number_of_comments.toString()),
            ],
          ).margin(
            margin: const EdgeInsets.symmetric(horizontal: 10),
          ),
          
        
        ],
      ),
    );
  }

  Widget _buildStatItem(String label, String value) {
    return Column(
      children: [
        Text(
          value,
          style: TextStyle(
            fontSize: 16.sp,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          label,
          style: TextStyle(
            fontSize: 12.sp,
            color: Colors.grey[600],
          ),
        ),
      ],
    );
  }

  void _showDeleteConfirmation(BuildContext context, NewsfeedBloc bloc, String postUuid) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title:  Text(tr.deletePost),
          content:  Text(tr.confirmDeletePost),
          actions: [
            TextButton(
              child:  Text(tr.cancel),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            TextButton(
              child:  Text(tr.delete, style: const TextStyle(color: Colors.red)),
              onPressed: () {
                Navigator.of(context).pop();
                //bloc.add(NewsfeedEvent.deletePost(postUuid));
              },
            ),
          ],
        );
      },
    );
  }

  void _sharePost(BuildContext context, PostEntity post) {
    
    BotToast.showText(text: tr.shareFunctionality);
  }
}