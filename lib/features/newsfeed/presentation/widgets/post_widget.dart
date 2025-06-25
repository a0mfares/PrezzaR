import 'package:bot_toast/bot_toast.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:prezza/core/constants/assets.dart';
import 'package:prezza/core/constants/urls.dart';
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
  // late final RiveAnimationController _controller;
  @override
  void initState() {
    bloc = NewsfeedBloc.get(context);
    bloc.add(NewsfeedEvent.getLikes(widget.post.uuid));
    // _controller = SimpleAnimation('preview', autoplay: false);
    super.initState();
  }

  bool isLoading = false;
  @override
  Widget build(BuildContext context) {
    return BlocListener<NewsfeedBloc, NewsfeedState>(
      listener: (context, state) {
        state.maybeMap(
          postSaved: (_) {
            BotToast.showText(text: tr.postSaved);
          },
          orElse: () {},
        );
      },
      child: Column(
        children: [
          BlocBuilder<NewsfeedBloc, NewsfeedState>(
            builder: (context, state) {
              return state.maybeWhen(
                progress: (progress) {
                  return LinearProgressIndicator(value: progress / 100);
                },
                orElse: () => const SizedBox(),
              );
            },
          ),
          ListTile(
            leading: const CircleAvatar(),
            title: Text(widget.post.auther_info.user_name),
            subtitle: const Text('2 hours ago'),
            trailing: IconButton(
              icon: const Icon(Icons.more_vert),
              onPressed: () {},
            ),
          ),
          vSpace(2),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Align(
                alignment: AlignmentDirectional.centerStart,
                child: Text(widget.post.contant)),
          ),
          vSpace(2),
          InkWell(
            onDoubleTap: () {
              bloc.add(NewsfeedEvent.likePost(widget.post.uuid));
            },
            child: Stack(
              alignment: Alignment.center,
              children: [
                CachedImage(
                  imageUrl: (widget.post.post_images.first.image
                          .replaceAll(Urls.baseUrl, ''))
                      .toString(),
                  fit: BoxFit.cover,
                  width: 100.w,
                  height: 40.h,
                ),
                // Visibility(
                //   visible: isLoading,
                //   child: RiveAnimation.asset(
                //     Assets.assetsImagesLikeAnime,
                //     alignment: Alignment.center,
                //     artboard: 'like',
                //     fit: BoxFit.cover,
                //     onInit: (artBoard) {
                //       setState(() {});
                //     },
                //     controllers: [_controller],
                //   ),
                // ),
              ],
            ),
          ),

          Row(
            children: [
              BlocListener<NewsfeedBloc, NewsfeedState>(
                listener: (context, state) {
                  state.maybeMap(
                    loadingLike: (_) {
                      isLoading = true;
                      // _controller.isActive = true;
                      // setState(() {});
                    },
                    successLike: (_) async {
                      // _controller.isActive = true;
                      // await Future.delayed(const Duration(seconds: 1), () {
                      //   _controller.isActive = false;
                      //   isLoading = false;
                      //   setState(() {});
                      // });
                    },
                    orElse: () {
                      return;
                    },
                  );
                },
                child: IconButton(
                  icon: Icon(Icons.favorite, color: primary),
                  onPressed: () {
                    bloc.add(NewsfeedEvent.likePost(widget.post.uuid));
                  },
                ),
              ),
              Text(widget.post.number_of_likes.toString()),
              IconButton(
                icon: SvgPicture.asset(Assets.assetsImagesComment),
                onPressed: () {},
              ),
              Text(widget.post.number_of_comments.toString()),
            ],
          ).margin(
            margin: const EdgeInsets.symmetric(horizontal: 10),
          ),
          // vSpace(1),
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
                    enableDrag: false,
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
          vSpace(3),
        ],
      ),
    );
  }
}
