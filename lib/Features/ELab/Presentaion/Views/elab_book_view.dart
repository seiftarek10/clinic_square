import 'package:clinic_square/Core/Widgets/app_padding.dart';
import 'package:clinic_square/Core/Widgets/scrollable_widget.dart';
import 'package:flutter/material.dart';

class ElabBookView extends StatelessWidget {
  const ElabBookView({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: AppScrollWidget(child: 
        AppPadding(child: 
        Column())),
      ),
    );
  }
}