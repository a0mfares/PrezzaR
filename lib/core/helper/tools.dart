import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:prezza/config/custom_colors.dart';
import 'package:prezza/core/service/hive_storage.dart';
import 'package:prezza/features/auth/domain/entities/user_entity.dart';
import 'package:prezza/features/category/domain/entities/category_entity.dart';
import 'package:prezza/features/profile/domain/entities/businessdetails_entity.dart';
import 'package:prezza/prezza_page.dart';
import 'package:sizer/sizer.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../features/location/domain/entities/current_location_entity.dart';
import '../../generated/l10n.dart';

const int success = 3;
const int error = 2;

final tr = S.of(appRoute.navigatorKey.currentContext!);

final ctx = appRoute.navigatorKey.currentContext!;
SizedBox vSpace(double h) => SizedBox(height: h.h);
SizedBox hSpace(double w) => SizedBox(width: w.w);

Future<String> accessToken() async =>
    (await const FlutterSecureStorage().read(key: 'sadad-pay'))!;

bool get ifNewUser => usr.user.user_type == 'NotSet';

bool ifUserAuthenticated() => HiveStorage.get(kUser) != null;

BuildContext currentCTX = appRoute.navigatorKey.currentContext!;

enum SortBy {
  distance_sort,
  rating_to_high_sort,
  rating_to_low_sort,
}

Map<String, dynamic> orderType = {
  'pickup': tr.pickup,
  'delivery': tr.delivery,
};

final currentLocation = HiveStorage.get<CurrentLocationEntity>(kCurLocation);

List<String> get sortItems => SortBy.values.map((e) {
      if (e == SortBy.distance_sort) {
        return tr.sortDistance;
      } else if (e == SortBy.rating_to_high_sort) {
        return tr.sortHighToLow;
      } else {
        return tr.sortLowToHigh;
      }
    }).toList();

String sortKey(String title) {
  if (title == tr.sortDistance) {
    return SortBy.distance_sort.name;
  } else if (title == tr.sortHighToLow) {
    return SortBy.rating_to_high_sort.name;
  } else {
    return SortBy.rating_to_low_sort.name;
  }
}

CurrentLocationEntity currentLoc = HiveStorage.get(kCurLocation) ??
    CurrentLocationEntity(latitude: 0, longitude: 0, locationName: '');

String convertDurationToHHMM(String durationText) {
  int hours = 0;
  int minutes = 0;

  // Extract numbers from duration text
  RegExp regex = RegExp(r'(\d+)\s*hour');
  Match? hourMatch = regex.firstMatch(durationText);
  if (hourMatch != null) {
    hours = int.parse(hourMatch.group(1)!);
  }

  regex = RegExp(r'(\d+)\s*min');
  Match? minuteMatch = regex.firstMatch(durationText);
  if (minuteMatch != null) {
    minutes = int.parse(minuteMatch.group(1)!);
  }

  // Format to HH:MM
  return '${hours.toString().padLeft(2, '0')}:${minutes.toString().padLeft(2, '0')}';
}

List<String> generateDistances(int start, int end, int step) {
  return List.generate(((end - start) ~/ step) + 1,
      (index) => tr.km('${start + (index * step)}'));
}

// List<String> distances = [
//   tr.km(1),
//   tr.km(5),
//   tr.km(10),
//   tr.km(15),
//   tr.km(20),
//   tr.km(25),
//   tr.km(30),
//   tr.km(35),
//   tr.km(40),
//   tr.km(45),
//   tr.km(50),
//   tr.km(55),
//   tr.km(60),
//   tr.km(65),
//   tr.km(70),
//   tr.km(75),
//   tr.km(80),
//   tr.km(85),
//   tr.km(90),
//   tr.km(95),
//   tr.km(100),
//   tr.km(105),
//   tr.km(110),
//   tr.km(115),
//   tr.km(120),
//   tr.km(125),
//   tr.km(130),
//   tr.km(135),
// ];

List<String> operatingHour = [
  tr.wholeWeak,
  tr.openNow,
];

Map<String, dynamic> operationHourByKey = {
  tr.wholeWeak: '24hours',
  tr.openNow: 'open_now',
};
String get currentLocal => HiveStorage.get(kLocale);
String bearerToken = 'Bearer ${usr.tokens.access}';
String bearerTokenCarApi = 'Bearer ${HiveStorage.get(kCarApitoken)}';
Widget get defLoadingCenter => Center(
      child: LoadingAnimationWidget.twistingDots(
          leftDotColor: lightCoral, rightDotColor: lightCream, size: 20),
    );
Widget get defLoading => LoadingAnimationWidget.twistingDots(
    leftDotColor: lightCoral, rightDotColor: lightCream, size: 20);
ColorScheme get tcolor =>
    Theme.of(appRoute.navigatorKey.currentContext!).colorScheme;
TextTheme get tstyle =>
    Theme.of(appRoute.navigatorKey.currentContext!).textTheme;

UserEntity get usr => HiveStorage.get<UserEntity?>(kUser) ?? UserEntity.empty();
BusinessDetailsEntity get business =>
    HiveStorage.get<BusinessDetailsEntity>(kBusiness);
List<CategoryEntity> get categories =>
    HiveStorage.get<List<CategoryEntity>>(kCategories);
bool get isLocationSelected => HiveStorage.get(kCurLocation) != null;
bool get isCustomer => usr.user.user_type == UserType.customer.name;

void launchPhoneDialer(String phoneNumber) async {
  final url = 'tel:$phoneNumber';
  if (await launchUrl(Uri.parse(url))) {
  } else {
    throw 'Could not launch $url';
  }
}

String formatDuration(Duration duration) {
  // Extract hours and minutes
  int hours = duration.inHours;
  int minutes = duration.inMinutes % 60;

  // Format hours and minutes as two-digit numbers
  String formattedDuration =
      '${hours.toString().padLeft(2, '0')}:${minutes.toString().padLeft(2, '0')}';

  return formattedDuration;
}

Duration toDuration(String duration) {
  // Extract hours and minutes
  int hours = int.parse(duration.split(':')[0]);
  int minutes = int.parse(duration.split(':')[1]);

  return Duration(hours: hours, minutes: minutes);
}

enum UserType { vendor, customer }

void logWithColor(String message, {String color = 'reset'}) {
  String coloredMessage;

  switch (color) {
    case 'red':
      coloredMessage = '\x1B[31m$message\x1B[0m'; // Red
      break;
    case 'green':
      coloredMessage = '\x1B[32m$message\x1B[0m'; // Green
      break;
    case 'yellow':
      coloredMessage = '\x1B[33m$message\x1B[0m'; // Yellow
      break;
    case 'blue':
      coloredMessage = '\x1B[34m$message\x1B[0m'; // Blue
      break;
    case 'magenta':
      coloredMessage = '\x1B[35m$message\x1B[0m'; // Magenta
      break;
    case 'cyan':
      coloredMessage = '\x1B[36m$message\x1B[0m'; // Cyan
      break;
    case 'white':
      coloredMessage = '\x1B[37m$message\x1B[0m'; // White
      break;
    default:
      coloredMessage = message; // No color
  }

  log(coloredMessage); // Logs the colored message
}

class CardMonthInputFormatter extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(
      TextEditingValue oldValue, TextEditingValue newValue) {
    String text = newValue.text;

    // Remove any existing slashes to clean up input
    text = text.replaceAll('/', '');

    // Limit to MMYY (4 characters max without slash)
    if (text.length > 4) {
      text = text.substring(0, 4);
    }

    // Add slash after MM (two digits)
    if (text.length > 2) {
      text = '${text.substring(0, 2)}/${text.substring(2, text.length)}';
    }

    return TextEditingValue(
      text: text,
      selection: TextSelection.collapsed(offset: text.length),
    );
  }
}
