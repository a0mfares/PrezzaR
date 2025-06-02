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
  });
  final VoidCallback onLoadData;
  final bool isReplys;
  final String uuid;
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
    return Scaffold(
      appBar: AppBar().prezzaLeading(onTap: () {
        context.maybePop();
      }),
      body: Column(
        children: [
          BlocBuilder<NewsfeedBloc, NewsfeedState>(
            builder: (context, state) {
              return state.maybeWhen(
                loadingComment: () =>
                    const Expanded(child: ShimmerLoadingListV()),
                orElse: () {
                  if (bloc.comments.isEmpty && !widget.isReplys ||
                      bloc.replysComment.isEmpty && widget.isReplys) {
                    return Expanded(child: EmptyWidget(title: tr.noComment));
                  }
                  return Expanded(
                    child: RefreshIndicator(
                      onRefresh: () async {
                        widget.onLoadData();
                      },
                      child: ListView.builder(
                        itemCount: widget.isReplys
                            ? bloc.replysComment.length
                            : bloc.comments.length,
                        itemBuilder: (context, index) {
                          final comment = widget.isReplys
                              ? bloc.replysComment[index]
                              : bloc.comments[index];
                          return CommentItem(
                            comment: comment,
                            postId: widget.uuid,
                            isReply: widget.isReplys,
                          );
                        },
                      ),
                    ),
                  );
                },
              );
            },
          ),
          TextFormField(
            controller: bloc.comment,
            decoration: InputDecoration(
              hintText: tr.writeHere,
              suffixIcon: BlocConsumer<NewsfeedBloc, NewsfeedState>(
                listener: (context, state) {
                  state.maybeMap(
                    successComment: (_) {
                      bloc.comment.clear();
                    },
                    failure: (err) {
                      BotToast.showText(text: err.err);
                    },
                    orElse: () {},
                  );
                },
                builder: (context, state) {
                  return state.maybeWhen(
                    loadingAddComment: () => defLoadingCenter,
                    orElse: () {
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
    );
  }
}

class CommentItem extends StatefulWidget {
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
  State<CommentItem> createState() => _CommentItemState();
}

class _CommentItemState extends State<CommentItem> {
  bool isVisiable = false;
  late final NewsfeedBloc bloc;

  @override
  void initState() {
    bloc = NewsfeedBloc.get(context);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onLongPress: () {
        showDialogPrezza(
            context: context,
            title: widget.isReply ? tr.deleteReply : tr.deleteComment,
            showCancel: true,
            onTap: () {
              if (widget.isReply) {
                bloc.add(NewsfeedEvent.deleteReplayComment(
                    widget.postId, widget.comment.uuid));
              } else {
                bloc.add(NewsfeedEvent.deleteComment(widget.comment.uuid,
                    widget.postId, widget.comment.content));
              }
              context.maybePop();
            });
      },
      child: Column(
        children: [
          ListTile(
            leading: InkWell(
              child: CircleAvatar(
                child: CachedImage(
                    imageUrl: widget.comment.user_info.profile_picture_url),
              ),
            ),
            title: Text(widget.comment.user_info.full_name),
            subtitle: Text(widget.comment.user_info.user_name),
            trailing:
                Text(timeago.format(DateTime.parse(widget.comment.created_at))),
          ),
          Text(widget.comment.content, style: tstyle.bodyLarge),
          vSpace(1),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(
                onPressed: () {
                  bloc.add(
                    NewsfeedEvent.likeComment(
                        widget.comment.uuid, widget.postId),
                  );
                },
                icon: SvgPicture.asset(Assets.assetsImagesFavorites),
              ),
              Row(
                children: [
                  Visibility(
                    visible: widget.comment.number_of_replies != null,
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
                              uuid: widget.comment.uuid,
                              isReplys: true,
                              onLoadData: () {
                                bloc.add(NewsfeedEvent.getCommentReplaies(
                                    widget.comment.uuid));
                              },
                            );
                          },
                        );
                      },
                      child: Text(
                        '${widget.comment.number_of_replies} ${tr.replys}',
                      ),
                    ),
                  ),
                  hSpace(1),
                  Visibility(
                    visible: widget.comment.number_of_likes != null,
                    child: SvgPicture.asset(
                      Assets.assetsImagesFavorites,
                    ),
                  ),
                  hSpace(1),
                  Visibility(
                    visible: widget.comment.number_of_likes != null,
                    child: Text(widget.comment.number_of_likes.toString()),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
