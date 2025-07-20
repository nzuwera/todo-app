import 'package:flutter/material.dart';
import 'package:todo_app/utils/constants/colors.dart';

class TOutlinedButtonTheme {
  TOutlinedButtonTheme._();

  static ButtonStyle buttonStyle(BuildContext context) {
    return OutlinedButton.styleFrom(
      elevation: 0,
      foregroundColor: TColors.textOutlinedButtonPrimary(context),
      backgroundColor: TColors.light,
      side: BorderSide(
        color: TColors.primaryButton(context).withValues(alpha: 0.5),
      ),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14)),
      textStyle: TextStyle(
        fontSize: 16,
        color: TColors.textOutlinedButtonPrimary(context),
        fontWeight: FontWeight.w600,
      ),
      padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 20),
    );
  }

  static OutlinedButtonThemeData buildButtonTheme({
    required BuildContext context,
  }) => OutlinedButtonThemeData(style: buttonStyle(context));
}
