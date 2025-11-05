import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:prezza/config/custom_colors.dart';
import 'package:prezza/core/constants/assets.dart';
import 'package:prezza/core/extension/widget_ext.dart';
import 'package:prezza/core/helper/tools.dart';
import 'package:prezza/core/helper/widgets.dart';
import 'package:prezza/core/service/hive_storage.dart';
import 'package:prezza/features/auth/domain/entities/user_entity.dart';
import 'package:prezza/features/profile/presentation/bloc/profile_bloc.dart';

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
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  void _refreshUserData() {
    // This will trigger a rebuild with the latest data from storage
    setState(() {});
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    if (state == AppLifecycleState.resumed) {
      _refreshUserData();
    }
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _refreshUserData();
  }

  @override
  Widget build(BuildContext context) {
    // Get the latest user data from storage on every build
    // ignore: unused_local_variable
    final latestUser =
        HiveStorage.get<UserEntity>(kUser, defaultValue: UserEntity.empty());

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
      body: BlocListener<ProfileBloc, ProfileState>(
        listener: (context, state) {
          state.maybeMap(
            optimisticUpdate: (_) {
              // Refresh UI when optimistic update occurs
              _refreshUserData();
            },
            successUpdated: (_) {
              // Refresh UI when update is confirmed
              _refreshUserData();
            },
            failure: (_) {
              // Refresh UI when failure occurs (rollback happened)
              _refreshUserData();
            },
            orElse: () {},
          );
        },
        child: SingleChildScrollView(
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
      ),
    );
  }
}