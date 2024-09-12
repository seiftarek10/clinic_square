import 'package:clinic_square/Core/Helpers/app_screen.dart';
import 'package:clinic_square/Core/Helpers/space.dart';
import 'package:clinic_square/Core/Widgets/header_text.dart';
import 'package:clinic_square/Features/Patient/Forum/Presentation/View/Widget/all_question_listview.dart';
import 'package:flutter/material.dart';


class ForumView extends StatelessWidget {
  const ForumView({super.key});

  @override
  Widget build(BuildContext context) {
    return AppScreen(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Space.verticalSpace12,
          HeaderText(title: 'Forum', subTitle: ''),
          QuestionsListView(),
          Space.verticalSpace70
        ],
      ),
    );
  }
}


