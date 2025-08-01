import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:prezza/core/helper/tools.dart';
import 'package:prezza/core/service/routes.gr.dart';
import 'package:prezza/features/auth/presentation/bloc/auth_bloc.dart';
import 'package:prezza/prezza_page.dart';

import '../../../../core/constants/assets.dart';
import '../../../../core/helper/widgets.dart';
import '../../../../core/service/hive_storage.dart';

class PrezzaDrawer extends StatelessWidget {
  const PrezzaDrawer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Drawer(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              vSpace(5),
              ListTile(
                leading: const CircleAvatar(
                  // radius: 70,
                  child: Icon(
                    Icons.person,
                  ),
                ),
                title: Text(
                  usr.user.first_name,
                  style: tstyle.headlineSmall,
                ),
              ),
              vSpace(5),
              const Divider(thickness: 2),
              ListTile(
                onTap: () {
                  appRoute.navigate(const PersonalInfoRoute());
                },
                leading: SvgPicture.asset(Assets.assetsImagesProfile),
                title: Text(tr.personalInfo),
                trailing: const Icon(Icons.arrow_forward_ios),
              ),
              const Divider(thickness: 2),
              ListTile(
                onTap: () {
                  appRoute.navigate(const NotificationRoute());
                },
                leading: SvgPicture.asset(Assets.assetsImagesNotification),
                title: Text(tr.notifications),
                trailing: const Icon(Icons.arrow_forward_ios),
              ),
              const Divider(thickness: 2),
              ListTile(
                onTap: () {
                  appRoute.navigate(const FavoritesRoute());
                },
                leading: SvgPicture.asset(Assets.assetsImagesFavorites),
                title: Text(tr.favorites),
                trailing: const Icon(Icons.arrow_forward_ios),
              ),
              const Divider(thickness: 2),
              ListTile(
                onTap: () {
                  appRoute.navigate(const InviteFriendRoute());
                },
                leading: SvgPicture.asset(Assets.assetsImagesInvite),
                title: Text(tr.inviteFriends),
                trailing: const Icon(Icons.arrow_forward_ios),
              ),
              const Divider(thickness: 2),
              ListTile(
                onTap: () {
                  appRoute.navigate(const PrezzaSettingsRoute());
                },
                leading: SvgPicture.asset(Assets.assetsImagesSetting),
                title: Text(tr.settings),
                trailing: const Icon(Icons.arrow_forward_ios),
              ),
              const Divider(thickness: 2),
              ListTile(
                onTap: () {
                  appRoute.navigate(const FeedbackRoute());
                },
                leading: SvgPicture.asset(Assets.assetsImagesFeedback),
                title: Text(tr.feedback),
                trailing: const Icon(Icons.arrow_forward_ios),
              ),
              const Divider(thickness: 2),
              ListTile(
                onTap: () {
                  appRoute.navigate(const HelpRoute());
                },
                leading: SvgPicture.asset(Assets.assetsImagesHelp),
                title: Text(tr.help),
                trailing: const Icon(Icons.arrow_forward_ios),
              ),
              const Divider(thickness: 2),
              ListTile(
                leading: SvgPicture.asset(Assets.assetsImagesAbout),
                title: Text(tr.about),
                trailing: const Icon(Icons.arrow_forward_ios),
              ),
              const Divider(thickness: 2),
              ListTile(
                leading: const Icon(Icons.delete_forever_outlined),
                title: const Text("Delete account"),
                trailing: const Icon(Icons.arrow_forward_ios),
                onTap: () {
                  showDialogPrezza(
                      context: context,
                      title: "Are you sure ?",
                      onTap: () async {
                        context
                            .read<AuthBloc>()
                            .add(const AuthEvent.deleteAccount());
                        appRoute.removeLast();
                        HiveStorage.set(kUser, null);
                        appRoute.navigate(LoginRoute());
                      },
                      showCancel: true);
                },
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
                      appRoute.navigate(LoginRoute());
                    },
                    showCancel: true,
                  );
                },
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
