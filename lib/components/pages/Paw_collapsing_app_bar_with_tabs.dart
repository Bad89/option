import 'package:flutter/material.dart';

class PawCollapsingAppbarWithTabsPage extends StatelessWidget {
  const PawCollapsingAppbarWithTabsPage({Key? key}) : super(key: key);

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
                    title: const Text("PAW AREA",
                        style: TextStyle(
                          color: Color.fromARGB(255, 255, 255, 0),
                          fontSize: 45.0,
                        )),
                    background: Image.network(
                      "https://media.istockphoto.com/id/1017243656/vector/group-of-wild-animals.jpg?s=612x612&w=0&k=20&c=Od197jWqpH-2a74lzm7vLhAKNWxu4sO7zeas1nOY3DU=",
                      fit: BoxFit.cover,
                    )),
              ),
              SliverPersistentHeader(
                delegate: _SliverAppBarDelegate(
                  const TabBar(
                    indicatorSize: TabBarIndicatorSize.label,
                    labelColor: Color.fromARGB(255, 255, 157, 0),
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
  Tab(icon: Icon(Icons.newspaper), text: "Article"),
  Tab(icon: Icon(Icons.child_care), text: "Adoption-PET"),
  Tab(icon: Icon(Icons.shopping_bag_rounded), text: "Pet Shop"),
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
