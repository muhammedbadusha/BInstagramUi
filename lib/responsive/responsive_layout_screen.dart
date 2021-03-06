import 'package:b_instagram_ui/utils/dimensions.dart';
import 'package:flutter/material.dart';
class ResponsiveLayout extends StatelessWidget {
  final Widget webScreenLayout;
  final Widget mobileScreenLayout;

  ResponsiveLayout({Key? key, required this.webScreenLayout, required this.mobileScreenLayout}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context,constraints){
      if(constraints.maxWidth > webScreenSize){
        return webScreenLayout;
      }
      return mobileScreenLayout;
    });
  }
}
