import 'package:flutter/material.dart';
import 'package:todo_app/utils/constants/colors.dart';
import 'package:todo_app/utils/constants/sizes.dart';

class TElevatedButtonTheme {
  TElevatedButtonTheme._();

  static ButtonStyle buttonStyle(BuildContext context) {
    return ElevatedButton.styleFrom(
      elevation: 0,
      foregroundColor: TColors.textButtonPrimary(context),
      backgroundColor: TColors.primaryButton(context),
      disabledBackgroundColor: Colors.grey,
      disabledForegroundColor: Colors.grey,
      side: BorderSide(color: TColors.primaryButton(context)),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      textStyle: TextStyle(
        fontSize: TSizes.fontLg,
        fontWeight: FontWeight.w600,
      ),
      padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 20),
    );
  }

  static ElevatedButtonThemeData buildButtonTheme({
    required BuildContext context,
  }) => ElevatedButtonThemeData(style: buttonStyle(context));
}
