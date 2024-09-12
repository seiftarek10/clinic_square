import 'package:clinic_square/Core/Themes/colors.dart';
import 'package:clinic_square/Core/utils/assets.dart';
import 'package:clinic_square/Features/Patient/Forum/Presentation/View/forum.dart';
import 'package:clinic_square/Features/Patient/Home/Presentation/View/home.dart';
import 'package:clinic_square/Features/Patient/Activity/Presentation/View/screens/patient_activity.dart';
import 'package:clinic_square/Features/Patient/Profile/Presentation/View/patinet_profile.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppBottomBar extends StatefulWidget {
  const AppBottomBar({super.key});

  @override
  State<AppBottomBar> createState() => _AppBottomBarState();
}

class _AppBottomBarState extends State<AppBottomBar> {
  int _selectedIndex = 0;

  static final List<Widget> _pages = <Widget>[
    const PatientHomePage(),
    const ForumView(),
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
            height: 70.h,
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
                items: <BottomNavigationBarItem>[
                  BottomNavigationBarItem(
                    icon: Icon(Icons.home_filled),
                    label: 'Home',
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(EvaIcons.messageCircle),
                    label: 'Forum',
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(Icons.volunteer_activism_rounded),
                    label: 'Activity',
                  ),
                  BottomNavigationBarItem(
                    icon: Padding(
                      padding: EdgeInsets.only(bottom: 2.h, top: 2.h),
                      child: CircleAvatar(
                          backgroundImage: AssetImage(Assets.doctorImageIcon),
                          radius: _selectedIndex == 3 ? 20 : 18),
                    ),
                    label: 'Profile',
                  ),
                ],
                currentIndex: _selectedIndex,
                selectedItemColor: Colors.white,
                selectedFontSize: 16,
                selectedIconTheme: const IconThemeData(size: 33),
                unselectedIconTheme: const IconThemeData(size: 26),
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
