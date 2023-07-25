import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

import "../pages//Hike_collapsing_app_bar_with_tabs/Article.dart";
import "../pages//Hike_collapsing_app_bar_with_tabs/Hike.dart";
import "../pages/Hike_collapsing_app_bar_with_tabs/Shop.dart";

class HikeCollapsingAppbarWithTabsPage extends StatelessWidget {
  const HikeCollapsingAppbarWithTabsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
          body: NestedScrollView(
            headerSliverBuilder:
                (BuildContext context, bool innerBoxIsScrolled) {
              return <Widget>[
                SliverAppBar(
                  expandedHeight: 300.0,
                  floating: false,
                  pinned: true,
                  stretch: true,
                  flexibleSpace: FlexibleSpaceBar(
                    centerTitle: true,
                    collapseMode: CollapseMode.parallax,
                    title: const Text("Outdoor Experience",
                        style: TextStyle(
                          color: Color.fromARGB(255, 41, 30, 4),
                          fontSize: 15.0,
                        )),
                    background: CarouselSlider(
                      items: [
                        Image.network(
                          "assets/outdoor-activity-logo_7347-74.jpg.webp",
                          fit: BoxFit.cover,
                        ),
                        Image.network(
                          "assets/AdobeStock_275126034.jpeg",
                          fit: BoxFit.cover,
                        ),
                        // Image.network(
                        //   "assets/adopt-pet-concept_23-2148517279.jpg",
                        //   fit: BoxFit.cover,
                        // ),
                        Image.network(
                          "assets/b1d9c5c408953ef59d8adeff838ca004--utah-adventures-outdoor-adventures.jpg",
                          fit: BoxFit.cover,
                        ),
                        Image.network(
                          "assets/el-capitan-yosemite-national-park-rock-climbing-2.jpg",
                          fit: BoxFit.cover,
                        ),
                        Image.network(
                          "assets/epicclimbing.jpg",
                          fit: BoxFit.cover,
                        ),
                        Image.network(
                          "assets/images.jpeg",
                          fit: BoxFit.cover,
                        ),
                        Image.network(
                          "assets/istockphoto-1392501146-612x612.jpg",
                          fit: BoxFit.cover,
                        ),
                        Image.network(
                          "assets/off_road-2.png.webp",
                          fit: BoxFit.cover,
                        ),
                        Image.network(
                          "assets/Lakeside-Camp-1024x577.jpeg",
                          fit: BoxFit.cover,
                        ),
                        Image.network(
                          "assets/520cf6_04133fb1a0d74f1fab5d611f3accd0a2~mv2.jpg",
                          fit: BoxFit.cover,
                        ),
                      ],
                      options: CarouselOptions(
                        height: 300,
                        autoPlay: true,
                        autoPlayInterval: Duration(seconds: 2),
                        autoPlayAnimationDuration: Duration(milliseconds: 1000),
                        autoPlayCurve: Curves.fastOutSlowIn,
                        enlargeCenterPage: true,
                        viewportFraction: 0.9,
                      ),
                    ),
                  ),
                ),
                SliverPersistentHeader(
                  delegate: _SliverAppBarDelegate(
                    const TabBar(
                        indicatorSize: TabBarIndicatorSize.label,
                        labelColor: Color.fromARGB(255, 255, 157, 0),
                        unselectedLabelColor: Colors.grey,
                        tabs: [
                          Tab(
                            icon: Icon(Icons.article_rounded),
                            text: "Article",
                          ),
                          Tab(
                            icon: Icon(Icons.outbond_rounded),
                            text: "Odyssey",
                          ),
                          Tab(
                            icon: Icon(Icons.shopping_bag_rounded),
                            text: "Shop",
                          ),
                        ]),
                  ),
                ),
              ];
            },
            body: TabBarView(
              children: [
                Article(),
                Hike(),
                Shop(),
              ],
            ),
          ),
        ));
  }
}

class _SliverAppBarDelegate extends SliverPersistentHeaderDelegate {
  _SliverAppBarDelegate(this._tabBar);

  final TabBar _tabBar;

  @override
  double get minExtent => _tabBar.preferredSize.height;
  @override
  double get maxExtent => _tabBar.preferredSize.height;

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return _tabBar;
  }

  @override
  bool shouldRebuild(_SliverAppBarDelegate oldDelegate) {
    return false;
  }
}
