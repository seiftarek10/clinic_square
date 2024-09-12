import 'package:clinic_square/Features/Patient/Forum/Presentation/View/Widget/forumn_question.dart';
import 'package:flutter/material.dart';

class QuestionsListView extends StatelessWidget {
  const QuestionsListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: const BouncingScrollPhysics(),
      itemCount: 20,
      itemBuilder: (BuildContext context, int index) {
        return ForumQuestion(
          title: 'Specialization',
          subTitle: "Bla Bla Bla Bla Bla Bla Bla Bla Bla Bla Bla Bla Bla Bla ",
        );
      },
    );
  }
}
