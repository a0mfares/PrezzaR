import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class ShimmerPostsGrid extends StatelessWidget {
  const ShimmerPostsGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: Colors.grey[300]!,
      highlightColor: Colors.grey[100]!,
      child: GridView.builder(
        padding: EdgeInsets.zero,
        // Prevent unnecessary scrolling if you want to see the shimmer fully
        physics: const NeverScrollableScrollPhysics(),
        itemCount: 9, // Show 9 placeholders
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 4, // 3 columns like Instagram
          mainAxisSpacing: 2,
          crossAxisSpacing: 2,
        ),
        itemBuilder: (context, index) {
          return Container(color: Colors.white);
        },
      ),
    );
  }
}
