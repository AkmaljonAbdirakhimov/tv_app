import 'package:flutter/material.dart';

import 'movie_item.dart';

class MovieCategory extends StatelessWidget {
  final int categoryIndex;
  final String title;

  const MovieCategory({
    super.key,
    required this.categoryIndex,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            title,
            style: Theme.of(context).textTheme.headlineSmall,
          ),
        ),
        SizedBox(
          height: 200,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 10, // Number of movies per category
            itemBuilder: (context, itemIndex) {
              return MovieItem(
                categoryIndex: categoryIndex,
                itemIndex: itemIndex,
              );
            },
          ),
        ),
      ],
    );
  }
}
