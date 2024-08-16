import 'package:clinic_square/Core/Themes/colors.dart';
import 'package:clinic_square/Features/Home/Presentaion/View/home.dart';
import 'package:flutter/material.dart';



class AppBottomBar extends StatefulWidget {
  const AppBottomBar({super.key});

  @override
  State<AppBottomBar> createState() =>
      _AppBottomBarState();
}

class _AppBottomBarState
    extends State<AppBottomBar> {
  int _selectedIndex = 0;

  static const List<Widget> _pages = <Widget>[
  HomePage(),
    Text(
      'Index 1: Business',
      
    ),
    Text(
      'Index 2: School',
     
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages.elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            label: 'Business',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school),
            label: 'School',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: AppColors.mainBlue,
        onTap: _onItemTapped,
      ),
    );
  }
}
