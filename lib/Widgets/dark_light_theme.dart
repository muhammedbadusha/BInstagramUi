import 'package:flutter/material.dart';
final dColor=Colors.red;
 var mColor;
class ThemeClass{

  static ThemeData lightTheme = ThemeData(
      scaffoldBackgroundColor: Colors.white,
      colorScheme: const ColorScheme.light(),
      appBarTheme: const AppBarTheme(
        backgroundColor: Colors.red,
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
      ),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        selectedIconTheme: IconThemeData(color: Colors.white),
    ),

  );
}