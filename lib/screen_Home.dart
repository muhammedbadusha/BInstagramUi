import 'package:b_instagram_ui/Widgets/costomColors.dart';
import 'package:b_instagram_ui/Widgets/dark_light_theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
                elevation: 0,
                actions: [
                  Row(
                    children: [

                      IconButton(onPressed: (){}, icon: Icon(Icons.add_box_outlined,color: Colors.black54,size: 28,)),
                      IconButton(onPressed: (){}, icon: Image.asset('assets/Icons/home.png',width: 23,)),
                    ],
                  )
                ],
                toolbarHeight: mHeight*.09,
                flexibleSpace: Container(
                  decoration: BoxDecoration(
                    border:Border(
                      bottom: BorderSide(
                        width: 1.0
                      )
                    )
                  ),
                ),
                title: Row(
                  children: [
                    Text('Instagram',style: GoogleFonts.rochester(textStyle: TextStyle(fontSize: 28,fontWeight: FontWeight.w600)),)
                  ],
                )
              ),
              body: Container(
                color: Colors.white,
              ),
              bottomNavigationBar: Container(
                height: mHeight *.07,
                decoration: const BoxDecoration(
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
                        icon: Image.asset('assets/Icons/home (2).png',width: 25,color: Colors.white,)  , label: ""),
                    const BottomNavigationBarItem(
                        icon: Icon(Icons.search), label: ""),
                    const BottomNavigationBarItem(
                        icon: Icon(Icons.video_collection), label: ""),
                    const BottomNavigationBarItem(
                        icon: Icon(Icons.favorite), label: ""),
                    const BottomNavigationBarItem(
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
