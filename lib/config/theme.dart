import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:prezza/config/custom_colors.dart';
import 'package:sizer/sizer.dart';

final Map<int, Color> colorCodes = {
  50: const Color.fromRGBO(222, 80, 79, .1),
  100: const Color.fromRGBO(222, 80, 79, .2),
  200: const Color.fromRGBO(222, 80, 79, .3),
  300: const Color.fromRGBO(222, 80, 79, .4),
  400: const Color.fromRGBO(222, 80, 79, .5),
  500: const Color.fromRGBO(222, 80, 79, .6),
  600: const Color.fromRGBO(222, 80, 79, .7),
  700: const Color.fromRGBO(222, 80, 79, .8),
  800: const Color.fromRGBO(222, 80, 79, .9),
  900: const Color.fromRGBO(222, 80, 79, 1),
};

final MaterialColor customRed = MaterialColor(0xFFDE504F, colorCodes);

final ThemeData globalTheme = ThemeData(
  primarySwatch: customRed,
  scaffoldBackgroundColor: floralWhite,
  radioTheme: RadioThemeData(
    fillColor: WidgetStatePropertyAll(primary),
    overlayColor: WidgetStatePropertyAll(primary),
  ),
  searchBarTheme: SearchBarThemeData(
    elevation: const WidgetStatePropertyAll(0),
    backgroundColor: WidgetStatePropertyAll(alabaster),
  ),
  toggleButtonsTheme: ToggleButtonsThemeData(
    selectedColor: Colors.blue,
    fillColor: Colors.lightBlue.shade50,
    textStyle: const TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.bold,
      color: Colors.black,
    ),
  ),
  textTheme: GoogleFonts.onestTextTheme(),
  dividerTheme: const DividerThemeData(thickness: 2),
  appBarTheme: AppBarTheme(
    elevation: 0,
    iconTheme: IconThemeData(color: primary),
    foregroundColor: Colors.black,
    backgroundColor: Colors.transparent,
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      backgroundColor: const Color(0xFFDE504F),
      minimumSize: Size(80.w, 50),
      maximumSize: Size(80.w, 50),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      foregroundColor: const Color.fromARGB(255, 249, 233, 203),
      textStyle: TextStyle(
        fontSize: 15.sp,
        fontWeight: FontWeight.w500,
      ),
    ),
  ),
  textButtonTheme: TextButtonThemeData(
    style: TextButton.styleFrom(
      minimumSize: Size(80.w, 60),
      maximumSize: Size(80.w, 60),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      foregroundColor: primary,
      backgroundColor: lightCream,
    ),
  ),
  useMaterial3: false,
  inputDecorationTheme: InputDecorationTheme(
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(10),
      borderSide: const BorderSide(
        color: Colors.transparent,
      ),
    ),
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(10),
      borderSide: const BorderSide(
        color: Colors.transparent,
      ),
    ),
    disabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(10),
      borderSide: const BorderSide(
        color: Colors.transparent,
      ),
    ),
    fillColor: alabaster,
    hintStyle: TextStyle(
      fontWeight: FontWeight.w400,
      fontSize: 14.sp,
    ),
    filled: true,
  ),
  dropdownMenuTheme: DropdownMenuThemeData(
    inputDecorationTheme: InputDecorationTheme(
      filled: true,
      fillColor: alabaster,
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
        borderSide: BorderSide.none,
      ),
      prefixIconColor: primary,
    ),
  ),
  listTileTheme: ListTileThemeData(
    iconColor: primary,
  ),
  switchTheme: SwitchThemeData(
    trackColor: WidgetStatePropertyAll(lightCream),
    thumbColor: WidgetStatePropertyAll(primary),
  ),
  checkboxTheme: CheckboxThemeData(
    checkColor: WidgetStatePropertyAll(lightCream),
    // overlayColor: WidgetStatePropertyAll(primary),
    // fillColor: WidgetStatePropertyAll(primary),
    // splashRadius: 20,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(4),
    ),
  ),
);

final ThemeData darkTheme = globalTheme.copyWith();
final ThemeData lightTheme = globalTheme.copyWith();
