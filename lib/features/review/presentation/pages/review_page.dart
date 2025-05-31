import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:prezza/core/constants/assets.dart';
import 'package:prezza/core/extension/widget_ext.dart';
import 'package:prezza/core/helper/tools.dart';
import 'package:prezza/core/shared/widgets/cached_image.dart';
import 'package:prezza/core/shared/widgets/empty_widget.dart';
import 'package:prezza/core/shared/widgets/prezza_rating.dart';
import 'package:sizer/sizer.dart';

@RoutePage()
class ReviewPage extends StatefulWidget {
  const ReviewPage({super.key});

  @override
  State<ReviewPage> createState() => _ReviewPageState();
}

class _ReviewPageState extends State<ReviewPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(tr.reviews),
      ).prezzaLeading(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // const Divider(),
          Center(child: EmptyWidget(title: 'No Reviews')),
          // Expanded(
          //   child: ListView.builder(
          //     itemCount: 5,
          //     itemBuilder: (context, index) {
          //       return Column(
          //         children: [
          //           Row(
          //             crossAxisAlignment: CrossAxisAlignment.start,
          //             children: [
          //               CircleAvatar(
          //                 backgroundColor: Colors.white,
          //                 radius: 35,
          //                 child: SvgPicture.asset(
          //                   Assets.assetsImagesProfileActive,
          //                   width: 40,
          //                 ),
          //               ),
          //               hSpace(3),
          //               Container(
          //                 width: 70.w,
          //                 padding: const EdgeInsets.all(16),
          //                 decoration: BoxDecoration(
          //                   borderRadius: BorderRadius.circular(20),
          //                   color: Colors.white,
          //                 ),
          //                 child: Column(
          //                   crossAxisAlignment: CrossAxisAlignment.start,
          //                   children: [
          //                     Row(
          //                       mainAxisAlignment:
          //                           MainAxisAlignment.spaceBetween,
          //                       children: [
          //                         const Text('date'),
          //                         InkWell(
          //                           onTap: () {},
          //                           child: const Icon(
          //                             Icons.more_horiz,
          //                           ),
          //                         )
          //                       ],
          //                     ),
          //                     Text('comment', style: tstyle.bodyLarge),
          //                     PrezzaRating(
          //                       rate: 4.5,
          //                       size: 15,
          //                       padding: const EdgeInsets.all(2),
          //                       onRate: (rate) {},
          //                     ),
          //                     vSpace(2),
          //                     Text('caption', style: tstyle.bodyLarge),
          //                     vSpace(1),
          //                     const CachedImage(
          //                         imageUrl: 'https://dkfasjd.com'),
          //                   ],
          //                 ),
          //               ),
          //               // Spacer(),
          //             ],
          //           ),
          //           const Divider(),
          //         ],
          //       );
          //     },
          //   ),
          // )
        ],
      ),
    );
  }
}
