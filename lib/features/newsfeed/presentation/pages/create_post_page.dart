import 'dart:developer';

import 'package:auto_route/auto_route.dart';
import 'package:bot_toast/bot_toast.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:prezza/core/extension/widget_ext.dart';
import 'package:prezza/core/helper/widgets.dart';
import 'package:prezza/core/shared/widgets/cached_image.dart';
import 'package:prezza/features/newsfeed/presentation/bloc/newsfeed_bloc.dart';

import '../../../../core/constants/assets.dart';
import '../../../../core/helper/tools.dart';
import '../../../../core/service/routes.gr.dart';
import '../../../../prezza_page.dart';

@RoutePage()
class CreatePostPage extends StatefulWidget {
  const CreatePostPage({super.key});

  @override
  State<CreatePostPage> createState() => _CreatePostPageState();
}

class _CreatePostPageState extends State<CreatePostPage> {
  late final NewsfeedBloc bloc;

  @override
  void initState() {
    bloc = NewsfeedBloc.get(context);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(tr.createPost),
        actions: [
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
            child: ElevatedButton(
              onPressed: () {
                bloc.add(const NewsfeedEvent.createPost());
              },
              style: ElevatedButton.styleFrom(
                minimumSize: const Size(150, 40),
                maximumSize: const Size(150, 40),
              ),
              child: Text(tr.next),
            ),
          ),
        ],
      ).prezzaLeading(),
      body: BlocListener<NewsfeedBloc, NewsfeedState>(
        listener: (context, state) {
          state.maybeMap(
            progress: (v) {
              appRoute.navigate(UserLayoutHomeRoute(index: 1));
              appRoute.removeLast();
              log(v.progress.toString());
            },
            successCreated: (v) {
              BotToast.closeAllLoading();
              appRoute.back();
            },
            failure: (v) {
              BotToast.closeAllLoading();
              BotToast.showText(text: v.err);
            },
            success: (v) {
              BotToast.closeAllLoading();
            },
            orElse: () {},
          );
        },
        child: Column(
          children: [
            ListTile(
              leading: CachedImage(imageUrl: usr.user.profile_picture),
              title: Text(usr.user.username),
            ),
            vSpace(2),
            TextFormField(
              controller: bloc.content,
              decoration: InputDecoration(
                hintText: tr.shareExperience,
                hintStyle: tstyle.headlineSmall!.copyWith(
                  color: Colors.grey,
                ),
                fillColor: Colors.transparent,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
            BlocBuilder<NewsfeedBloc, NewsfeedState>(
              builder: (context, state) {
                return state.maybeWhen(
                  orElse: () {
                    return Visibility(
                      visible: bloc.img.path.isNotEmpty,
                      child: Image.file(
                        bloc.img,
                      ),
                    );
                  },
                );
              },
            ),
          ],
        ),
      ),
      bottomSheet: Card(
        elevation: 30,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
          ),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            TextButton.icon(
              onPressed: () {
                showPrezzaImagePicker(
                  context: context,
                  onPickFromCamera: (result) {
                    bloc.add(NewsfeedEvent.pickupImage(result));
                  },
                  onPickFromGallery: (result) {
                    bloc.add(NewsfeedEvent.pickupImage(result));
                  },
                );
              },
              icon: SvgPicture.asset(Assets.assetsImagesGallery),
              label: Text(tr.addPhotos),
              style: TextButton.styleFrom(backgroundColor: Colors.transparent),
            ),
            const Divider(),
            TextButton.icon(
              onPressed: () {
                appRoute.navigate(const TagVendorRoute());
              },
              icon: SvgPicture.asset(Assets.assetsImagesLocationoutLine),
              label: Text(tr.tagVendor),
              style: TextButton.styleFrom(backgroundColor: Colors.transparent),
            ),
            const Divider(),
            TextButton.icon(
              onPressed: () {
                appRoute.navigate(const MentionItemRoute());
              },
              icon: SvgPicture.asset(Assets.assetsImagesMentionItem),
              label: Text(tr.mentionItem),
              style: TextButton.styleFrom(backgroundColor: Colors.transparent),
            ),
          ],
        ),
      ),
    );
  }
}
