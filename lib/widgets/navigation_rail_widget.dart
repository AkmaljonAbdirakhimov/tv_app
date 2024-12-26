import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/app_bloc.dart';

class NavigationRailWidget extends StatelessWidget {
  const NavigationRailWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AppBloc, AppState>(
      builder: (context, state) {
        return NavigationRail(
          selectedIndex: state.currentSection.index,
          onDestinationSelected: (index) {
            context
                .read<AppBloc>()
                .add(ChangeSection(NavigationSection.values[index]));
          },
          destinations: const [
            NavigationRailDestination(
              icon: Icon(Icons.home),
              label: Text('Home'),
            ),
            NavigationRailDestination(
              icon: Icon(Icons.movie),
              label: Text('Recommended'),
            ),
          ],
        );
      },
    );
  }
}
