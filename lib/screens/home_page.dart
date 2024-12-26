import 'package:flutter/material.dart';

import '../widgets/featured_banner.dart';
import '../widgets/movie_category.dart';

class HomePage extends StatelessWidget {
  final ScrollController scrollController;

  const HomePage({super.key, required this.scrollController});

  @override
  Widget build(BuildContext context) {
    return ListView(
      controller: scrollController,
      children: [
        const FeaturedBanner(),
        ListView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: 5, // Number of categories
          itemBuilder: (context, categoryIndex) {
            return MovieCategory(
              categoryIndex: categoryIndex,
              title: 'Category ${categoryIndex + 1}',
            );
          },
        ),
      ],
    );
  }
}