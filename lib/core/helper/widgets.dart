import 'dart:async';
import 'dart:io';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:image_picker/image_picker.dart';
import 'package:lottie/lottie.dart';

import '../../config/custom_colors.dart';
import '../../config/txt_themes.dart';
import '../constants/assets.dart';
import 'tools.dart';

void showTimePickerPrezza(
    context, Duration selectedTime, Function(Duration time) onTap) {
  showCupertinoModalPopup(
    context: context,
    builder: (BuildContext context) {
      return Container(
        height: 250,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Column(
          children: [
            Expanded(
              child: CupertinoTimerPicker(
                mode: CupertinoTimerPickerMode.hms, // Hours and Minutes
                initialTimerDuration: selectedTime,
                onTimerDurationChanged: onTap,
              ),
            ),
            vSpace(3),
            ElevatedButton(
                onPressed: () {
                  context.maybePop();
                },
                child: Text(tr.confirm)),
            vSpace(3),
          ],
        ),
      );
    },
  );
}

Future<dynamic> showPrezzaBottomSheet(BuildContext context, String? title,
    List<String> items, Function(String) onSelectedItem, selectedItem) {
  return showModalBottomSheet(
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
    context: context,
    builder: (context) {
      String sItem = selectedItem;
      return StatefulBuilder(
        builder: (context, StateSetter setState) => Padding(
          padding: const EdgeInsets.all(20)
              .copyWith(bottom: MediaQuery.of(context).viewInsets.bottom),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              if (title != null) ...[
                Text(
                  title,
                  style: tstyle.headlineSmall,
                ),
                vSpace(3),
                Expanded(
                  child: ListView.builder(
                    itemCount: items.length,
                    itemBuilder: (context, index) {
                      return RadioListTile<String>(
                        value: items[index],
                        controlAffinity: ListTileControlAffinity.trailing,
                        groupValue: sItem,
                        title: Text(items[index]),
                        onChanged: (v) {
                          onSelectedItem(v!);
                          setState(() {
                            sItem = v;
                          });
                        },
                      );
                    },
                  ),
                ),
                vSpace(3),
                Center(
                  child: ElevatedButton(
                    onPressed: () {
                      context.maybePop();
                    },
                    child: Text(tr.confirm),
                  ),
                ),
                vSpace(3),
              ]
            ],
          ),
        ),
      );
    },
  );
}

Future<dynamic> showPrezzaBtm(BuildContext context, Widget content,
    [bool isScroll = false]) {
  return showModalBottomSheet(
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
    context: context,
    isDismissible: false,
    enableDrag: false,
    isScrollControlled: true,
    builder: (context) {
      return StatefulBuilder(
        builder: (context, StateSetter setState) {
          final bottomInset = MediaQuery.of(context).viewInsets.bottom;

          return LayoutBuilder(
            builder: (context, constraints) {
              return ConstrainedBox(
                constraints: BoxConstraints(
                  // Use up to 80% of screen height max
                  maxHeight: constraints.maxHeight * 0.8,
                ),
                child: Padding(
                  padding:
                      const EdgeInsets.all(20).copyWith(bottom: bottomInset),
                  child: isScroll
                      ? SingleChildScrollView(
                          physics: const BouncingScrollPhysics(),
                          child: content,
                        )
                      : content,
                ),
              );
            },
          );
        },
      );
    },
  );
}

Future<dynamic> showDialogPrezza({
  required BuildContext context,
  required String title,
  String? subTitle,
  VoidCallback? onTap,
  Widget? icon,
  String? image,
  bool showCancel = false,
}) {
  return showDialog(
    context: context,
    builder: (context) {
      return AlertDialog(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(title, style: redText),
            vSpace(2),
            if (subTitle != null) ...[
              Text(subTitle, style: redText),
            ]
          ],
        ),
        icon: icon ??
            (image == null ? null : Lottie.asset(image, fit: BoxFit.cover)),
        actions: [
          Row(
            children: [
              Expanded(
                child: ElevatedButton(
                  onPressed: onTap ??
                      () {
                        context.maybePop();
                      },
                  child: Text(tr.ok),
                ),
              ),
              hSpace(3),
              Visibility(
                visible: showCancel,
                child: Expanded(
                  child: ElevatedButton(
                    onPressed: () {
                      context.maybePop();
                    },
                    child: Text(tr.cancel),
                  ),
                ),
              ),
            ],
          ),
        ],
      );
    },
  );
}

final ImagePicker _imagePicker = ImagePicker();
Future<dynamic> showPrezzaImagePicker({
  required BuildContext context,
  required Function(File image) onPickFromCamera,
  required Function(File image) onPickFromGallery,
  Function(List<File> images)? onPickFromGalleryMulti,
}) =>
    showModalBottomSheet(
        context: context,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        builder: (context) {
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              // crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                InkWell(
                  onTap: () async {
                    final Completer<File> image = Completer();
                    await _imagePicker
                        .pickImage(source: ImageSource.camera)
                        .then((v) {
                      image.complete(File(v != null ? v.path : ''));
                    });
                    onPickFromCamera(await image.future);
                  },
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      CircleAvatar(
                        radius: 30,
                        child: SvgPicture.asset(Assets.assetsImagesCamera),
                      ),
                      vSpace(1),
                      Text(
                        tr.takePhoto,
                        style: redText,
                      )
                    ],
                  ),
                ),
                InkWell(
                  onTap: () async {
                    final Completer<File> image = Completer();
                    await _imagePicker
                        .pickImage(source: ImageSource.gallery)
                        .then((v) {
                      image.complete(File(v != null ? v.path : ''));
                    });
                    onPickFromCamera(await image.future);
                  },
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      CircleAvatar(
                        radius: 30,
                        backgroundColor: lightCream,
                        child: SvgPicture.asset(Assets.assetsImagesGellary),
                      ),
                      vSpace(1),
                      Text(
                        tr.fromGallery,
                        style: redText,
                      )
                    ],
                  ),
                ),
                InkWell(
                  onTap: () async {
                    final Completer<List<File>> image = Completer();
                    await _imagePicker.pickMultiImage().then((v) {
                      List<File> images = [];
                      if (v.isNotEmpty) {
                        images = List<File>.from(v.map((e) => File(e.path)));

                        image.complete(images);
                      }
                    });
                    if (onPickFromGalleryMulti != null) {
                      onPickFromGalleryMulti(await image.future);
                    }
                  },
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      CircleAvatar(
                        radius: 30,
                        backgroundColor: lightCream,
                        child: SvgPicture.asset(Assets.assetsImagesGellary),
                      ),
                      vSpace(1),
                      Text(
                        tr.fromGallery,
                        style: redText,
                      )
                    ],
                  ),
                ),
              ],
            ),
          );
        });
