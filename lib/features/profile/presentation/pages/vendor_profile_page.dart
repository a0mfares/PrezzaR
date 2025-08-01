import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:prezza/config/custom_colors.dart';
import 'package:prezza/core/constants/assets.dart';
import 'package:prezza/core/extension/widget_ext.dart';
import 'package:prezza/core/helper/tools.dart';
import 'package:prezza/core/helper/widgets.dart';
import 'package:prezza/core/service/hive_storage.dart';

import '../../../../core/service/routes.gr.dart';
import '../../../../prezza_page.dart';

@RoutePage()
class VendorProfilePage extends StatefulWidget {
  const VendorProfilePage({super.key});

  @override
  State<VendorProfilePage> createState() => _VendorProfilePageState();
}

class _VendorProfilePageState extends State<VendorProfilePage> {
  late final TextEditingController firstName;
  late final TextEditingController lastName;
  late final TextEditingController userName;
  @override
  void initState() {
    firstName = TextEditingController(text: usr.user.first_name);
    lastName = TextEditingController(text: usr.user.last_name);
    userName = TextEditingController(text: usr.user.username);
    super.initState();
  }

  @override
  void dispose() {
    firstName.dispose();
    lastName.dispose();
    userName.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 200,
        title: Text(
          tr.myAccount,
          style: tstyle.bodyLarge!.copyWith(
            color: Colors.white,
            fontSize: 20,
          ),
        ),
        backgroundColor: lightCoral,
      ).prezzaLeading(canBack: false),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 150,
              // padding: EdgeInsets.only(left: 35, top: 30, bottom: 20),
              width: double.infinity,
              decoration: BoxDecoration(
                color: lightCoral,
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(15),
                  bottomRight: Radius.circular(15),
                ),
              ),
              child: Stack(
                alignment: Alignment.center,
                clipBehavior: Clip.none,
                // crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Positioned(
                    top: 100,
                    child: CircleAvatar(
                      radius: 50,
                      backgroundColor: lightCream,
                      child: SvgPicture.asset(
                        Assets.assetsImagesProfileActive,
                        width: 45,
                      ),
                    ),
                  )
                ],
              ),
            ),
            vSpace(5),
            const Divider(thickness: 2),
            ListTile(
              onTap: () {
                appRoute.navigate(const PersonalInfoRoute());
              },
              titleTextStyle: TextStyle(
                color: primary,
                fontWeight: FontWeight.bold,
              ),
              leading: SvgPicture.asset(Assets.assetsImagesProfile),
              title: Text(tr.personalInfo),
              trailing: const Icon(Icons.arrow_forward_ios),
            ),
            const Divider(thickness: 2),
            ListTile(
              onTap: () {
                appRoute.navigate(const BusinesProfileRoute());
              },
              titleTextStyle: TextStyle(
                color: primary,
                fontWeight: FontWeight.bold,
              ),
              leading: SvgPicture.asset(Assets.assetsImagesBusinessInfo),
              title: Text(tr.businessInfo),
              trailing: const Icon(Icons.arrow_forward_ios),
            ),
            const Divider(thickness: 2),
            ListTile(
              onTap: () {
                appRoute.navigate(const PrezzaSettingsRoute());
              },
              titleTextStyle: TextStyle(
                color: primary,
                fontWeight: FontWeight.bold,
              ),
              leading: SvgPicture.asset(Assets.assetsImagesSetting),
              title: Text(tr.settings),
              trailing: const Icon(Icons.arrow_forward_ios),
            ),
            const Divider(thickness: 2),
            ListTile(
              onTap: () {
                appRoute.navigate(const FeedbackRoute());
              },
              titleTextStyle: TextStyle(
                color: primary,
                fontWeight: FontWeight.bold,
              ),
              leading: SvgPicture.asset(Assets.assetsImagesFeedback),
              title: Text(tr.feedback),
              trailing: const Icon(Icons.arrow_forward_ios),
            ),
            const Divider(thickness: 2),
            ListTile(
              onTap: () {
                appRoute.navigate(const HelpRoute());
              },
              titleTextStyle: TextStyle(
                color: primary,
                fontWeight: FontWeight.bold,
              ),
              leading: SvgPicture.asset(Assets.assetsImagesHelp),
              title: Text(tr.help),
              trailing: const Icon(Icons.arrow_forward_ios),
            ),
            const Divider(thickness: 2),
            ListTile(
              titleTextStyle: TextStyle(
                color: primary,
                fontWeight: FontWeight.bold,
              ),
              leading: SvgPicture.asset(Assets.assetsImagesAbout),
              title: Text(tr.about),
              trailing: const Icon(Icons.arrow_forward_ios),
            ),
            const Divider(thickness: 2),
            ListTile(
              onTap: () {
                showDialogPrezza(
                  context: context,
                  title: tr.areSureLogout,
                  onTap: () {
                    appRoute.removeLast();
                    HiveStorage.set(kUser, null);
                    HiveStorage.set(kBusiness, null);
                    appRoute.navigate(LoginRoute());
                  },
                  showCancel: true,
                );
              },
              titleTextStyle: TextStyle(
                color: primary,
                fontWeight: FontWeight.bold,
              ),
              leading: SvgPicture.asset(Assets.assetsImagesLogout),
              title: Text(tr.logout),
              trailing: const Icon(Icons.arrow_forward_ios),
            ),
          ],
        ),
      ),
    );
  }
}
