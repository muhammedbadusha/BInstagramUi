import 'package:b_instagram_ui/responsive/mobil_screen_layout.dart';
import 'package:b_instagram_ui/responsive/responsive_layout_screen.dart';
import 'package:b_instagram_ui/responsive/web_screen_layout.dart';
import 'package:b_instagram_ui/screens/login_screen.dart';
import 'package:b_instagram_ui/screens/signup_screen.dart';
import 'package:b_instagram_ui/utils/colors.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  if (kIsWeb) {
    Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyAWy4ypeEHg3JYepiRcXrAUOlVkBU_u04I",
            appId: '1:926836653906:web:a25697032e83d5bbf0c48b',
            messagingSenderId: "926836653906",
            projectId: "b-instagram",
          storageBucket: "b-instagram.appspot.com",

        ));
  } else {
    Firebase.initializeApp();
  }

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
      // home: ResponsiveLayout(
      //     webScreenLayout: const WebScreenLayout(),
      //     mobileScreenLayout: const MobileScreenLayout()),
      home:const SignupScreen(),
    );
  }
}
