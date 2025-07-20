import "package:flutter/material.dart";
import "package:todo_app/utils/constants/colors.dart";

class TTextTheme {
  TTextTheme._();

  static TextTheme buildTextTheme({required BuildContext context}) => TextTheme(
    headlineLarge: TextStyle(fontSize: 32.0, fontWeight: FontWeight.bold, color: TColors.textDefault(context)),
    headlineMedium: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold, color: TColors.textDefault(context)),
    headlineSmall: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold, color: TColors.textDefault(context)),

    titleLarge: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w600, color: TColors.textDefault(context)),
    titleMedium: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w500, color: TColors.textDefault(context)),
    titleSmall: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w400, color: TColors.textDefault(context)),

    bodyLarge: TextStyle(fontSize: 14.0, fontWeight: FontWeight.w500, color: TColors.textDefault(context)),
    bodyMedium: TextStyle(fontSize: 14.0, fontWeight: FontWeight.normal, color: TColors.textDefault(context)),
    bodySmall: TextStyle(fontSize: 14.0, fontWeight: FontWeight.w500, color: TColors.textDefault(context).withValues(alpha: 0.6)),

    labelLarge: TextStyle(fontSize: 12.0, fontWeight: FontWeight.normal, color: TColors.textDefault(context)),
    labelMedium: TextStyle(fontSize: 12.0, fontWeight: FontWeight.normal, color: TColors.textDefault(context).withValues(alpha: 0.6)),
  );
}
