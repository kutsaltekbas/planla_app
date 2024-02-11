import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../app_theme.dart';

class AppThemeLight extends AppTheme {
  static AppThemeLight? _instance;
  static AppThemeLight get instance => _instance ??= AppThemeLight._init();

  AppThemeLight._init();

  @override
  ThemeData get theme => ThemeData(
        colorScheme: _colorSchemeLight,
        textTheme: _textThemeLight,
        scaffoldBackgroundColor: _colorSchemeLight.background,
        appBarTheme: _appBarTheme,
        inputDecorationTheme: _inputDecorationTheme,
        elevatedButtonTheme: _elevatedButtonTheme,
        outlinedButtonTheme: _outlinedButtonTheme,
        timePickerTheme: _timePickerTheme,
        fontFamily: "Ubuntu",
      );
  /* Color Palette For The App. */

  ColorScheme get _colorSchemeLight => const ColorScheme(
        brightness: Brightness.light,
        primary: Color(0xff1779d3), //
        primaryContainer: Color(0xffffbb54), //
        secondary: Color(0xffE7912D), //
        onSecondary: Color(0xffffffff),
        onPrimary: Color(0xffffffff), //
        background: Color(0xff24786D), //
        onBackground: Color(0xff102E53), //
        error: Color(0xffff5656), //
        errorContainer: Color(0xFFFCFF57), //
        onError: Color(0xffffffff),
        surface: Color(0xffCDD1D0),
        onSurface: Color(0xff596372), //
        tertiary: Color(0xff515BF6), //
        tertiaryContainer: Color(0xff59C08D), //
        onTertiary: Color(0xffABB3BB), //
        onSurfaceVariant: Color(0xff525978), //
        secondaryContainer: Color(0xFFE5E5E5), //
        onTertiaryContainer: Color(0xffDADADC), //
        onErrorContainer: Color(0xffffcc86), //
        inversePrimary: Color(0xff40a3ff),
        inverseSurface: Color(0xff797C7B),
        onPrimaryContainer: Color(0xff024786),
        onInverseSurface: Color(0xffDFE4EC),
      );

  TimePickerThemeData get _timePickerTheme =>
      TimePickerThemeData(backgroundColor: _colorSchemeLight.onSecondary);
  /* Text Theme For The App */

  TextTheme get _textThemeLight => TextTheme(
        displayLarge: TextStyle(
          fontSize: 32.sp,
          fontWeight: FontWeight.bold,
          letterSpacing: 0,
          color: _colorSchemeLight.onBackground,
        ),
        displayMedium: TextStyle(
          fontSize: 28.sp,
          fontWeight: FontWeight.w600,
          letterSpacing: -0.5,
          color: _colorSchemeLight.onBackground,
        ),
        displaySmall: TextStyle(
          fontSize: 24.sp,
          fontWeight: FontWeight.w600,
          color: _colorSchemeLight.onBackground,
        ),
        headlineLarge: TextStyle(
          fontSize: 18.sp,
          fontWeight: FontWeight.w500,
          color: _colorSchemeLight.onPrimary,
        ),
        headlineMedium: TextStyle(
          fontSize: 16.sp,
          fontWeight: FontWeight.w500,
          color: _colorSchemeLight.onBackground,
        ),
        headlineSmall: TextStyle(
          fontSize: 14.sp,
          fontWeight: FontWeight.w500,
          color: _colorSchemeLight.onBackground,
        ),
        labelLarge: TextStyle(
          fontSize: 18.sp,
          fontWeight: FontWeight.w600,
          color: _colorSchemeLight.onBackground,
        ),
        labelMedium: TextStyle(
          fontSize: 15.sp,
          fontWeight: FontWeight.w500,
          color: _colorSchemeLight.onBackground,
        ),
        labelSmall: TextStyle(
          letterSpacing: 0,
          fontSize: 12.sp,
          fontWeight: FontWeight.w400,
          color: _colorSchemeLight.onBackground,
        ),
        bodyLarge: TextStyle(
          fontSize: 14.sp,
          fontWeight: FontWeight.w400,
          color: _colorSchemeLight.inverseSurface,
        ),
        bodyMedium: TextStyle(
          fontSize: 16.sp,
          fontWeight: FontWeight.w400,
          color: _colorSchemeLight.onPrimary,
        ),
        titleMedium: TextStyle(
          fontSize: 12.sp,
          fontWeight: FontWeight.w500,
          color: _colorSchemeLight.onBackground,
        ),
        titleSmall: TextStyle(
          fontSize: 10.sp,
          fontWeight: FontWeight.w500,
          color: _colorSchemeLight.onBackground,
        ),
      );

  /* Appbar Theme */

  AppBarTheme get _appBarTheme => AppBarTheme(
        backgroundColor: _colorSchemeLight.background,
        titleTextStyle: _textThemeLight.bodyMedium!
            .copyWith(color: _colorSchemeLight.onSurface),
      );

  /* Text Field Theme */

  InputDecorationTheme get _inputDecorationTheme => InputDecorationTheme(
        contentPadding: EdgeInsets.zero,
        focusColor: _colorSchemeLight.background,
        labelStyle: _textThemeLight.labelLarge!
            .copyWith(color: _colorSchemeLight.onBackground.withOpacity(0.4)),
        floatingLabelStyle: _textThemeLight.labelLarge!
            .copyWith(color: _colorSchemeLight.onBackground.withOpacity(0.4)),
        hintStyle: _textThemeLight.labelLarge!
            .copyWith(color: _colorSchemeLight.onBackground.withOpacity(0.3)),
        helperStyle: _textThemeLight.titleSmall!
            .copyWith(color: _colorSchemeLight.background),
        fillColor: _colorSchemeLight.secondaryContainer,
        prefixIconColor: _colorSchemeLight.background,
        suffixIconColor: _colorSchemeLight.background,
        errorStyle: _textThemeLight.titleSmall!
            .copyWith(color: _colorSchemeLight.error),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(color: _colorSchemeLight.error),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(color: _colorSchemeLight.error),
        ),
        border: UnderlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(color: _colorSchemeLight.surface, width: 1.w),
        ),
        enabledBorder: UnderlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(color: _colorSchemeLight.surface, width: 1.w),
        ),
        focusedBorder: UnderlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide:
              BorderSide(color: _colorSchemeLight.background, width: 1.w),
        ),
        disabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(color: _colorSchemeLight.surface),
        ),
      );

  /* Elevated Button Theme */

  ElevatedButtonThemeData get _elevatedButtonTheme => ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          foregroundColor: _colorSchemeLight.onPrimary,
          backgroundColor: _colorSchemeLight.background,
          shape: RoundedRectangleBorder(
            side: BorderSide.none,
            borderRadius: BorderRadius.circular(3),
          ),
          elevation: 0,
          textStyle: _textThemeLight.bodyLarge!.copyWith(
              color: _colorSchemeLight.onSecondary,
              fontWeight: FontWeight.w500),
        ),
      );
  OutlinedButtonThemeData get _outlinedButtonTheme => OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
          foregroundColor: _colorSchemeLight.onBackground,
          backgroundColor: Colors.transparent,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          side: BorderSide(width: 2, color: _colorSchemeLight.primary),
          textStyle: _textThemeLight.labelSmall,
        ),
      );
}
