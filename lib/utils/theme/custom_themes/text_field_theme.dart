import "package:flutter/material.dart";
import "package:todo_app/utils/constants/colors.dart";

class TTextFieldTheme {
  TTextFieldTheme._();

  static InputDecorationTheme buildTextTheme({
    required BuildContext context,
  }) => InputDecorationTheme(
    errorMaxLines: 3,
    prefixIconColor: TColors.darkGrey(context),
    suffixIconColor: TColors.softGrey(context),
    labelStyle: const TextStyle().copyWith(
      fontSize: 14,
      color: TColors.dark,
    ),
    hintStyle: const TextStyle().copyWith(
      fontSize: 14,
      color: TColors.dark,
    ),
    errorStyle: const TextStyle().copyWith(fontStyle: FontStyle.normal),
    floatingLabelStyle: const TextStyle().copyWith(
      color: TColors.dark.withValues(alpha: 0.8),
    ),
    border: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(14),
      borderSide: BorderSide(width: 1, color: TColors.borderPrimary(context)),
    ),
    enabledBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(14),
      borderSide: BorderSide(width: 1, color: TColors.borderSecondary(context)),
    ),
    focusedBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(14),
      borderSide: BorderSide(
        width: 1,
        color: TColors.borderPrimary(context).withValues(alpha: 0.12),
      ),
    ),
    errorBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(14),
      borderSide: BorderSide(width: 1, color: TColors.accent(context)),
    ),
    focusedErrorBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(14),
      borderSide: BorderSide(width: 1, color: TColors.accent(context)),
    ),
    disabledBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(14),
      borderSide: BorderSide(width: 1, color: TColors.buttonDisabled(context)),
    ),
  );
}
