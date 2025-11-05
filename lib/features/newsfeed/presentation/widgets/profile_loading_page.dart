import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class ShimmerProfilePlaceholder extends StatelessWidget {
  const ShimmerProfilePlaceholder({super.key});

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: Colors.grey[300]!,
      highlightColor: Colors.grey[100]!,
      child: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            // Circle avatar placeholder
            const SizedBox(height: 16),
            Container(
              width: 100,
              height: 100,
              decoration: const BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle,
              ),
            ),
            const SizedBox(height: 16),

            // Followers / Following row placeholder
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  children: [
                    Container(width: 30, height: 12, color: Colors.white),
                    const SizedBox(height: 8),
                    Container(width: 60, height: 12, color: Colors.white),
                  ],
                ),
                Column(
                  children: [
                    Container(width: 30, height: 12, color: Colors.white),
                    const SizedBox(height: 8),
                    Container(width: 60, height: 12, color: Colors.white),
                  ],
                ),
              ],
            ),

            const SizedBox(height: 24),
            // Tab indicators placeholder (Feed / Saved)
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(width: 60, height: 2, color: Colors.white),
                const SizedBox(width: 16),
                Container(width: 60, height: 2, color: Colors.white),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
