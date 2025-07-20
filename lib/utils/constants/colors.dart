import 'package:flutter/material.dart';
import 'package:todo_app/utils/helpers/helper_functions.dart';

class TColors {
  // Private constructor to prevent instantiation
  TColors._();

  // Neutral Shades (evenly spaced, from darkest to lightest)
  static const Color _dark = Color(0xFF212121); // ~Grey 900
  static const Color _darkDarkerGrey = Color(0xFF424242); // ~Grey 800
  static const Color _lightDarkerGrey = Color(0xFF616161); // ~Grey 700
  static const Color _darkDarkGrey = Color(0xFF757575); // ~Grey 600
  static const Color _lightDarkGrey = Color(0xFF9E9E9E); // ~Grey 500 (mid grey)
  static const Color _darkSoftGrey = Color(0xFFBDBDBD); // ~Grey 400
  static const Color _lightSoftGrey = Color(0xFFE0E0E0); // ~Grey 300
  static const Color _darkLightGrey = Color(0xFFEEEEEE); // ~Grey 200
  static const Color _lightLightGrey = Color(0xFFF5F5F5); // ~Grey 100
  static const Color _light = Color(0xFFFAFAFA); // ~Grey 50

  // Basic Colors - Define color values directly
  static const Color _lightPrimary = _lightDarkerGrey;
  static const Color _darkPrimary = _darkDarkerGrey;
  static const Color _lightSecondary = _lightDarkGrey;
  static const Color _darkSecondary = _darkDarkGrey;
  static const Color _darkAccent = _darkInfo;
  static const Color _lightAccent = _lightInfo;

  // Text Colors
  static const Color _darkTextPrimary = _light;
  static const Color _lightTextPrimary = _dark;
  static const Color _darkTextSecondary = _darkLightGrey;
  static const Color _lightTextSecondary = _lightLightGrey;

  // Background Colors
  static const Color _darkPrimaryBackground = _dark;
  static const Color _lightPrimaryBackground = _light;

  // Background Containers
  static const Color _darkBackgroundContainerLight = Color(0xFF555555);
  static const Color _lightBackgroundContainerLight = Color(0xFFFAFAFA);
  static const Color _darkBackgroundContainerDark = Color(0xFFFAFAFA);
  static const Color _lightBackgroundContainerDark = Color(0xFF555555);

  // Buttons
  static const Color _darkButtonPrimary = _dark;
  static const Color _darkButtonSecondary = _darkSecondary;
  static const Color _darkButtonDisabled = _darkSoftGrey;
  static const Color _lightButtonDisabled = _lightSoftGrey;

  // Borders
  static const Color _darkBorderPrimary = _darkPrimary;
  static const Color _lightBorderPrimary = _lightPrimary;
  static const Color _darkBorderSecondary = _darkSecondary;
  static const Color _lightBorderSecondary = _lightSecondary;

  // Error & Validation
  static const Color _lightError = Color(0xFFFF4C4C);
  static const Color _darkError = Color(0xFFD32F2F);
  static const Color _darkSuccess = Color(0xFF66BB6A);
  static const Color _lightSuccess = Color(0xFF388E3C);
  static const Color _darkWarning = Color(0xFFFFC107);
  static const Color _lightWarning = Color(0xFFFFA000);
  static const Color _lightInfo = Color(0xFF64B5F6);
  static const Color _darkInfo = Color(0xFF1976D2);

  // Icons color getters
  static Color iconPrimary(BuildContext context) => THelperFunctions.isDarkMode(context) ? _dark : _light;

  // Context-dependent color getters
  static Color primary(BuildContext context) =>
      THelperFunctions.isDarkMode(context) ? _lightPrimary : _darkPrimary;

  static Color secondary(BuildContext context) =>
      THelperFunctions.isDarkMode(context) ? _lightSecondary : _darkSecondary;

  static Color accent(BuildContext context) =>
      THelperFunctions.isDarkMode(context) ? _darkAccent : _lightAccent;

  // Text color getters
  static Color textDefault(BuildContext context) =>
      THelperFunctions.isDarkMode(context)
          ? _light
          : _dark;
  static Color textPrimary(BuildContext context) =>
      THelperFunctions.isDarkMode(context)
          ? _darkTextPrimary
          : _lightTextPrimary;

  static Color textSecondary(BuildContext context) =>
      THelperFunctions.isDarkMode(context)
          ? _lightTextSecondary
          : _darkTextSecondary;

  // Buttons color getters
  static Color textButtonPrimary(BuildContext context) =>
      THelperFunctions.isDarkMode(context) ? _light : _darkTextPrimary;

  static Color textButtonSecondary(BuildContext context) =>
      THelperFunctions.isDarkMode(context)
          ? _lightTextSecondary
          : _darkTextSecondary;

  static Color textOutlinedButtonPrimary(BuildContext context) =>
      THelperFunctions.isDarkMode(context) ? _darkAccent : _lightTextPrimary;

  static Color primaryButton(BuildContext context) =>
      THelperFunctions.isDarkMode(context) ? _darkAccent : _darkButtonPrimary;

  static Color primaryOutlinedButton(BuildContext context) =>
      THelperFunctions.isDarkMode(context)
          ? _darkPrimaryBackground
          : _lightPrimaryBackground;

  static Color secondaryButton(BuildContext context) =>
      THelperFunctions.isDarkMode(context)
          ? _lightAccent
          : _darkButtonSecondary;

  static Color buttonDisabled(BuildContext context) =>
      THelperFunctions.isDarkMode(context)
          ? _lightButtonDisabled
          : _darkButtonDisabled;

  // Background colors getters
  static Color defaultBackground(BuildContext context) =>
      THelperFunctions.isDarkMode(context)
          ? _dark
          : _light;
  static Color primaryBackground(BuildContext context) =>
      THelperFunctions.isDarkMode(context)
          ? _darkPrimaryBackground
          : _lightPrimaryBackground;

  static Color backgroundContainerLight(BuildContext context) =>
      THelperFunctions.isDarkMode(context)
          ? _lightBackgroundContainerLight
          : _darkBackgroundContainerLight;

  static Color backgroundContainerDark(BuildContext context) =>
      THelperFunctions.isDarkMode(context)
          ? _lightBackgroundContainerDark
          : _darkBackgroundContainerDark;

  static Color borderPrimary(BuildContext context) =>
      THelperFunctions.isDarkMode(context)
          ? _lightBorderPrimary
          : _darkBorderPrimary;

  static Color borderSecondary(BuildContext context) =>
      THelperFunctions.isDarkMode(context)
          ? _lightBorderSecondary
          : _darkBorderSecondary;

  static Color error(BuildContext context) =>
      THelperFunctions.isDarkMode(context) ? _lightError : _darkError;

  static Color success(BuildContext context) =>
      THelperFunctions.isDarkMode(context) ? _lightSuccess : _darkSuccess;

  static Color warning(BuildContext context) =>
      THelperFunctions.isDarkMode(context) ? _lightWarning : _darkWarning;

  static Color info(BuildContext context) =>
      THelperFunctions.isDarkMode(context) ? _lightInfo : _darkInfo;

  static Color darkerGrey(BuildContext context) =>
      THelperFunctions.isDarkMode(context) ? _lightDarkerGrey : _darkDarkerGrey;

  static Color darkGrey(BuildContext context) =>
      THelperFunctions.isDarkMode(context) ? _darkDarkGrey : _lightDarkGrey;

  static Color softGrey(BuildContext context) =>
      THelperFunctions.isDarkMode(context) ? _darkSoftGrey : _lightSoftGrey;

  static Color lightGrey(BuildContext context) =>
      THelperFunctions.isDarkMode(context) ? _darkLightGrey : _lightLightGrey;
  static Color dark = _dark;
  static Color light = _light;
}
