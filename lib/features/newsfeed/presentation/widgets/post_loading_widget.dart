import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class LoadingPostWidget extends StatelessWidget {
  const LoadingPostWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: Colors.grey[300]!,
      highlightColor: Colors.grey[100]!,
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 12),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Profile Section
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Row(
                children: [
                  // Profile Picture
                  CircleAvatar(
                    radius: 24,
                    backgroundColor: Colors.grey[300],
                  ),
                  const SizedBox(width: 10),
                  // Name and Handle
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: 120,
                        height: 12,
                        color: Colors.grey[300],
                      ),
                      const SizedBox(height: 5),
                      Container(
                        width: 80,
                        height: 10,
                        color: Colors.grey[300],
                      ),
                    ],
                  ),
                  const Spacer(),
                  // More Options Icon
                  Container(
                    width: 20,
                    height: 20,
                    color: Colors.grey[300],
                  ),
                ],
              ),
            ),

            // Post Text
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12.0),
              child: Column(
                children: List.generate(2, (index) {
                  return Padding(
                    padding: const EdgeInsets.only(bottom: 5),
                    child: Container(
                      width: double.infinity,
                      height: 12,
                      color: Colors.grey[300],
                    ),
                  );
                }),
              ),
            ),

            const SizedBox(height: 10),

            // Post Image
            Container(
              height: 200,
              width: double.infinity,
              color: Colors.grey[300],
            ),

            const SizedBox(height: 10),

            // Tags Section (Blurred Icons)
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12.0),
              child: Row(
                children: List.generate(2, (index) {
                  return Padding(
                    padding: const EdgeInsets.only(right: 8),
                    child: Row(
                      children: [
                        CircleAvatar(
                          radius: 14,
                          backgroundColor: Colors.grey[300],
                        ),
                        const SizedBox(width: 5),
                        Container(
                          width: 60,
                          height: 12,
                          color: Colors.grey[300],
                        ),
                      ],
                    ),
                  );
                }),
              ),
            ),

            const SizedBox(height: 15),

            // Like & Comment Count
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12.0),
              child: Row(
                children: [
                  Container(
                    width: 50,
                    height: 12,
                    color: Colors.grey[300],
                  ),
                  const Spacer(),
                  Container(
                    width: 50,
                    height: 12,
                    color: Colors.grey[300],
                  ),
                ],
              ),
            ),

            const SizedBox(height: 10),

            // Like, Comment, Save Buttons
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 12.0, vertical: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  _shimmerButton(),
                  _shimmerButton(),
                  _shimmerButton(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _shimmerButton() {
    return Container(
      width: 40,
      height: 40,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.grey[300],
      ),
    );
  }
}
