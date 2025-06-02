import 'package:flutter/material.dart';

import '../../../config/custom_colors.dart';

class PrezzaBtn extends StatelessWidget {
  const PrezzaBtn({
    super.key,
    required this.title,
    this.icon,
    required this.onTap,
  });
  final String title;
  final Widget? icon;
  final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onTap,
      leading: CircleAvatar(
        backgroundColor: lightCream,
        child: icon ??
            Icon(
              Icons.add,
              color: primary,
            ),
      ),
      title: Text(title),
    );
  }
}
