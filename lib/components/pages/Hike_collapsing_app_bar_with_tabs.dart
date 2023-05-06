import 'package:flutter/material.dart';

class HikeCollapsingAppbarWithTabsPage extends StatelessWidget {
  const HikeCollapsingAppbarWithTabsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        body: NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return <Widget>[
              SliverAppBar(
                expandedHeight: 300.0,
                floating: false,
                pinned: true,
                stretch: true,
                flexibleSpace: FlexibleSpaceBar(
                    centerTitle: true,
                    collapseMode: CollapseMode.parallax,
                    title: const Text(
                        "Outdoor Activity Area (Mountain, Jungle, Sea)",
                        style: TextStyle(
                          color: Color.fromARGB(255, 255, 255, 255),
                          fontSize: 16.0,
                        )),
                    background: Image.network(
                      "assets/HD-wallpaper-island-mtn-ocean-beach-jungle-island-thumbnail.jpg",
                      fit: BoxFit.cover,
                    )),
              ),
              SliverPersistentHeader(
                delegate: _SliverAppBarDelegate(
                  const TabBar(
                    indicatorSize: TabBarIndicatorSize.label,
                    labelColor: Color.fromARGB(255, 176, 153, 39),
                    unselectedLabelColor: Colors.grey,
                    tabs: _tabs,
                  ),
                ),
                pinned: true,
              ),
            ];
          },
          body: TabBarView(
              children: _tabs
                  .map((e) => Center(
                        child: Text("${e.text}", textAlign: TextAlign.center),
                      ))
                  .toList()),
        ),
      ),
    );
  }
}

const _tabs = [
  Tab(icon: Icon(Icons.article_rounded), text: "Article"),
  Tab(icon: Icon(Icons.outbond_rounded), text: "Explore"),
  Tab(icon: Icon(Icons.shopping_bag_rounded), text: "Outdoor Shop"),
];

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
