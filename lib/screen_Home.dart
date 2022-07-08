import 'package:b_instagram_ui/Widgets/costomColors.dart';
import 'package:flutter/material.dart';

class ScreenHome extends StatefulWidget {
  const ScreenHome({Key? key}) : super(key: key);

  @override
  State<ScreenHome> createState() => _ScreenHomeState();
}

class _ScreenHomeState extends State<ScreenHome> {

  @override
  Widget build(BuildContext context) {
    onItemSelected(int index){
      _selectedIndex.value=index;
    }
    return ValueListenableBuilder(
      valueListenable: _selectedIndex,
      builder: (context,int newValue,_) {
        return Scaffold(
          appBar: AppBar(
            title: Text('Instagram'),
          ),

          body: Center(
            child: Text('hello'),
          ),
          bottomNavigationBar:  Container(
            alignment: Alignment.bottomCenter,
            height: 55,
            color: Colors.red,
            child: BottomNavigationBar(
              type: BottomNavigationBarType.fixed,
              currentIndex: newValue,
              onTap: onItemSelected,
              items: [
                BottomNavigationBarItem(icon: Icon(Icons.home_outlined,),label: ""),
                BottomNavigationBarItem(icon: Icon(Icons.home_outlined),label: ""),
                BottomNavigationBarItem(icon: Icon(Icons.home_outlined),label: ""),
                BottomNavigationBarItem(icon: Icon(Icons.home_outlined),label: ""),
                BottomNavigationBarItem(icon: Icon(Icons.home_outlined),label: ""),
              ],
            ),
          ),
        );
      }
    );

  }
  //variables are below.
final ValueNotifier<int> _selectedIndex=ValueNotifier(0);
//functions are below.

}
