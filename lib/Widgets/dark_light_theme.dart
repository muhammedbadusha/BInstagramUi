import 'package:flutter/material.dart';
final dColor=Colors.red;
 var mColor;
class ThemeClass{
  bool changeI=false;

  static ThemeData lightTheme = ThemeData(
      scaffoldBackgroundColor: Colors.white,
      colorScheme: const ColorScheme.light(),
      appBarTheme: const AppBarTheme(
        backgroundColor: Colors.white,
        titleTextStyle: TextStyle(color:Colors.black)
      ),
    bottomNavigationBarTheme:  BottomNavigationBarThemeData(
        selectedIconTheme: IconThemeData(color: dColor),
    ),
  );

  static ThemeData darkTheme = ThemeData(
    canvasColor: Colors.black,
      //scaffoldBackgroundColor: Colors.black,
      colorScheme: const ColorScheme.dark(),
      appBarTheme: const AppBarTheme(
        backgroundColor: Colors.black,
          titleTextStyle: TextStyle(color:Colors.white)
      ),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        selectedIconTheme: IconThemeData(color: Colors.white),
    ),
  );
}