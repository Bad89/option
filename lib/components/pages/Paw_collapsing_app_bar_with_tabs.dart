import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

import "../pages/Paw_collapsing_app_bar_with_tabs/Vet.dart";
import "../pages/Paw_collapsing_app_bar_with_tabs/Article.dart";

class PawCollapsingAppbarWithTabsPage extends StatelessWidget {
  const PawCollapsingAppbarWithTabsPage({Key? key}) : super(key: key);

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
                    title: const Text("PAW AREA",
                        style: TextStyle(
                          color: Color.fromARGB(255, 41, 30, 4),
                          fontSize: 15.0,
                        )),
                    background: CarouselSlider(
                      items: [
                        //insert image moving/carousel for ads
                        Image.network(
                          "https://media.istockphoto.com/id/1017243656/vector/group-of-wild-animals.jpg?s=612x612&w=0&k=20&c=Od197jWqpH-2a74lzm7vLhAKNWxu4sO7zeas1nOY3DU=",
                          fit: BoxFit.cover,
                        ),
                        Image.network(
                          "assets/adopt-pet-concept_23-2148517279.jpg",
                          fit: BoxFit.cover,
                        ),
                        Image.network(
                          "assets/benefits-living-with-pet-infographic_52683-37609.jpg",
                          fit: BoxFit.cover,
                        ),
                        Image.network(
                          "assets/pawchike001.png",
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
                          icon: Icon(Icons.newspaper),
                          text: "Article",
                        ),
                        Tab(
                          icon: Icon(Icons.medical_services),
                          text: "Vet Consultation",
                        ),
                        // Tab(
                        //   icon: Icon(Icons.pets),
                        //   text: "Adoption PET",
                        // ),
                      ]),
                )),
              ];
            },
            body: TabBarView(
              children: [
                Article(),
                Vet(),
              ],
            ),
          ),
        ));
  }
}

// const _tabs = [
//   Tab(icon: Icon(Icons.newspaper), text: "Article"),
//   Tab(icon: Icon(Icons.pets), text: "Adoption PET"),
//   Tab(icon: Icon(Icons.medical_services), text: "Vet Consul"),
// ];

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

// article


