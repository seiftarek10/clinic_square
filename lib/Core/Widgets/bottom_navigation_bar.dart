import 'package:clinic_square/Core/Themes/colors.dart';
import 'package:clinic_square/Features/Home/Presentaion/View/home.dart';
import 'package:clinic_square/Features/Patient%20Activity/Presentaion/View/screens/patient_activity.dart';
import 'package:clinic_square/Features/Patient%20Profile/Presentaion/View/patinet_profile.dart';
import 'package:flutter/material.dart';

class AppBottomBar extends StatefulWidget {
  const AppBottomBar({super.key});

  @override
  State<AppBottomBar> createState() => _AppBottomBarState();
}

class _AppBottomBarState extends State<AppBottomBar> {
  int _selectedIndex = 0;

  static final List<Widget> _pages = <Widget>[
    const HomePage(),
    const Center(
      child: Text("Center"),
    ),
    const PatientActivityView(),
    const PatinetProfileView()
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,

      body: Stack(children: [
        _pages.elementAt(_selectedIndex),
        Positioned(
          bottom: 20,
          right: 20,
          left: 20,
          child: Container(
            decoration: BoxDecoration(
                gradient: AppColors.appGradient(6),
                borderRadius: BorderRadius.circular(70),
                boxShadow: [
                  BoxShadow(
                      color: Colors.grey[500]!,
                      blurRadius: 10,
                      offset: const Offset(0, 2))
                ]),
            child: ClipRRect(
              borderRadius: const BorderRadius.all(Radius.circular(70)),
              child: BottomNavigationBar(
                type: BottomNavigationBarType.fixed,
                elevation: 0,
                backgroundColor: Colors.transparent,
                items: const <BottomNavigationBarItem>[
                  BottomNavigationBarItem(
                    icon: Icon(Icons.home_filled),
                    label: 'Home',
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(Icons.message),
                    label: 'Forum',
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(Icons.volunteer_activism),
                    label: 'Activity',
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(Icons.person),
                    label: 'Profile',
                  ),
                ],
                currentIndex: _selectedIndex,
                selectedItemColor: Colors.white,
                selectedFontSize: 16,
                selectedIconTheme: const IconThemeData(size: 30),
                unselectedItemColor: Colors.black,
                onTap: _onItemTapped,
              ),
            ),
          ),
        )
      ]),

      //   bottomNavigationBar:
    );
    // );
  }
}
