import 'package:flutter/material.dart';
import 'package:todo_app/utils/constants/colors.dart';
import 'package:todo_app/utils/theme/custom_themes/appbar_theme.dart';
import 'package:todo_app/utils/theme/custom_themes/bottom_sheet_theme.dart';
import 'package:todo_app/utils/theme/custom_themes/checkbox_theme.dart';
import 'package:todo_app/utils/theme/custom_themes/chip_theme.dart';
import 'package:todo_app/utils/theme/custom_themes/elevated_button_theme.dart';
// import 'package:todo_app/utils/theme/custom_themes/icon_data_theme.dart';
import 'package:todo_app/utils/theme/custom_themes/outlined_button_theme.dart';
import 'package:todo_app/utils/theme/custom_themes/text_field_theme.dart';
import 'package:todo_app/utils/theme/custom_themes/text_theme.dart';

class TAppTheme {
  TAppTheme._();

  static ThemeData _buildTheme(BuildContext context, Brightness brightness) {

    // build a seed scheme (or fromSwatch, fromSeed, etc.)
    final lightScheme = ColorScheme.light(
      surface: TColors.light,
      primary: TColors.primary(context),
      secondary: TColors.secondary(context),
      brightness: brightness,
    );

    final darkScheme = ColorScheme.dark(
      surface: TColors.dark,
      primary: TColors.primary(context),
      secondary: TColors.secondary(context),
      brightness: brightness,
    );

    // inject your custom background into the scheme

    return ThemeData(
      useMaterial3: true,
      fontFamily: 'Poppins',
      colorScheme: Brightness.light == brightness ? lightScheme : darkScheme,
      // ← drives most surfaces now
      scaffoldBackgroundColor: TColors.defaultBackground(context),
      // ← explicit fallback
      appBarTheme: TAppBarTheme.appBarTheme(context: context),
      bottomSheetTheme: TBottomSheetTheme.bottomSheetThemeData(
        context: context,
      ),
      textTheme: TTextTheme.buildTextTheme(context: context),
      chipTheme: TChipTheme.chipThemeData(context: context),
      elevatedButtonTheme: TElevatedButtonTheme.buildButtonTheme(
        context: context,
      ),
      outlinedButtonTheme: TOutlinedButtonTheme.buildButtonTheme(
        context: context,
      ),
      checkboxTheme: TCheckboxTheme.checkboxThemeData(context: context),
      // iconTheme: TIconTheme.buildTheme(context: context),
      inputDecorationTheme: TTextFieldTheme.buildTextTheme(context: context),
    );
  }

  static ThemeData lightTheme(BuildContext context) =>
      _buildTheme(context, Brightness.light);

  static ThemeData darkTheme(BuildContext context) =>
      _buildTheme(context, Brightness.dark);
}
