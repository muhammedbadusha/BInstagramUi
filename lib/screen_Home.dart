import 'package:b_instagram_ui/Widgets/costomColors.dart';
import 'package:flutter/material.dart';
bool _iconBool=false;
class ScreenHome extends StatefulWidget {
  const ScreenHome({Key? key}) : super(key: key);

  @override
  State<ScreenHome> createState() => _ScreenHomeState();
}



class _ScreenHomeState extends State<ScreenHome> {

  @override
  Widget build(BuildContext context) {
    return
       Scaffold(
        appBar: AppBar(
          title: Text('Dark mode and Light mode'),
        ),
        body: Center(
          child: Text('hello'),
        )
      );

  }
}
// class Secondtest extends StatefulWidget {
//   const Secondtest({Key? key}) : super(key: key);
//
//   @override
//   State<Secondtest> createState() => _SecondtestState();
// }
//
// class _SecondtestState extends State<Secondtest> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('this is second Page'),
//       ),
//       body: Container(
//         color: cRed,
//       ),
//     );
//   }
// }

