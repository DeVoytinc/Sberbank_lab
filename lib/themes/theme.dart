import 'package:flutter/material.dart';
import 'package:sberbank_lab/Themes/colors.dart';

ThemeData lightThemeData(BuildContext context) {
  return ThemeData.light().copyWith(
    primaryColor: Color.fromARGB(255, 52, 65, 255),

    scaffoldBackgroundColor: MyColors.backgroundColor,
    canvasColor: Colors.white,
      
    appBarTheme: AppBarTheme(
      elevation: 0,
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
      iconTheme: IconThemeData(). copyWith(
        color: MyColors.primary,
      ),
      actionsIconTheme: IconThemeData().copyWith(
        color: MyColors.primary,
      )
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
      indicatorColor:  Color.fromARGB(255, 132, 6, 6),
    ),

    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: Colors.blue,
      selectedItemColor: Colors.white,
      unselectedItemColor: Colors.white60,
    )
  );
      
}