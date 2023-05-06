import 'package:flutter/material.dart';
import '../../pages/NewsFeedPage.dart';
import '../../pages/hero_listview.dart';
import '../../pages/Hike_collapsing_app_bar_with_tabs.dart';
import '../../pages/Paw_collapsing_app_bar_with_tabs.dart';

class NavigationRailPage extends StatefulWidget {
  const NavigationRailPage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<NavigationRailPage> {
  int _currentIndex = 0;

  final List<Widget> _pages = [
    NewsFeedPage(),
    PawCollapsingAppbarWithTabsPage(),
    HikeCollapsingAppbarWithTabsPage(),
  ];

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final bool isSmallScreen = width < 600;
    final bool isLargeScreen = width > 800;

    return Scaffold(
      // appBar: AppBar(
      //   title: const Text('My App'),
      // ),
      body: _pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            activeIcon: Icon(Icons.home_rounded),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.pets_rounded),
            activeIcon: Icon(Icons.pets_rounded),
            label: 'Paw',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.landscape),
            activeIcon: Icon(Icons.landscape),
            label: 'Hike',
          ),
        ],
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }
}

// class HomePage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Center(
//       child: Text('Home Page'),
//     );
//   }
// }

// class ProfilePage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Center(
//       child: Text('Profile Page'),
//     );
//   }
// }

// class SettingsPage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Center(
//       child: Text('Settings Page'),
//     );
//   }
// }





// class NavigationRailPage extends StatefulWidget {
//   const NavigationRailPage({Key? key}) : super(key: key);

//   @override
//   State<NavigationRailPage> createState() => _NavigationRailPageState();
// }

// const _navBarItems = [
//   BottomNavigationBarItem(
//     icon: Icon(Icons.home_outlined),
//     activeIcon: Icon(Icons.home_rounded),
//     label: 'Home',
//   ),
//   BottomNavigationBarItem(
//     icon: Icon(Icons.bookmark_border_outlined),
//     activeIcon: Icon(Icons.bookmark_rounded),
//     label: 'Paw',
//   ),
//   BottomNavigationBarItem(
//     icon: Icon(Icons.person_outline_rounded),
//     activeIcon: Icon(Icons.person_rounded),
//     label: 'HIKE',
//   ),
// ];

// class _NavigationRailPageState extends State<NavigationRailPage> {
//   int _selectedIndex = 0;

//   final List<Widget> _pages = [
//     HomePage(),
//     // ProfilePage(),
//     // SettingsPage(),
//   ];

//   @override
//   Widget build(BuildContext context) {
//     final width = MediaQuery.of(context).size.width;
//     final bool isSmallScreen = width < 600;
//     final bool isLargeScreen = width > 800;

//     return Scaffold(
//       bottomNavigationBar: isSmallScreen
//           ? BottomNavigationBar(
//               items: _navBarItems,
//               currentIndex: _selectedIndex,
//               onTap: (int index) {
//                 setState(() {
//                   _selectedIndex = index;
//                 });
//               })
//           : null,
//       body: Row(
//         children: <Widget>[
//           if (!isSmallScreen)
//             NavigationRail(
//               selectedIndex: _selectedIndex,
//               onDestinationSelected: (int index) {
//                 setState(() {
//                   _selectedIndex = index;
//                 });
//               },
//               extended: isLargeScreen,
//               destinations: _navBarItems
//                   .map((item) => NavigationRailDestination(
//                       icon: item.icon,
//                       selectedIcon: item.activeIcon,
//                       label: Text(
//                         item.label!,
//                       )))
//                   .toList(),
//             ),
//           const VerticalDivider(thickness: 1, width: 1),
//           // This is the main content.
//           Expanded(
//             child: Center(
//               child: Text("${_navBarItems[_selectedIndex].label} tools"),
//             ),
//           )
//         ],
//       ),
//     );
//   }
// }


