import 'package:flutter/material.dart';

// check3
import './components/./flutter_basics/./animation/hero_listview.dart';

// check2
import './components/forms/sign_in/sign_in_page2.dart';

// check6

import 'components/must_haves/onboarding_page/onboarding_page_1.dart';

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

// check4
import 'components/flutter_basics/appbars/collapsing_app_bar_with_tabs.dart';

// check5
import './components/must_haves/content_feed/news_feed_2.dart';

// check1
import 'components/navigation/side_bar/navigation_rail.dart';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'PAW-HIKE',
    home: OnboardingPage1(),
  ));
}

// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'PAW-HIKE',
//       scrollBehavior: MyCustomScrollBehavior(),
//       debugShowCheckedModeBanner: false,
//       routes:
//           _components.map((key, value) => MapEntry(key, (context) => value)),
//     );
//   }
// }

// Map<String, Widget> _components = {
//   '/': const _HomePage(),

// //   /// Navigation ----
// // // check1
// //   /// NavBar
//   // 'navigation_rail': const NavigationRailPage(),

// //   /// Forms ----

// //   /// SignIn
// // // check2
// //   'sign_in_page2': const SignInPage2(),

// //   /// ----

// //   /// Flutter Basics ----

// //   /// Animation
// //   /// check3
// //   'hero_list': const HeroListPage(),

// //   /// Appbars
// // // check4
// //   'collapsing_app_bar_with_tabs': const CollapsingAppbarWithTabsPage(),

// //   /// ----

// //   /// Must Haves ----

// //   /// Content Feed
// // // check5
// //   'news_feed_2': const NewsFeedPage2(),

// //   /// Settings Page

//   /// Onboarding
//   /// check 6
//   'onboarding_page_1': const OnboardingPage1(),

//   /// Dropdowns

//   /// ----
// };

// class _HomePage extends StatelessWidget {
//   const _HomePage({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Color.fromARGB(255, 255, 255, 255),
//         title: const Text(
//           'PAWHIKE',
//           style: TextStyle(color: Colors.orange),
//         ),
//       ),
//       body: SizedBox(
//         width: double.infinity,
//         child: Center(
//           child: Container(
//             constraints: const BoxConstraints(maxWidth: 500),
//             child: ListView.separated(
//               separatorBuilder: (context, index) => const Divider(),
//               itemCount: _components.length,
//               itemBuilder: (BuildContext context, int index) {
//                 final String routeName = _components.keys.elementAt(index);
//                 return ListTile(
//                     title: Text(routeName),
//                     onTap: () {
//                       Navigator.pushNamed(context, routeName);
//                     });
//               },
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }

class MyCustomScrollBehavior extends MaterialScrollBehavior {
  // Override behavior methods and getters like dragDevices
  @override
  Set<PointerDeviceKind> get dragDevices => {
        PointerDeviceKind.touch,
        PointerDeviceKind.mouse,
      };
}
