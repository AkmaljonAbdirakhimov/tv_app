// focus_detector.dart
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class FocusDetector extends StatefulWidget {
  final Widget child;
  final VoidCallback? onPress;
  final bool autofocus;

  const FocusDetector({
    super.key,
    required this.child,
    this.onPress,
    this.autofocus = false,
  });

  @override
  State<FocusDetector> createState() => _FocusDetectorState();
}

class _FocusDetectorState extends State<FocusDetector> {
  late FocusNode focusNode;

  @override
  void initState() {
    super.initState();
    focusNode = FocusNode();
  }

  @override
  void dispose() {
    focusNode.dispose();
    super.dispose();
  }

  KeyEventResult _handleKeyEvent(FocusNode node, KeyEvent event) {
    if (event is KeyDownEvent) {
      if (event.logicalKey == LogicalKeyboardKey.enter ||
          event.logicalKey == LogicalKeyboardKey.select) {
        widget.onPress?.call();
        return KeyEventResult.handled;
      }
    }
    return KeyEventResult.ignored;
  }

  @override
  Widget build(BuildContext context) {
    return Focus(
      focusNode: focusNode,
      autofocus: widget.autofocus,
      onKeyEvent: _handleKeyEvent,
      child: Builder(
        builder: (context) {
          final focused = Focus.of(context).hasFocus;
          return Container(
            decoration: BoxDecoration(
              border: focused ? Border.all(color: Colors.blue, width: 2) : null,
            ),
            child: widget.child,
          );
        },
      ),
    );
  }
}
