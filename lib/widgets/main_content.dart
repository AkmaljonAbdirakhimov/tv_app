import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/app_bloc.dart';
import '../screens/home_page.dart';
import '../screens/recommended_page.dart';

class MainContent extends StatelessWidget {
  final ScrollController scrollController;

  const MainContent({super.key, required this.scrollController});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AppBloc, AppState>(
      builder: (context, state) {
        switch (state.currentSection) {
          case NavigationSection.home:
            return HomePage(scrollController: scrollController);
          case NavigationSection.recommended:
            return RecommendedPage(scrollController: scrollController);
        }
      },
    );
  }
}
