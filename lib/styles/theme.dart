import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomTheme {
  static Color primaryLightColor = const Color(0xFF22775A);
  static Color onPrimaryLightColor = const Color(0xFF44566C);
  static Color secondaryLightColor = const Color(0xFF759F7E);
  static Color onSecondaryLightColor = const Color(0xFFe9edef);
  static Color tertiaryLightColor = const Color(0xFFEA9999);
  static Color errorLightColor = const Color(0xffFF3D57);
  static Color onErrorLightColor = Colors.white;
  static Color primaryLightContainerColor = const Color(0xFFF3EDE6);
  static Color secondaryLightContainerColor = const Color(0xFFCAE3C9);
  static Color tertiaryLightContainerColor = const Color(0xFFFEEBB0);
  //static Color textfieldFillColor = const Color(0xFFF3EDE6);
  static Color errorLightContainerColor = Colors.grey.shade500;
  static Color onErrorLightContainerColor = const Color(0xFF8a8e99); //ff6f778d
  static Color shadowLightColor = Colors.black26;

  static Color primaryDarkColor = const Color(0xff22775a);
  static Color onPrimaryDarkColor = const Color(0xFFe9edef);
  static Color secondaryDarkColor = const Color(0xff53bdeb);
  static Color onSecondaryDarkColor = const Color(0xff202c33);
  static Color tertiaryDarkColor = const Color(0xff22775a);
  static Color errorDarkColor = const Color(0xffba1a1a);
  static Color onErrorDarkColor = Colors.white;
  static Color primaryDarkContainerColor = const Color(0xFF111b21);
  static Color secondaryDarkContainerColor = const Color(0xff202c33);
  static Color tertiaryDarkContainerColor = const Color(0xff2a3942);
  //static Color textfieldFillColor = const Color(0xFFF3EDE6);
  static Color errorDarkContainerColor = Colors.grey.shade500;
  static Color onErrorDarkContainerColor = const Color(0xFF6F778D);
  static Color shadowDarkColor = Colors.black26;

  ThemeData lightTheme = ThemeData(
    primaryColor: primaryLightColor,
    canvasColor: primaryLightContainerColor,
    colorScheme: ColorScheme.light(
      primary: primaryLightColor,
      onPrimary: onPrimaryLightColor,
      secondary: secondaryLightColor,
      onSecondary: onSecondaryLightColor,
      tertiary: tertiaryLightColor,
      error: errorLightColor,
      onError: onErrorLightColor,
      primaryContainer: primaryLightContainerColor,
      secondaryContainer: secondaryLightContainerColor,
      tertiaryContainer: tertiaryLightContainerColor,
      errorContainer: errorLightContainerColor,
      onErrorContainer: onErrorLightContainerColor,
      shadow: shadowLightColor,
    ),
    scrollbarTheme: const ScrollbarThemeData().copyWith(thumbColor: WidgetStateProperty.all(primaryLightColor.withAlpha(40))),
    textTheme: TextTheme(
      titleSmall: GoogleFonts.roboto(color: onPrimaryLightColor, fontSize: 24.sp, fontWeight: FontWeight.w800),
      titleMedium: GoogleFonts.roboto(color: onPrimaryLightColor, fontSize: 32.sp, fontWeight: FontWeight.w800),
      titleLarge: GoogleFonts.roboto(color: onPrimaryLightColor, fontSize: 40.sp, fontWeight: FontWeight.w800),
      bodySmall: GoogleFonts.roboto(color: onPrimaryLightColor, fontSize: 16.sp, fontWeight: FontWeight.w900),
      bodyMedium: GoogleFonts.roboto(color: onPrimaryLightColor, fontSize: 24.sp, fontWeight: FontWeight.w600), //, height: 1.42
      bodyLarge: GoogleFonts.roboto(color: onPrimaryLightColor, fontSize: 32.sp, fontWeight: FontWeight.w600),
    ),
  );

  ThemeData darkTheme = ThemeData(
    primaryColor: primaryDarkColor,
    canvasColor: primaryDarkContainerColor,
    colorScheme: ColorScheme.dark(
      primary: primaryDarkColor,
      onPrimary: onPrimaryDarkColor,
      secondary: secondaryDarkColor,
      onSecondary: onSecondaryDarkColor,
      tertiary: tertiaryDarkColor,
      error: errorDarkColor,
      onError: onErrorDarkColor,
      primaryContainer: primaryDarkContainerColor,
      secondaryContainer: secondaryDarkContainerColor,
      tertiaryContainer: tertiaryDarkContainerColor,
      errorContainer: errorDarkContainerColor,
      onErrorContainer: onErrorDarkContainerColor,
      shadow: shadowDarkColor,
    ),
    scrollbarTheme: const ScrollbarThemeData().copyWith(thumbColor: WidgetStateProperty.all(primaryDarkColor.withAlpha(40))),
    textTheme: TextTheme(
      titleSmall: GoogleFonts.roboto(color: onPrimaryDarkColor, fontSize: 24.sp, fontWeight: FontWeight.w800),
      titleMedium: GoogleFonts.roboto(color: onPrimaryDarkColor, fontSize: 32.sp, fontWeight: FontWeight.w800),
      titleLarge: GoogleFonts.roboto(color: onPrimaryDarkColor, fontSize: 40.sp, fontWeight: FontWeight.w800),
      bodySmall: GoogleFonts.roboto(color: onPrimaryDarkColor, fontSize: 16.sp, fontWeight: FontWeight.w900),
      bodyMedium: GoogleFonts.roboto(color: onPrimaryDarkColor, fontSize: 24.sp, fontWeight: FontWeight.w600), //, height: 1.42
      bodyLarge: GoogleFonts.roboto(color: onPrimaryDarkColor, fontSize: 32.sp, fontWeight: FontWeight.w600),
    ),
  );
}

extension ColorExtensions on Color {
  Color darken([double amount = .1]) {
    final hsl = HSLColor.fromColor(this);
    final darkened = hsl.withLightness((hsl.lightness - amount).clamp(0.0, 1.0));
    return darkened.toColor();
  }

  Color lighten([double amount = .1]) {
    final hsl = HSLColor.fromColor(this);
    final lightened = hsl.withLightness((hsl.lightness + amount).clamp(0.0, 1.0));
    return lightened.toColor();
  }
}
