import 'package:clinic_square/Core/Themes/fonts.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';

class InfoWidget extends StatelessWidget {
  const InfoWidget({
    super.key, required this.info,
  });
  final String info;
  @override
  Widget build(BuildContext context) {
    return Row(children: [
      const Expanded(
        child: CircleAvatar(
            backgroundColor: Color.fromARGB(246, 188, 212, 255),
            child: Icon(
              EvaIcons.infoOutline,
              color: Color.fromARGB(255, 0, 78, 196),
            )),
      ),
      const SizedBox(width: 12),
      Expanded(
          flex: 7,
          child: Text(
            info,
            style: Fonts.font16_600DarkBlue,
          ))
    ]);
  }
}
