import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:prezza/config/custom_colors.dart';
import 'package:prezza/core/constants/assets.dart';
import 'package:prezza/core/extension/widget_ext.dart';
import 'package:sizer/sizer.dart';

import '../../../../core/helper/tools.dart';

@RoutePage()
class InviteFriendPage extends StatefulWidget {
  const InviteFriendPage({super.key});

  @override
  State<InviteFriendPage> createState() => _InviteFriendPageState();
}

class _InviteFriendPageState extends State<InviteFriendPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(tr.inviteFriends),
      ).prezzaLeading(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              tr.inviteEarnPoints(3000.toString()),
              textAlign: TextAlign.center,
              style:
                  tstyle.headlineSmall!.copyWith(fontWeight: FontWeight.bold),
            ).margin(margin: const EdgeInsets.symmetric(horizontal: 60)),
            vSpace(3),
            Text(tr.yourReferralCode),
            Card(
              color: Colors.white,
              elevation: 3,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              child: Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 25),
                // margin: EdgeInsets.symmetric(horizontal: 20),

                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'FDKAKSD',
                      style: tstyle.bodyLarge!
                          .copyWith(fontWeight: FontWeight.bold),
                    ),
                    hSpace(3),
                    Icon(Icons.copy, color: primary)
                  ],
                ),
              ),
            ),
            vSpace(3),
            bulletText(tr.invitationLink),
            bulletText(tr.freePoints),
            vSpace(4),
            ElevatedButton.icon(
              onPressed: () {},
              icon: SvgPicture.asset(Assets.assetsImagesShare),
              label: Text(tr.shareCode),
            )
          ],
        ),
      ),
    );
  }

  Widget bulletText(String text) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      // mainAxisAlignment: MainAxisAlignment.center,
      children: [
        hSpace(4),
        Text('• ', style: TextStyle(fontSize: 18.sp)), // Bullet point
        Expanded(
          child: Text(
            text,
            style: tstyle.bodyMedium!.copyWith(),
          ),
        ),
      ],
    );
  }
}
