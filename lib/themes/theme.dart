import 'package:flutter/material.dart';
import 'package:sberbank_lab/Themes/colors.dart';

ThemeData lightThemeData(BuildContext context) {

  return ThemeData.light().copyWith(
    primaryColor: MyColors.primary,
    scaffoldBackgroundColor: MyColors.backgroundColor,
    canvasColor: Colors.white,


    textTheme: const TextTheme(
      titleLarge: TextStyle(
        color: MyColors.TextTitleColor,
        fontSize: 24,
        fontWeight: FontWeight.w700,
        fontFamily: 'SFProText',
      ),
      titleMedium: TextStyle(
        color: MyColors.TextTitleColor,
        fontSize: 20,
        fontFamily: 'SFProText',
        fontWeight: FontWeight.w700,
        letterSpacing: -0.42,
      ),
      bodyMedium: TextStyle(
        color: MyColors.TextTitleColor,
        fontSize: 16,
        fontFamily: 'SFProText',
        fontWeight: FontWeight.w500,
        letterSpacing: -0.70,
      ),
      bodySmall: TextStyle(
        color: MyColors.TextSubtitleColor,
        fontSize: 14,
        fontWeight: FontWeight.w500,
        fontFamily: 'SFProText',
        letterSpacing: -0.92,
      ),
    ),


    chipTheme: ChipThemeData(
      showCheckmark: true,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
          side: const BorderSide(color: Colors.transparent)),
      backgroundColor: Colors.black.withAlpha(30),
      selectedColor: MyColors.primary.withAlpha(150),
    ),


    colorScheme: ColorScheme.fromSeed(
      seedColor: Colors.white, surfaceTint: Colors.white
    ),


    appBarTheme: AppBarTheme(
      elevation: 0,
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
      iconTheme: IconThemeData().copyWith(
        color: MyColors.primary,
      ),
      actionsIconTheme: IconThemeData().copyWith(
        color: MyColors.primary,
      ),
    ),


    tabBarTheme: TabBarTheme().copyWith(
      labelColor: Colors.black,
      labelStyle: const TextStyle(
        color: Colors.black,
        fontSize: 16,
        //fontFamily: 'SF Pro Text',
        fontWeight: FontWeight.w500,
        height: 0.08,
        letterSpacing: -0.40,
      ),
      indicator: const BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: MyColors.tabBarIndicator,
            width: 2.0,
          ),
        ),
      ),
    ),


  );
}
