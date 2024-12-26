
import 'package:flutter/material.dart';

import 'focus_detector.dart';

class MovieItem extends StatelessWidget {
  final int categoryIndex;
  final int itemIndex;

  const MovieItem({
    super.key,
    required this.categoryIndex,
    required this.itemIndex,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: FocusDetector(
        onPress: () {
          // Handle movie selection
          print('Selected movie $itemIndex in category $categoryIndex');
        },
        child: Container(
          width: 120,
          color: Colors.grey[800],
          child: Center(
            child: Text('Movie $itemIndex'),
          ),
        ),
      ),
    );
  }
}