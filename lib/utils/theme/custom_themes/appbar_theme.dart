import 'package:flutter/material.dart';
import 'package:todo_app/utils/constants/colors.dart';

class TAppBarTheme {
  TAppBarTheme._();


  static AppBarTheme appBarTheme({
    required BuildContext context
  }) =>
      AppBarTheme(
        elevation: 0,
        centerTitle: false,
        scrolledUnderElevation: 0,
        backgroundColor: Colors.transparent,
        surfaceTintColor: Colors.transparent,
        iconTheme: IconThemeData(color: TColors.iconPrimary(context)),
        actionsIconTheme: IconThemeData(color: TColors.iconPrimary(context)),
        titleTextStyle: TextStyle(
          fontSize: 18.0,
          fontWeight: FontWeight.w600,
          color: TColors.iconPrimary(context),
        ),
      );
}
