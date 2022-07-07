import 'package:b_instagram_ui/Widgets/costomColors.dart';
import 'package:flutter/material.dart';
bool _iconBool=false;
class ScreenHome extends StatefulWidget {
  const ScreenHome({Key? key}) : super(key: key);

  @override
  State<ScreenHome> createState() => _ScreenHomeState();
}

IconData _iconLight=Icons.light;
IconData _iconDark=Icons.dark_mode;
ThemeData _lightTheme =ThemeData(
  primarySwatch: Colors.orange,
  brightness: Brightness.light
);
ThemeData _darkTheme =ThemeData(
    primarySwatch: Colors.green,
    brightness: Brightness.dark
);
class _ScreenHomeState extends State<ScreenHome> {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: _iconBool?_darkTheme:_lightTheme,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Dark mode and Light mode'),
          actions: [
            IconButton(onPressed: (){
              setState((){
                _iconBool=!_iconBool;
              });
            }, icon: Icon(_iconBool?_iconDark:_iconLight))
          ],
        ),
        body: Center(child: ElevatedButton(onPressed: (){
          Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Secondtest()));
        }, child: Icon(Icons.arrow_right_alt))),
      ),
    );
  }
}
class Secondtest extends StatefulWidget {
  const Secondtest({Key? key}) : super(key: key);

  @override
  State<Secondtest> createState() => _SecondtestState();
}

class _SecondtestState extends State<Secondtest> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: _iconBool?_darkTheme:_lightTheme,
      home: Scaffold(
        appBar: AppBar(
          title: Text('this is second Page'),
        ),
      ),
    );
  }
}

