import 'package:flutter/material.dart';
import 'package:todo_app/utils/constants/colors.dart';

class TBottomSheetTheme {
  TBottomSheetTheme._();

  static BottomSheetThemeData bottomSheetThemeData({
    required BuildContext context
  }) =>
      BottomSheetThemeData(
        showDragHandle: true,
        backgroundColor: TColors.primaryBackground(context),
        modalBackgroundColor: TColors.primaryBackground(context),
        constraints: const BoxConstraints(minWidth: double.infinity),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      );

}
