import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';
import 'package:sizer/sizer.dart';

class ShimmerLoadingCard extends StatelessWidget {
  const ShimmerLoadingCard({super.key, this.width, this.height});
  final double? width;
  final double? height;
  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: Colors.grey[300]!,
      highlightColor: Colors.grey[100]!,
      child: Container(
        width: width ?? 160,
        height: height,
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
        ),
        child: const Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [],
        ),
      ),
    );
  }
}

class LoadingOptionVendorDetails extends StatelessWidget {
  const LoadingOptionVendorDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        ShimmerLoadingCard(
          width: 100,
        ),
        ShimmerLoadingCard(
          width: 100,
        ),
        ShimmerLoadingCard(
          width: 100,
        ),
      ],
    );
  }
}

class ShimmerLoadingList extends StatelessWidget {
  const ShimmerLoadingList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: 3,
      itemBuilder: (context, index) => const Padding(
        padding: EdgeInsets.all(8.0),
        child: ShimmerLoadingCard(),
      ),
    );
  }
}

class ShimmerLoadingListV extends StatelessWidget {
  const ShimmerLoadingListV({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      // scrollDirection: Axis.horizontal,
      itemCount: 10,
      itemBuilder: (context, index) => const Padding(
        padding: EdgeInsets.all(8.0),
        child: ShimmerLoadingCard(
          height: 100,
        ),
      ),
    );
  }
}

class ShimmerLoadingPageView extends StatelessWidget {
  const ShimmerLoadingPageView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 500,
      height: 250,
      child: PageView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 3,
        itemBuilder: (context, index) => const Padding(
          padding: EdgeInsets.all(8.0),
          child: ShimmerLoadingCard(),
        ),
      ),
    );
  }
}

class ShimmerLoadingGrid extends StatelessWidget {
  const ShimmerLoadingGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
        // crossAxisCount: 3,
        maxCrossAxisExtent: 40.w,
        mainAxisExtent: 17.h,
      ),
      itemCount: 5,
      itemBuilder: (context, index) => const Padding(
        padding: EdgeInsets.all(8.0),
        child: ShimmerLoadingCard(),
      ),
    );
  }
}
