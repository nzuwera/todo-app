import 'package:flutter/material.dart';
import 'package:todo_app/utils/constants/colors.dart';

class TTextButtonTheme {
  TTextButtonTheme._();

  static TextButtonThemeData buildButtonTheme({
    required BuildContext context,
  }) => TextButtonThemeData(
    style: ElevatedButton.styleFrom(
      elevation: 0,
      foregroundColor: TColors.textButtonPrimary(context),
      backgroundColor: TColors.primaryBackground(context),
      disabledBackgroundColor: Colors.grey,
      disabledForegroundColor: Colors.grey,
      side: BorderSide(color: TColors.primaryButton(context)),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      textStyle: TextStyle(
        fontSize: 16,
        color: TColors.textButtonPrimary(context),
        fontWeight: FontWeight.w600,
      ),
      padding: const EdgeInsets.symmetric(vertical: 10),
    ),
  );
}
