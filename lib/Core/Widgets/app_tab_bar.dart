
import 'package:clinic_square/Core/Helpers/space.dart';
import 'package:clinic_square/Core/Themes/colors.dart';
import 'package:clinic_square/Core/Themes/fonts.dart';
import 'package:clinic_square/Core/Widgets/header_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppTabBar extends StatelessWidget {
  const AppTabBar({
    super.key,
    required this.length,
    required this.tabs,
    required this.tabsView, required this.pageTitle,
  });

  final int length;
  final List<Widget> tabs, tabsView;
  final String pageTitle;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        initialIndex: 0,
        length: length,
        child: SafeArea(
            child: Scaffold(
          body: Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            child: Column(
              children: [
                Space.topSpace20,
                 HeaderBar(headerText: pageTitle),
                Space.verticalSpace24,
                TabBar(
                  enableFeedback:false ,
                  overlayColor: const WidgetStatePropertyAll(Colors.transparent),
                    indicatorColor: AppColors.mainBlue,
                    indicatorSize: TabBarIndicatorSize.tab,
                    labelStyle: Fonts.font18_600DarkBlue
                        .copyWith(color: AppColors.mainBlue),
                    unselectedLabelStyle: Fonts.font14_700darkBlue,
                    tabs: tabs),
                Expanded(
                  child: TabBarView(children: tabsView),
                )
              ],
            ),
          ),
        )));
  }
}
