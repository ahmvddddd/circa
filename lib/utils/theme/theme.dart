import 'package:flutter/material.dart';

import '../constants/custom_colors.dart';
import 'custom_theme/appbar_theme.dart';
import 'custom_theme/bottom_sheet_theme.dart';
import 'custom_theme/checkbox_theme.dart';
import 'custom_theme/chip_theme.dart';
import 'custom_theme/elevated_button_theme.dart';
import 'custom_theme/outlined_button_theme.dart';
import 'custom_theme/text_field_theme.dart';
import 'custom_theme/text_theme.dart';

class TAppTheme {
  TAppTheme._();

  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Aonik',
    brightness: Brightness.light,
    primaryColor: Colors.grey,
    scaffoldBackgroundColor: CustomColors.lightBackground,
    textTheme: TTextTheme.lightTextTheme,
    appBarTheme: TAppBarTheme.lightAppBarTheme,
    elevatedButtonTheme: TElevatedButtonTheme.LightElevatedButtonTheme,
    bottomSheetTheme: TBottomSheetTheme.lightBottomSheetTheme,
    checkboxTheme: TCheckboxTheme.lightCheckboxTheme,
    chipTheme: TChipTheme.lightChipTheme,
    outlinedButtonTheme: TOutlinedButtonTheme.lightOutlinedButtonTheme,
    inputDecorationTheme: TTextFormFieldTheme.lightInputDecorationTheme,
  );

  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Aeonik',
    brightness: Brightness.dark,
    primaryColor: Colors.grey,
    scaffoldBackgroundColor: CustomColors.darkBackground,
    textTheme: TTextTheme.darkTextTheme,
    appBarTheme: TAppBarTheme.darkAppBarTheme,
    elevatedButtonTheme: TElevatedButtonTheme.darkElevatedButtonTheme,
    bottomSheetTheme: TBottomSheetTheme.darkBottomSheetTheme,
    checkboxTheme: TCheckboxTheme.darkCheckboxTheme,
    chipTheme: TChipTheme.darkChipTheme,
    outlinedButtonTheme: TOutlinedButtonTheme.darkOutlinedButtonTheme,
    inputDecorationTheme: TTextFormFieldTheme.darkInputDecorationTheme,
  );
}
