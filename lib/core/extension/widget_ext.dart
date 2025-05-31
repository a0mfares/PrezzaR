import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:prezza/config/custom_colors.dart';
import 'package:prezza/core/helper/tools.dart';
import 'package:prezza/prezza_page.dart';
import 'package:search_choices/search_choices.dart';
import 'package:sizer/sizer.dart';

import '../constants/assets.dart';

extension CustomTextField on TextField {
  Container prezaa({
    EdgeInsetsGeometry? margin,
    String? label,
    TextStyle? style,
    double? spaceBetween,
  }) {
    return Container(
      margin: margin,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (label != null) ...[
            Text(
              label,
              style: style ?? tstyle.bodyLarge,
            )
          ],
          vSpace(spaceBetween ?? 0.5),
          this
        ],
      ),
    );
  }
}

extension ButtonSize on ButtonStyleButton {
  Container size({
    EdgeInsetsGeometry? margin,
  }) {
    return Container(
      margin: margin,
      child: this,
    );
  }
}

extension CustomTextFormField on TextFormField {
  Container prezaa({
    EdgeInsetsGeometry? margin,
    String? label,
    TextStyle? style,
    double? spaceBetween,
  }) {
    return Container(
      margin: margin,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (label != null) ...[
            Text(
              label,
              style: style ?? tstyle.bodyLarge,
            )
          ],
          vSpace(spaceBetween ?? 0.5),
          this
        ],
      ),
    );
  }
}

extension CustomDropDown on DropdownButtonFormField {
  Container prezaa({
    EdgeInsetsGeometry? margin,
    String? label,
    TextStyle? style,
    double? spaceBetween,
  }) {
    return Container(
      margin: margin,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (label != null) ...[
            Text(
              label,
              style: style ?? tstyle.bodyLarge,
            )
          ],
          vSpace(spaceBetween ?? 0.5),
          this
        ],
      ),
    );
  }
}

extension MarginTxt on Text {
  Container margin({required EdgeInsetsGeometry margin}) {
    return Container(
      margin: margin,
      child: this,
    );
  }
}

extension AppBarLeading on AppBar {
  AppBar prezzaLeading({VoidCallback? onTap, bool canBack = true}) {
    return AppBar(
      title: title,
      backgroundColor: backgroundColor,
      toolbarHeight: toolbarHeight,
      actions: actions,
      shape: shape,
      elevation: elevation,
      bottom: bottom,
      leadingWidth: 100,
      leading: canBack
          ? Padding(
              padding: const EdgeInsets.all(5),
              child: InkWell(
                onTap: onTap ??
                    () {
                      appRoute.back();
                      appRoute.removeLast();
                    },
                child: CircleAvatar(
                  backgroundColor: lightCream,
                  child: const Icon(Icons.arrow_back),
                ),
              ),
            )
          : leading,
    );
  }
}

extension MarginRow on Row {
  Container margin({required EdgeInsetsGeometry margin}) {
    return Container(
      margin: margin,
      child: this,
    );
  }
}

extension PrezzaDropdown on SearchChoices {
  Container prezza({EdgeInsetsGeometry? margin}) {
    return Container(
      margin: margin,
      width: 100.w,
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: alabaster,
        borderRadius: BorderRadius.circular(
          15,
        ),
      ),
      child: this,
    );
  }
}

extension MarginColumn on Column {
  Container margin({required EdgeInsetsGeometry margin}) {
    return Container(
      margin: margin,
      child: this,
    );
  }
}

extension CheckBoxListTilePrezza on CheckboxListTile {
  CheckboxListTile prezzaCheckBox({ListTileControlAffinity? side}) {
    return CheckboxListTile(
      value: value,
      title: title,
      onChanged: onChanged,
      activeColor: primary,
      side: BorderSide(color: primary, width: 2),
      controlAffinity: side ?? ListTileControlAffinity.leading,
    );
  }
}

extension CheckBoxPrezza on Checkbox {
  Checkbox prezzaCheckBox() {
    return Checkbox(
      value: value,
      onChanged: onChanged,
      side: BorderSide(color: primary, width: 2),
      activeColor: primary,
    );
  }
}

extension PrezzaListtile on ListTile {
  Container prezza({EdgeInsetsGeometry? margin, EdgeInsetsGeometry? padding}) {
    return Container(
      padding:
          padding ?? const EdgeInsets.symmetric(horizontal: 20, vertical: 13),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: lightCream,
      ),
      margin: margin,
      child: this,
    );
  }
}

extension PrezzaCachedImage on CachedNetworkImage {
  CachedNetworkImage prezzaImage({double? width, double? height}) {
    return CachedNetworkImage(
      imageUrl: imageUrl,
      fit: BoxFit.cover,
      placeholder: (context, er) {
        return Image.asset(
          Assets.assetsImagesIconTest,
          fit: BoxFit.cover,
          width: width ?? 150,
          height: height,
        );
      },
      errorWidget: (a, b, c) {
        return Image.asset(
          Assets.assetsImagesIconTest,
          fit: BoxFit.cover,
          width: width ?? 150,
          height: height,
        );
      },
    );
  }
}

extension BadgeBtn on CircleAvatar {
  InkWell badgeBtn({required int count, Color? bgColor, Color? iconColor}) {
    return InkWell(
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
        // padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            // Main button

            CircleAvatar(
              backgroundColor: bgColor,
              radius: 30,
              child: SvgPicture.asset(
                Assets.assetsImagesShoppingCart,
                width: 25,
                colorFilter: iconColor != null
                    ? ColorFilter.mode(iconColor, BlendMode.srcIn)
                    : null,
              ),
            ),

            // Badge
            Positioned(
              right: -10,
              top: -10,
              child: Container(
                padding: const EdgeInsets.all(10),
                // margin: const EdgeInsets.all(7),
                decoration: BoxDecoration(
                  color: rustyRed,
                  shape: BoxShape.circle,
                ),
                child: Text(
                  count.toString(),
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
