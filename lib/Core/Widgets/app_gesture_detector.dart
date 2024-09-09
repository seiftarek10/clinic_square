import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class AppGestureDetector extends StatefulWidget {
  const AppGestureDetector(
      {super.key,
      required this.onTapDownColor,
      required this.onTapUpColor,
      required this.route,
      required this.child,
      required this.onColorChanged});

  @override
  State<AppGestureDetector> createState() => _AppGestureDetectorState();
  final Color onTapDownColor, onTapUpColor;
  final String route;
  final Widget child;
  final ValueChanged<Color> onColorChanged;
}

class _AppGestureDetectorState extends State<AppGestureDetector> {
  late Color _currentColor;

  @override
  void initState() {
    _currentColor = widget.onTapDownColor;
    super.initState();
  }

  void updateColor(Color color) {
    setState(() {
      _currentColor = color;
      widget.onColorChanged(_currentColor);
    });
  }

  void _onTapDown(TapDownDetails details) {
    updateColor(widget.onTapDownColor);
  }

  void _onLongPress() {
    updateColor(widget.onTapDownColor);
  }

  void _onTapUp(TapUpDetails details) {
    updateColor(widget.onTapUpColor);
  }

  void _onCancel() {
    updateColor(widget.onTapUpColor);
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTapDown: _onTapDown,
      onLongPress: _onLongPress,
      onTapUp: _onTapUp,
      onTapCancel: _onCancel,
      onTap: () {
        GoRouter.of(context).push(widget.route);
      },
      child: widget.child,
    );
  }
}
