import 'package:flutter/material.dart';
import 'package:fragrancebaron/utils/constants/colors.dart';
import 'package:fragrancebaron/utils/theme/custom_themes/app_bar_theme.dart';
import 'package:fragrancebaron/utils/theme/custom_themes/bottom_sheet_theme.dart';
import 'package:fragrancebaron/utils/theme/custom_themes/checkbox_theme.dart';
import 'package:fragrancebaron/utils/theme/custom_themes/chip_theme.dart';
import 'package:fragrancebaron/utils/theme/custom_themes/elevated_button_theme.dart';
import 'package:fragrancebaron/utils/theme/custom_themes/outlined_button_theme.dart';
import 'package:fragrancebaron/utils/theme/custom_themes/text_field_theme.dart';
import 'package:fragrancebaron/utils/theme/custom_themes/text_theme.dart';

class FBTheme {
  FBTheme._();

  static ThemeData lightTheme = ThemeData(
      useMaterial3: true,
      brightness: Brightness.light,
      primaryColor: Colors.amber[700],
      scaffoldBackgroundColor: FBColor.white,
      textTheme: FBTextTheme.lightTextTheme,
      elevatedButtonTheme: FBElevatedButtonTheme.elevatedButtonLightTheme,
      appBarTheme: FBAppBarTheme.appBarLightTheme,
      bottomSheetTheme: FBBottomSheetTheme.lightBottomSheetTheme,
      chipTheme: FBChipTheme.lightChipTheme,
      outlinedButtonTheme: FBOutlinedButtonTheme.lightOutlinedButtonTheme,
      inputDecorationTheme: FBTextFormField.lightInputDecorationTheme,
      checkboxTheme: FBCheckboxTheme.lightCheckboxTheme);

  static ThemeData darkTheme = ThemeData(
      useMaterial3: true,
      brightness: Brightness.dark,
      primaryColor: Colors.amber[700],
      scaffoldBackgroundColor: Colors.black,
      textTheme: FBTextTheme.darkTextTheme,
      elevatedButtonTheme: FBElevatedButtonTheme.elevatedButtonDarkTheme,
      appBarTheme: FBAppBarTheme.appBarDarkTheme,
      bottomSheetTheme: FBBottomSheetTheme.darkBottomSheetTheme,
      chipTheme: FBChipTheme.darkChipTheme,
      outlinedButtonTheme: FBOutlinedButtonTheme.darkOutlinedButtonTheme,
      inputDecorationTheme: FBTextFormField.darkInputDecorationTheme,
      checkboxTheme: FBCheckboxTheme.darkCheckboxTheme);
}
