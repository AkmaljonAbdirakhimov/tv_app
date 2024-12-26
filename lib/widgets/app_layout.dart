import 'package:flutter/material.dart';

import 'main_content.dart';
import 'navigation_rail_widget.dart';

class AppLayout extends StatefulWidget {
  const AppLayout({super.key});

  @override
  State<AppLayout> createState() => _AppLayoutState();
}

class _AppLayoutState extends State<AppLayout> {
  final ScrollController _scrollController = ScrollController();

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          const NavigationRailWidget(),
          Expanded(
            child: MainContent(scrollController: _scrollController),
          ),
        ],
      ),
    );
  }
}
