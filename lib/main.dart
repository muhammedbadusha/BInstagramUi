import 'package:b_instagram_ui/responsive/mobil_screen_layout.dart';
import 'package:b_instagram_ui/responsive/responsive_layout_screen.dart';
import 'package:b_instagram_ui/responsive/web_screen_layout.dart';
import 'package:b_instagram_ui/utils/colors.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Theme Demo',
      debugShowCheckedModeBanner: false,
    theme: ThemeData.dark().copyWith(
      scaffoldBackgroundColor: mobileBackgroundColor,
    ),
      home: ResponsiveLayout(webScreenLayout: const WebScreenLayout(), mobileScreenLayout: const MobileScreenLayout()),
    );
  }
}





