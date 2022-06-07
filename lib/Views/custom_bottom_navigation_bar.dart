import 'dart:ffi';

import 'package:flutter/material.dart';

class CustomBottomNavigationBar extends StatefulWidget {
  const CustomBottomNavigationBar({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _CustomBottomNavigationBarState();
}

class _CustomBottomNavigationBarState extends State {
  int _selectedIndex = 0;

  void _onItemTapped(int index){
    setState((){
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: _selectedIndex,
      onTap: _onItemTapped,
      showUnselectedLabels: true,
      selectedFontSize: 12.0,
      unselectedFontSize: 12.0,
      elevation: 0.0,
      type: BottomNavigationBarType.fixed,
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.home_outlined),
          activeIcon: Icon(Icons.home),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.explore_outlined),
          activeIcon: Icon(Icons.explore),
          label: 'Shorts',
        ),
        // BottomNavigationBarItem(
        //   icon: Icon(Icons.add_circle_outline_outlined),
        //   activeIcon: Icon(Icons.add_circle),
        //   label: '',
        // ),
        BottomNavigationBarItem(
          icon: Icon(Icons.subscriptions_outlined),
          activeIcon: Icon(Icons.subscriptions),
          label: 'Subscriptions',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.video_library_outlined),
          activeIcon: Icon(Icons.video_library),
          label: 'Library',
        ),
      ],
      backgroundColor: const Color.fromRGBO(32, 32, 32, 1),
      unselectedItemColor: Colors.white,
      selectedItemColor: Colors.white,
      // unselectedLabelStyle: TextStyle(color: Colors.white, decorationColor: Colors.white, ),
    );
  }

}