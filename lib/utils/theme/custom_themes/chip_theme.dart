import 'package:flutter/material.dart';
import 'package:todo_app/utils/constants/colors.dart';

class TChipTheme {
  TChipTheme._();

  static ChipThemeData chipThemeData({
    required BuildContext context
  }) =>
      ChipThemeData(
        disabledColor: TColors.softGrey(context),
        selectedColor: TColors.darkerGrey(context),
        checkmarkColor: TColors.lightGrey(context),
        padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 12.0),
      );
}
