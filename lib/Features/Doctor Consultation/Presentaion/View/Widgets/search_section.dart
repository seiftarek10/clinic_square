import 'package:clinic_square/Core/Themes/fonts.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';



class SearchSection extends StatelessWidget {
  const SearchSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 4,
          child: TextFormField(
            decoration: InputDecoration(
              prefixIcon: Icon(EvaIcons.searchOutline),
              hintText: 'Search',
              hintStyle: Fonts.font16_400DarkBlue
              
              ),
          ),
        ),
        const Expanded(child: SizedBox())
      ],
    );
  }
}
