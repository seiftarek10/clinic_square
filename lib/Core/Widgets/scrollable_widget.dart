import 'package:flutter/material.dart';

class AppScrollWidget extends StatelessWidget {
  const AppScrollWidget({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return  SingleChildScrollView(
      child: child,
    );
  }
}
