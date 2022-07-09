import 'package:b_instagram_ui/Widgets/costomColors.dart';
import 'package:b_instagram_ui/Widgets/dark_light_theme.dart';
import 'package:flutter/material.dart';

class ScreenHome extends StatefulWidget {
  const ScreenHome({Key? key}) : super(key: key);

  @override
  State<ScreenHome> createState() => _ScreenHomeState();
}

class _ScreenHomeState extends State<ScreenHome> {
  @override
  Widget build(BuildContext context) {
    onItemSelected(int index) {
      _selectedIndex.value = index;
    }

    final mHeight = MediaQuery.of(context).size.height;
    final mWidth = MediaQuery.of(context).size.width;
    return ValueListenableBuilder(
        valueListenable: _selectedIndex,
        builder: (context, int newValue, _) {
          return Scaffold(
              appBar: AppBar(
                title: Text('Instagram'),
              ),
              body: Container(
                color: Colors.white,
              ),
              bottomNavigationBar: Container(
                height: mHeight *.07,
                decoration: BoxDecoration(
                  color: Colors.blueAccent,
                  border: Border(
                    top: BorderSide(
                        width: 1.0),
                  ),
                ),
                child: BottomNavigationBar(
                  type: BottomNavigationBarType.fixed,
                  currentIndex: newValue,
                  onTap: onItemSelected,
                  items: [
                    BottomNavigationBarItem(
                        icon: Image.asset('assets/Icons/home (2).png',width: 25,)  , label: ""),
                    BottomNavigationBarItem(
                        icon: Icon(Icons.search), label: ""),
                    BottomNavigationBarItem(
                        icon: Icon(Icons.video_collection), label: ""),
                    BottomNavigationBarItem(
                        icon: Icon(Icons.favorite), label: ""),
                    BottomNavigationBarItem(
                        icon: Icon(Icons.circle_outlined), label: ""),
                  ],
                ),
              ));
        });
  }

  //variables are below.
  final ValueNotifier<int> _selectedIndex = ValueNotifier(0);
//functions are below.

}
// BottomNavigationBar(
// type: BottomNavigationBarType.fixed,
// currentIndex: newValue,
// onTap: onItemSelected,
// items: [
// BottomNavigationBarItem(icon: Icon(Icons.home_outlined,),label: ""),
// BottomNavigationBarItem(icon: Icon(Icons.home_outlined),label: ""),
// BottomNavigationBarItem(icon: Icon(Icons.home_outlined),label: ""),
// BottomNavigationBarItem(icon: Icon(Icons.home_outlined),label: ""),
// BottomNavigationBarItem(icon: Icon(Icons.home_outlined),label: ""),
// ],
// ),
