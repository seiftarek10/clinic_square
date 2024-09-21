import 'package:clinic_square/Core/Helpers/space.dart';
import 'package:clinic_square/Core/Widgets/Search/search_filed.dart';
import 'package:clinic_square/Features/Patient/E-Lab/Presentation/Views/Widgets/elab_list_view.dart';
import 'package:flutter/material.dart';

class ElabsTab extends StatelessWidget {
  const ElabsTab({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Space.topSpace20,
          const SearchField(),
          Space.verticalSpace18,
          const ElabListView()
        ],
      ),
    );
  }
}