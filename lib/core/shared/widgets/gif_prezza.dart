import 'package:flutter/material.dart';
import 'package:gif/gif.dart';
import 'package:prezza/core/constants/assets.dart';

class GifPrezza extends StatefulWidget {
  const GifPrezza({super.key});

  @override
  State<GifPrezza> createState() => _GifPrezzaState();
}

class _GifPrezzaState extends State<GifPrezza> with TickerProviderStateMixin {
  late final GifController _controller;
  @override
  void initState() {
    _controller = GifController(vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Gif(
      image: const AssetImage(Assets.assetsImagesSuccessGif),
      controller:
          _controller, // if duration and fps is null, original gif fps will be used.
      // fps: 60,
      // duration: const Duration(seconds: 3),
      autostart: Autostart.loop,
      placeholder: (context) => const Text('Loading...'),
      onFetchCompleted: () {
        _controller.reset();
        _controller.forward();
      },
    );
  }
}
