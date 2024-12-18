import 'package:dependencies/dependencies.dart';
import 'package:flutter/material.dart';
import 'ui.dart';

extension ThemeOfContext on BuildContext {
  ThemeData get theme => Theme.of(this);

  MediaQueryData get mediaQuery => MediaQuery.of(this);

  bool get isDark => theme.brightness == Brightness.dark;

  bool get platformDark => mediaQuery.platformBrightness == Brightness.dark;

  Color get darkGrey => isDark ? Colors.grey.shade900 : Colors.grey.shade700;
  Color get lightGrey => isDark ? AppColors.cardDark : const Color(0xFFF0F0F0);
  Color get greyShade200 => isDark ? const Color(0xFF444444) : const Color(0xFFF0F0F0);
  Color get greyShade400 => isDark ? Colors.grey.shade900 : Colors.grey.shade400;
  Color get greyShade300 => isDark ? Colors.grey.shade900 : Colors.grey.shade300;

  Color get surfaceColor => theme.colorScheme.surface;
  Color get surface87 => surfaceColor.withOpacity(.87);

  Color get primaryColor => theme.primaryColor;
  Color get primary87 => primaryColor.withOpacity(.87);

  Color get lightPrimary => primaryColor.withOpacity(.06);
  Color get snackBarColor => isDark ? AppColors.bg : AppColors.bgDark;

  Widget logo({double? size, bool dark = false}) => SvgPicture.asset(dark || isDark ? AppImages.logoDark : AppImages.logo, width: size ?? 80);
  Widget branding([double? size]) => SvgPicture.asset(isDark ? AppImages.brandingDark : AppImages.branding, width: size ?? 80);
}

