import 'package:flutter/cupertino.dart';
import 'package:map/features/list/navigation/list_navigator.dart';
import 'package:map/features/map/navigation/map_navigator.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _BottomNavigationBarExampleState();
}

class _BottomNavigationBarExampleState extends State<MyHomePage> {
  var _selectedPageIndex;
  late PageController _pageController;

  @override
  void initState() {
    super.initState();

    _selectedPageIndex = 0;

    _pageController = PageController(initialPage: _selectedPageIndex);
  }

  @override
  Widget build(BuildContext context) {
    return CupertinoTabScaffold(
      tabBar: CupertinoTabBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.search_circle_fill),
            label: 'Explore',
          ),
        ],
      ),
      tabBuilder: _tabBuilder,
    );
  }

  Widget _tabBuilder(BuildContext context, int index) {
    switch (index) {
      case 0:
        return ListNavigator();
      case 1:
        return MapNavigator();
    }
    return Container();
  }
}
