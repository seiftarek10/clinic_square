import 'package:clinic_square/Core/Helpers/space.dart';
import 'package:clinic_square/Core/Widgets/app_padding.dart';
import 'package:clinic_square/Core/Widgets/header_bar.dart';
import 'package:clinic_square/Core/Widgets/scrollable_widget.dart';
import 'package:clinic_square/Core/Widgets/search_section.dart';
import 'package:clinic_square/Features/E-Lab/Presentaion/Views/Widgets/elab_list_view.dart';
import 'package:flutter/material.dart';

class ElabView extends StatelessWidget {
  const ElabView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: AppScrollWidget(
            child: AppPadding(
                child: Column(
          children: [
            Space.topSpace20,
            const HeaderBar(headerText: 'Laboratory'),
            Space.verticalSpace18,
            const SearchSection(filterLabel: 'City'),
            Space.verticalSpace18,
            const ElabListView()
          ],
        ))),
      ),
    );
  }
}
