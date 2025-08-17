import 'package:bot_toast/bot_toast.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:prezza/core/constants/assets.dart';
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

  // Local state for immediate UI feedback
  late bool isLiked;
  late bool isSaved;
  late int likesCount;
  late int commentsCount;
  bool isLikeLoading = false;
  bool isSaveLoading = false;

  @override
  void initState() {
    super.initState();
    bloc = NewsfeedBloc.get(context);

    // Initialize local state from post data
    isLiked = false;
    isSaved = false;
    likesCount = widget.post.number_of_likes;
    commentsCount = widget.post.number_of_comments;

    // Load likes data
    bloc.add(NewsfeedEvent.getLikes(widget.post.uuid));
  }

  void _handleLikePress() {
    if (isLikeLoading) return;

    setState(() {
      isLikeLoading = true;
      // Optimistic update
      if (isLiked) {
        isLiked = false;
        likesCount = (likesCount - 1).clamp(0, double.infinity).toInt();
        bloc.add(NewsfeedEvent.unLikePost(widget.post.uuid));
      } else {
        isLiked = true;
        likesCount = likesCount + 1;
        bloc.add(NewsfeedEvent.likePost(widget.post.uuid));
      }
    });
  }

  void _handleSavePress() {
    if (isSaveLoading) return;

    setState(() {
      isSaveLoading = true;
      // Optimistic update
      isSaved = !isSaved;
      bloc.add(NewsfeedEvent.savePost(widget.post.uuid));
    });
  }

  void _showComments() {
    showModalBottomSheet(
      context: context,
      useSafeArea: true,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      builder: (context) {
        return Container(
          height: MediaQuery.of(context).size.height * 0.8,
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.vertical(
              top: Radius.circular(20),
            ),
          ),
          child: CommentWidget(
            uuid: widget.post.uuid,
            onLoadData: () {
              bloc.add(NewsfeedEvent.getComments(widget.post.uuid));
            },
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<NewsfeedBloc, NewsfeedState>(
      listener: (context, state) {
        state.maybeWhen(
          postLiked: () {
            setState(() {
              isLikeLoading = false;
            });
          },
          postUnliked: () {
            setState(() {
              isLikeLoading = false;
            });
          },
          postSaved: () {
            setState(() {
              isSaveLoading = false;
            });
            BotToast.showText(text: tr.postSaved);
          },
          failure: (error) {
            setState(() {
              isLikeLoading = false;
              isSaveLoading = false;
              // Revert to original states
              // isLiked = widget.post.is_liked ?? false;
              // isSaved = widget.post.is_saved ?? false;
              likesCount = widget.post.number_of_likes;
            });
            BotToast.showText(text: error);
          },
          likesLoaded: (post, likes) {
            setState(() {
              likesCount = likes.length;
            });
          },
          commentsLoaded: (post, comments) {
            setState(() {
              commentsCount = comments.length;
            });
          },
          orElse: () {},
        );
      },
      child: Container(
        margin: const EdgeInsets.only(bottom: 16),
        decoration: BoxDecoration(
          border: Border(
            bottom: BorderSide(
              color: Colors.grey.shade200,
              width: 8,
            ),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Upload progress bar
            BlocBuilder<NewsfeedBloc, NewsfeedState>(
              builder: (context, state) {
                return state.maybeWhen(
                  progress: (progress) => LinearProgressIndicator(
                    value: progress / 100,
                    backgroundColor: Colors.grey.shade200,
                    valueColor: AlwaysStoppedAnimation<Color>(primary),
                  ),
                  orElse: () => const SizedBox.shrink(),
                );
              },
            ),

            // Post header
            ListTile(
                contentPadding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                leading: CircleAvatar(
                  radius: 20,
                  child: ClipOval(
                    child: CachedImage(
                      imageUrl: widget.post.auther_info.profile_picture_url
                              .contains('https%3A')
                          ? widget.post.auther_info.profile_picture_url
                              .replaceAll(
                              '/https%3A/prezza-media-state-bucket.s3.us-east-1.amazonaws.com',
                              '',
                            )
                          : widget.post.auther_info.profile_picture_url,
                      width: 40,
                      height: 40,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                title: Text(
                  widget.post.auther_info.user_name,
                  style: const TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 14,
                  ),
                ),
                subtitle: Text(
                  widget.post.created_at,
                  style: TextStyle(
                    color: Colors.grey.shade600,
                    fontSize: 12,
                  ),
                )),

            // Post text
            if (widget.post.contant.isNotEmpty)
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                child: Text(
                  widget.post.contant,
                  style: const TextStyle(fontSize: 14),
                ),
              ),

            // Post image
            if (widget.post.post_images.isNotEmpty)
              GestureDetector(
                onDoubleTap: _handleLikePress,
                child: Container(
                  width: double.infinity,
                  height: 40.h,
                  color: Colors.grey.shade100,
                  child: CachedImage(
                    key: Key(widget.post.uuid),
                    imageUrl: widget.post.post_images.first.image,
                    fit: BoxFit.cover,
                  ),
                ),
              ),

            // Likes & comments info row
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              child: Row(
                children: [
                  const Icon(
                    Icons.favorite_rounded,
                    color: Colors.red,
                  ),
                  SizedBox(
                    width: 2.w,
                  ),
                  Text("${widget.post.number_of_likes} ${tr.likes}"),
                  SizedBox(
                    width: 2.w,
                  ),
                  const Icon(
                    Icons.chat_bubble_rounded,
                    color: Colors.blueGrey,
                  ),
                  SizedBox(
                    width: 2.w,
                  ),
                  Text("${widget.post.number_of_comments} ${tr.comments}"),
                ],
              ),
            ),

            // Action buttons row
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
              child: Row(
                children: [
                  // Like button
                  // Like button
                  IconButton(
                    onPressed: _handleLikePress,
                    icon: isLikeLoading
                        ? SizedBox(
                            width: 20.w,
                            height: 20,
                            child: CircularProgressIndicator(
                              strokeWidth: 2,
                              valueColor: AlwaysStoppedAnimation<Color>(
                                isLiked ? Colors.red : Colors.grey.shade600,
                              ),
                            ),
                          )
                        : Icon(
                            isLiked ? Icons.favorite : Icons.favorite_border,
                            color: primary,
                            size: 20,
                          ),
                    style: IconButton.styleFrom(
                      foregroundColor:
                          isLiked ? Colors.red : Colors.grey.shade600,
                      side: const BorderSide(
                        color: Colors.red,
                        width: 1,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                  ),
// Comment button
                  IconButton(
                    onPressed: _showComments,
                    icon: SvgPicture.asset(
                      Assets.assetsImagesComment,
                      colorFilter: const ColorFilter.linearToSrgbGamma(),
                      width: 20,
                      height: 20,
                    ),
                    style: IconButton.styleFrom(
                      foregroundColor: Colors.grey.shade600,
                      side: BorderSide(
                        color: Colors.grey.shade600,
                        width: 1,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                  ),
// Save button
                  IconButton(
                    onPressed: _handleSavePress,
                    icon: isSaveLoading
                        ? SizedBox(
                            width: 20,
                            height: 20,
                            child: CircularProgressIndicator(
                              strokeWidth: 2,
                              valueColor: AlwaysStoppedAnimation<Color>(
                                isSaved ? primary : Colors.grey.shade600,
                              ),
                            ),
                          )
                        : Icon(
                            isSaved ? Icons.bookmark : Icons.bookmark_border,
                            color: primary,
                            size: 20,
                          ),
                    style: IconButton.styleFrom(
                      foregroundColor: isSaved ? primary : Colors.grey.shade600,
                      side: BorderSide(
                        color: primary,
                        width: 1,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
