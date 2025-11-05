import 'package:auto_route/auto_route.dart';
import 'package:bot_toast/bot_toast.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:prezza/config/custom_colors.dart';
import 'package:prezza/core/constants/assets.dart';
import 'package:prezza/core/extension/widget_ext.dart';
import 'package:prezza/core/helper/tools.dart';
import 'package:prezza/core/helper/widgets.dart';
import 'package:prezza/core/shared/widgets/cached_image.dart';
import 'package:prezza/core/shared/widgets/empty_widget.dart';
import 'package:prezza/features/newsfeed/domain/entities/comment_entity.dart';
import 'package:prezza/features/newsfeed/presentation/bloc/newsfeed_bloc.dart';
import 'package:prezza/features/vendor/presentation/widgets/shimmer_card_loading.dart';
import 'package:timeago/timeago.dart' as timeago;

class CommentWidget extends StatefulWidget {
  const CommentWidget({
    super.key,
    required this.onLoadData,
    this.isReplys = false,
    required this.uuid,
        this.onCommentsClosed,

  });
  final VoidCallback onLoadData;
  final bool isReplys;
  final String uuid;
    final VoidCallback? onCommentsClosed;

  @override
  State<CommentWidget> createState() => _CommentWidgetState();
}

class _CommentWidgetState extends State<CommentWidget> {
  late final NewsfeedBloc bloc;

  @override
  void initState() {
    bloc = NewsfeedBloc.get(context);
    widget.onLoadData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: true,
      onPopInvoked: (didPop) {
        widget.onCommentsClosed;

      },
      child: Scaffold(
        appBar: AppBar().prezzaLeading(onTap: () {
          context.maybePop();
        }),
        body: Column(
          children: [
            BlocConsumer<NewsfeedBloc, NewsfeedState>(
              listener: (context, state) {
                state.maybeWhen(
                  failureComments: (err) {
                    BotToast.showText(text: err);
                  },
                  failureReplies: (err) {
                    BotToast.showText(text: err);
                  },
                  successAddComment: () {
                    BotToast.showText(text: tr.addComment);
                  },
                  failureAddComment: (err) {
                    BotToast.showText(text: err);
                  },
                  successReplyComment: () {
                    BotToast.showText(text: tr.replyComment);
                  },
                  failureReplyComment: (err) {
                    BotToast.showText(text: err);
                  },
                  successDeleteComment: () {
                    BotToast.showText(text: tr.deleteComment);
                  },
                  failureDeleteComment: (err) {
                    BotToast.showText(text: err);
                  },
                  successDeleteReply: () {
                    BotToast.showText(text: tr.deleteReply);
                  },
                  failureDeleteReply: (err) {
                    BotToast.showText(text: err);
                  },
                  orElse: () {},
                );
              },
              builder: (context, state) {
                return state.maybeWhen(
                  loadingComments: () =>
                      const Expanded(child: ShimmerLoadingListV()),
                  loadingReplies: () =>
                      const Expanded(child: ShimmerLoadingListV()),
                  successComments: () {
                    if (bloc.comments.isEmpty && !widget.isReplys) {
                      return Expanded(child: EmptyWidget(title: tr.noComment));
                    }
                    return Expanded(
                      child: RefreshIndicator(
                        onRefresh: () async {
                          widget.onLoadData();
                        },
                        child: ListView.builder(
                          itemCount: bloc.comments.length,
                          itemBuilder: (context, index) {
                            final comment = bloc.comments[index];
                            return CommentItem(
                              key: ValueKey(comment.uuid),
                              comment: comment,
                              postId: widget.uuid,
                              isReply: false,
                            );
                          },
                        ),
                      ),
                    );
                  },
                  successReplies: () {
                    if (bloc.replysComment.isEmpty && widget.isReplys) {
                      return Expanded(child: EmptyWidget(title: tr.replys));
                    }
                    return Expanded(
                      child: RefreshIndicator(
                        onRefresh: () async {
                          widget.onLoadData();
                        },
                        child: ListView.builder(
                          itemCount: bloc.replysComment.length,
                          itemBuilder: (context, index) {
                            final comment = bloc.replysComment[index];
                            return CommentItem(
                              key: ValueKey(comment.uuid),
                              comment: comment,
                              postId: widget.uuid,
                              isReply: true,
                            );
                          },
                        ),
                      ),
                    );
                  },
                  // Show existing comments on these states too
                  successAddComment: () => _buildCommentsList(),
                  successReplyComment: () => _buildCommentsList(),
                  successLikeComment: () => _buildCommentsList(),
                  successUnlikeComment: () => _buildCommentsList(),
                  successDeleteComment: () => _buildCommentsList(),
                  successDeleteReply: () => _buildCommentsList(),
                  failureComments: (err) => Expanded(
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Icon(Icons.error_outline,
                              size: 60, color: Colors.red),
                          vSpace(2),
                          Text(err),
                          vSpace(2),
                          ElevatedButton(
                            onPressed: () {
                              widget.onLoadData();
                            },
                            child: Text(tr.clickAgain),
                          ),
                        ],
                      ),
                    ),
                  ),
                  failureReplies: (err) => Expanded(
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Icon(Icons.error_outline,
                              size: 60, color: Colors.red),
                          vSpace(2),
                          Text(err),
                          vSpace(2),
                          ElevatedButton(
                            onPressed: () {
                              widget.onLoadData();
                            },
                            child: Text(tr.clickAgain),
                          ),
                        ],
                      ),
                    ),
                  ),
                  orElse: () {
                    if (bloc.comments.isEmpty && !widget.isReplys ||
                        bloc.replysComment.isEmpty && widget.isReplys) {
                      return Expanded(child: EmptyWidget(title: tr.noComment));
                    }
                    return _buildCommentsList();
                  },
                );
              },
            ),
            TextFormField(
              controller: bloc.comment,
              decoration: InputDecoration(
                hintText: tr.writeHere,
                suffixIcon: BlocBuilder<NewsfeedBloc, NewsfeedState>(
                  builder: (context, state) {
                    return IconButton(
                      onPressed: () {
                        if (widget.isReplys) {
                          bloc.add(NewsfeedEvent.replayComment(widget.uuid));
                        } else {
                          bloc.add(NewsfeedEvent.addComment(widget.uuid));
                        }
                      },
                      icon: Icon(
                        Icons.send,
                        color: primary,
                      ),
                    );
                  },
                ),
              ),
            ).prezaa(
              margin: const EdgeInsets.all(20),
              label: widget.isReplys ? tr.replyComment : tr.addComment,
            )
          ],
        ),
      ),
    );
  }

  Widget _buildCommentsList() {
    final comments = widget.isReplys ? bloc.replysComment : bloc.comments;

    if (comments.isEmpty) {
      return Expanded(
        child: EmptyWidget(
          title: widget.isReplys ? tr.replys : tr.noComment,
        ),
      );
    }

    return Expanded(
      child: RefreshIndicator(
        onRefresh: () async {
          widget.onLoadData();
        },
        child: ListView.builder(
          itemCount: comments.length,
          itemBuilder: (context, index) {
            final comment = comments[index];
            return CommentItem(
              key: ValueKey(comment.uuid),
              comment: comment,
              postId: widget.uuid,
              isReply: widget.isReplys,
            );
          },
        ),
      ),
    );
  }
}

// comment_item.dart (part of comment_widget.dart)
class CommentItem extends StatelessWidget {
  const CommentItem({
    super.key,
    required this.comment,
    required this.postId,
    required this.isReply,
  });

  final CommentEntity comment;
  final String postId;
  final bool isReply;

  @override
  Widget build(BuildContext context) {
    final bloc = NewsfeedBloc.get(context);

    return BlocListener<NewsfeedBloc, NewsfeedState>(
      listener: (context, state) {
        state.maybeMap(
          failureLikeComment: (err) {
            BotToast.showText(text: err.err);
          },
          failureUnlikeComment: (err) {
            BotToast.showText(text: err.err);
          },
          orElse: () {},
        );
      },
      child: InkWell(
        onLongPress: () {
          if (comment.is_i_comment_owner || comment.is_i_replay_owner) {
            showDialogPrezza(
                context: context,
                title: isReply ? tr.deleteReply : tr.deleteComment,
                showCancel: true,
                onTap: () {
                  if (isReply) {
                    bloc.add(NewsfeedEvent.deleteReplayComment(
                        postId, comment.uuid));
                  } else {
                    bloc.add(NewsfeedEvent.deleteComment(
                        comment.uuid, postId, comment.content));
                  }
                  context.maybePop();
                });
          }
        },
        child: Column(
          children: [
            ListTile(
              leading: InkWell(
                child: CircleAvatar(
                  child: CachedImage(
                      imageUrl: comment.user_info.profile_picture_url),
                ),
              ),
              title: Text(comment.user_info.full_name),
              subtitle: Text(comment.user_info.user_name),
              trailing:
                  Text(timeago.format(DateTime.parse(comment.created_at))),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Align(
                alignment: AlignmentDirectional.centerStart,
                child: Text(comment.content, style: tstyle.bodyLarge),
              ),
            ),
            vSpace(1),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                IconButton(
                  onPressed: () {
                    if (comment.is_liked) {
                      bloc.add(
                        NewsfeedEvent.unLikeCmment(comment.uuid, postId),
                      );
                    } else {
                      bloc.add(
                        NewsfeedEvent.likeComment(comment.uuid, postId),
                      );
                    }
                  },
                  icon: SvgPicture.asset(
                    Assets.assetsImagesFavorites,
                    color: comment.is_liked ? Colors.red : null,
                  ),
                ),
                Row(
                  children: [
                    Visibility(
                      visible: comment.number_of_replies != null && !isReply,
                      child: InkWell(
                        onTap: () {
                          bloc.comment.clear();
                          showModalBottomSheet(
                            context: context,
                            useSafeArea: true,
                            enableDrag: false,
                            isScrollControlled: true,
                            builder: (context) {
                              return CommentWidget(
                                uuid: comment.uuid,
                                isReplys: true,
                                onLoadData: () {
                                  bloc.add(NewsfeedEvent.getCommentReplaies(
                                      comment.uuid));
                                },
                              );
                            },
                          ).then((_) {
                            bloc.add(NewsfeedEvent.getComments(postId));
                          });
                        },
                        child: Text(
                          '${comment.number_of_replies} ${tr.replys}',
                        ),
                      ),
                    ),
                    hSpace(1),
                    Visibility(
                      visible: comment.number_of_likes != null,
                      child: SvgPicture.asset(
                        Assets.assetsImagesFavorites,
                      ),
                    ),
                    hSpace(1),
                    Visibility(
                      visible: comment.number_of_likes != null,
                      child: Text((comment.number_of_likes ?? 0).toString()),
                    ),
                  ],
                ),
              ],
            ),
            const Divider(),
          ],
        ),
      ),
    );
  }
}
