import 'package:flutter/material.dart';

import '../widgets/focus_detector.dart';

class RecommendedPage extends StatelessWidget {
  final ScrollController scrollController;

  const RecommendedPage({super.key, required this.scrollController});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      controller: scrollController,
      padding: const EdgeInsets.all(16),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 4,
        childAspectRatio: 2/3,
        crossAxisSpacing: 16,
        mainAxisSpacing: 16,
      ),
      itemCount: 20,
      itemBuilder: (context, index) {
        return RecommendedMovieItem(index: index);
      },
    );
  }
}

class RecommendedMovieItem extends StatelessWidget {
  final int index;

  const RecommendedMovieItem({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    return FocusDetector(
      onPress: () {
        print('Selected recommended movie $index');
      },
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: Colors.grey[800],
                borderRadius: BorderRadius.circular(8),
              ),
              child: Center(
                child: Text('Movie $index'),
              ),
            ),
          ),
          const SizedBox(height: 8),
          Text(
            'Movie Title $index',
            style: Theme.of(context).textTheme.titleMedium,
          ),
          Text(
            '2024 • Action • 2h 30m',
            style: Theme.of(context).textTheme.bodySmall,
          ),
        ],
      ),
    );
  }
}