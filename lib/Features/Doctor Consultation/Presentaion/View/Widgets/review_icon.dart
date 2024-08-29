
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';

class ReviewIcon extends StatelessWidget {
  const ReviewIcon({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return IconButton(
        padding: EdgeInsets.zero,
        onPressed: () {},
        icon: const Icon(EvaIcons.messageCircleOutline));
  }
}
