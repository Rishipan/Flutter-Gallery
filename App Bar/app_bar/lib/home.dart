import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
          icon: const Icon(Icons.menu),
          onPressed: () {},
        ),
        title: const Text("App Bar"),
        actions: <Widget>[
          IconButton(
            icon: const Icon(
              Icons.favorite,
              // tooltip;
            ),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(
              Icons.search,
            ),
            onPressed: () {},
          ),
          PopupMenuButton<Text>(
            itemBuilder: (context) {
              return const [
                PopupMenuItem(
                  child: Text(
                    '1',
                    // localization.demoNavigationRailFirst,
                  ),
                ),
                PopupMenuItem(
                  child: Text(
                    '2',
                    // localization.demoNavigationRailSecond,
                  ),
                ),
                PopupMenuItem(
                  child: Text(
                    '3',
                    // localization.demoNavigationRailThird,
                  ),
                ),
              ];
            },
          )
        ],
      ),
      body: const Center(
        child: Text(
          'Home',
          // localization.cupertinoTabBarHomeTab,
        ),
      ),
    );
  }
}
