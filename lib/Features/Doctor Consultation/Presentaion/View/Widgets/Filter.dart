 import 'package:clinic_square/Core/Themes/fonts.dart';
import 'package:flutter/material.dart';

class Filter extends StatefulWidget {
  const Filter({
    super.key,
  });

  @override
  State<Filter> createState() => _FilterState();
}

class _FilterState extends State<Filter> {
  String? _selected;
  @override
  Widget build(BuildContext context) {
    return FittedBox(
      child: DropdownButton(
        hint: Text(
          "Speciality",
          style: Fonts.font20_700darkBlue,
        ),
        padding: EdgeInsets.zero,
        alignment: AlignmentDirectional.center,
        style: Fonts.font20_700darkBlue,
        enableFeedback: true,
        borderRadius: BorderRadius.circular(15),
        dropdownColor: Colors.white,
        items: [
          'Dermatologist',
          'General Medicine',
          'Cardiology',
          'Pediatrics',
          'Neurology',
        ]
            .map((e) => DropdownMenuItem(
                  value: e,
                  child: FittedBox(
                      child: Text(
                    e,
                    style: Fonts.font14_700darkBlue,
                  )),
                ))
            .toList(),
        value: _selected,
        onChanged: (value) {
          setState(() {
            _selected = value;
          });
        },
      ),
    );
  }
}
