import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:prezza/config/custom_colors.dart';
import 'package:prezza/core/extension/widget_ext.dart';
import 'package:prezza/prezza_page.dart';

import '../../../../core/helper/tools.dart';

@RoutePage()
class PrezzaSettingsPage extends StatefulWidget {
  const PrezzaSettingsPage({super.key});

  @override
  State<PrezzaSettingsPage> createState() => _PrezzaSettingsPageState();
}

class _PrezzaSettingsPageState extends State<PrezzaSettingsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(tr.settings),
      ).prezzaLeading(),
      body: Column(
        children: [
          vSpace(5),
          const Divider(thickness: 1),
          Visibility(
            // visible: ,
            child: SwitchListTile(
              value: false,
              inactiveThumbColor: lightCoral,
              onChanged: (v) {},
              activeColor: primary,
              title: Text(tr.orderUpdate),
              subtitle: Text(tr.orderUpdateSubTitle),
            ),
          ),
          const Divider(),
          vSpace(2),
          SwitchListTile(
            value: true,
            inactiveThumbColor: lightCoral,
            onChanged: (v) {},
            activeColor: primary,
            title: Text(tr.promotions),
            subtitle: Text(tr.promotionsSubTitle),
          ),
          const Divider(),
          vSpace(2),
          SwitchListTile(
            value: false,
            inactiveThumbColor: lightCoral,
            onChanged: (v) {},
            activeColor: primary,
            title: Text(tr.appUpdates),
            subtitle: Text(tr.appUpdatesSubTitle),
          ),
          const Divider(),
          vSpace(2),
          ListTile(
            title: Text(tr.languagePreference),
            trailing: DropdownButton(
              hint: Text(currentLocal == 'ar' ? 'Arabic' : 'English'),
              items: const [
                DropdownMenuItem(
                  value: 'en',
                  child: Text('English'),
                ),
                DropdownMenuItem(
                  value: 'ar',
                  child: Text('Arabic'),
                ),
              ],
              onChanged: (v) {
                PrezzaPage.restartApp(v!);
              },
            ),
          ),
          const Divider(),
        ],
      ),
    );
  }
}
