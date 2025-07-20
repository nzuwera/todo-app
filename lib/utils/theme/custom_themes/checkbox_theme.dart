import 'package:flutter/material.dart';
import 'package:todo_app/utils/constants/colors.dart';

class TCheckboxTheme {
  TCheckboxTheme._();

  static CheckboxThemeData checkboxThemeData({
    required BuildContext context,}) =>
      CheckboxThemeData(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
        checkColor: WidgetStateProperty.resolveWith((states) {
          if (states.contains(WidgetState.selected)) {
            return TColors.light;
          }
          return Colors.black;
        }),
        fillColor: WidgetStateProperty.resolveWith((states) {
          if (states.contains(WidgetState.selected)) {
            return TColors.info(context);
          }
          return Colors.transparent;
        }),
      );
}
