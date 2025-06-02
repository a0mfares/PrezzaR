import 'dart:async';

import 'package:flutter/material.dart';
import 'package:prezza/core/shared/widgets/cached_image.dart';

class PrezzaSliderImg extends StatefulWidget {
  const PrezzaSliderImg(
      {super.key,
      required this.images,
      this.width = 500,
      this.height = 300,
      this.isOnline = false});
  final List<String> images;
  final double width;
  final double height;
  final bool isOnline;
  @override
  State<PrezzaSliderImg> createState() => _PrezzaSliderImgState();
}

class _PrezzaSliderImgState extends State<PrezzaSliderImg> {
  final PageController _pageController = PageController();

  Timer? _timer;
  int _currentPage = 0;

  @override
  void initState() {
    super.initState();

    // Start the timer for auto-sliding
    _timer = Timer.periodic(const Duration(seconds: 3), (Timer timer) {
      if (_currentPage < widget.images.length - 1) {
        _currentPage++;
      } else {
        _currentPage = 0;
      }
      _pageController.animateToPage(
        _currentPage,
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeIn,
      );
    });
  }

  @override
  void dispose() {
    _timer?.cancel(); // Cancel the timer to avoid memory leaks
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: widget.height,
          width: widget.width,
          child: PageView.builder(
            controller: _pageController,
            itemCount: widget.images.length,
            onPageChanged: (int index) {
              _currentPage = index; // Update the current page
            },
            itemBuilder: (context, index) {
              return widget.isOnline
                  ? CachedImage(
                      imageUrl: widget.images[index],
                      fit: BoxFit.cover,
                      radius: BorderRadius.circular(50),
                    )
                  : Image.asset(
                      widget.images[index],
                      fit: BoxFit.contain,
                      width: 300,
                    );
            },
          ),
        ),
      ],
    );
  }
}
