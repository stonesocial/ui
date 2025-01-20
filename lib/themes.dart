import 'package:dependencies/dependencies.dart';
import 'package:flutter/material.dart';

import 'res/app_colors.dart';
import 'res/app_fonts.dart';

class Themes {
  static List<PullDownButtonTheme> get _pullDownTheme => [
    PullDownButtonTheme(
      titleTheme: PullDownMenuTitleTheme(
        style: TextStyle(
          fontSize: 16,
          fontFamily: AppFonts.helveticaNeue.value,
        ),
      ),
    ),
  ];

  static ThemeData get lightTheme {
    return ThemeData(
      brightness: Brightness.light,
      primaryColor: AppColors.primary,
      fontFamily: AppFonts.helveticaNeue.value,
      cardColor: Colors.white,
      scaffoldBackgroundColor: AppColors.bg,
      colorScheme: const ColorScheme.light(
        primary: AppColors.primary,
        secondary: Colors.white,
        onSecondary: AppColors.bgDark,
        surface: AppColors.surface,
        onTertiary: AppColors.primary,
      ),
      cardTheme: const CardTheme(
        color: Colors.white,
        shadowColor: Colors.black38,
        surfaceTintColor: Colors.transparent,
      ),
      popupMenuTheme: const PopupMenuThemeData(
        elevation: .7,
        color: Colors.white,
      ),
      bottomSheetTheme: const BottomSheetThemeData(
        backgroundColor: Colors.white,
        surfaceTintColor: Colors.transparent,
      ),
      dividerTheme: DividerThemeData(color: AppColors.primary.withValues(alpha: .1)),
      textSelectionTheme: const TextSelectionThemeData(
        cursorColor: AppColors.primary,
        selectionColor: Colors.grey,
        selectionHandleColor: AppColors.primary,
      ),
      extensions: _pullDownTheme,
    );
  }

  static ThemeData get darkTheme {
    return ThemeData(
      brightness: Brightness.dark,
      primaryColor: Colors.white,
      fontFamily: AppFonts.helveticaNeue.value,
      cardColor: AppColors.bgDark,
      scaffoldBackgroundColor: AppColors.bgDark,
      colorScheme: const ColorScheme.dark(
        primary: Colors.white,
        secondary: AppColors.primary,
        onSecondary: Colors.white,
        onSurface: AppColors.primary,
        surface: Colors.white,
        onTertiary: AppColors.cardDark,
      ),
      cardTheme: const CardTheme(
        color: AppColors.cardDark,
        shadowColor: Colors.white38,
        surfaceTintColor: Colors.transparent,
      ),
      popupMenuTheme: const PopupMenuThemeData(
        elevation: .7,
        color: AppColors.primary,
      ),
      bottomSheetTheme: const BottomSheetThemeData(
        backgroundColor: AppColors.bgDark,
        surfaceTintColor: Colors.transparent,
      ),
      dividerTheme: DividerThemeData(color: Colors.white.withValues(alpha: .1)),
      textSelectionTheme: const TextSelectionThemeData(
        cursorColor: Colors.white,
        selectionColor: Colors.grey,
        selectionHandleColor: Colors.white,
      ),
      extensions: _pullDownTheme,
    );
  }
}
