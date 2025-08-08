import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:prezza/config/custom_colors.dart';
import 'package:prezza/core/constants/assets.dart';
import 'package:prezza/core/extension/widget_ext.dart';
import 'package:prezza/core/helper/tools.dart';
import 'package:prezza/core/helper/widgets.dart';
import 'package:prezza/core/service/hive_storage.dart';
import 'package:prezza/features/auth/domain/entities/user_entity.dart';

import '../../../../core/service/routes.gr.dart';
import '../../../../prezza_page.dart';

@RoutePage()
class VendorProfilePage extends StatefulWidget {
  const VendorProfilePage({super.key});

  @override
  State<VendorProfilePage> createState() => _VendorProfilePageState();
}

class _VendorProfilePageState extends State<VendorProfilePage>
    with WidgetsBindingObserver {
  late final TextEditingController firstName;
  late final TextEditingController lastName;
  late final TextEditingController userName;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
    _initializeControllers();
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    firstName.dispose();
    lastName.dispose();
    userName.dispose();
    super.dispose();
  }

  void _initializeControllers() {
    final latestUser =
        HiveStorage.get<UserEntity>(kUser, defaultValue: UserEntity.empty());

    firstName = TextEditingController(text: latestUser.user.first_name);
    lastName = TextEditingController(text: latestUser.user.last_name);
    userName = TextEditingController(text: latestUser.user.username);
  }

  void _refreshUserData() {
    // Get the latest user data from storage
    final latestUser =
        HiveStorage.get<UserEntity>(kUser, defaultValue: UserEntity.empty());

    firstName.text = latestUser.user.first_name;
    lastName.text = latestUser.user.last_name;
    userName.text = latestUser.user.username;
    setState(() {}); // Trigger rebuild to show updated data
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    if (state == AppLifecycleState.resumed) {
      // App came back to foreground, refresh data
      _refreshUserData();
    }
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    // This runs every time the page becomes visible
    _refreshUserData();
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
              onTap: () async {
                // Navigate and refresh data when returning
                await appRoute.navigate(const PersonalInfoRoute());
                _refreshUserData();
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
              onTap: () async {
                await appRoute.navigate(const BusinesProfileRoute());
                _refreshUserData();
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
              onTap: () async {
                await appRoute.navigate(const PrezzaSettingsRoute());
                _refreshUserData();
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
              onTap: () async {
                await appRoute.navigate(const FeedbackRoute());
                _refreshUserData();
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
              onTap: () async {
                await appRoute.navigate(const HelpRoute());
                _refreshUserData();
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
