import 'package:flutter/material.dart';

import 'package:flutter/material.dart';

class NewsFeedPage extends StatelessWidget {
  const NewsFeedPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          constraints: const BoxConstraints(maxWidth: 800),
          child: ListView.builder(
            itemCount: _articles.length,
            itemBuilder: (BuildContext context, int index) {
              final item = _articles[index];
              return Container(
                height: 250,
                margin:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 8.0),
                decoration: BoxDecoration(
                    border: Border.all(color: const Color(0xFFE0E0E0)),
                    borderRadius: BorderRadius.circular(8.0)),
                padding: const EdgeInsets.all(8),
                child: Row(
                  children: [
                    Expanded(
                        child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          item.title,
                          style: const TextStyle(fontWeight: FontWeight.bold),
                          maxLines: 10,
                          overflow: TextOverflow.ellipsis,
                        ),
                        const SizedBox(height: 25),
                        Text("${item.author} · ${item.postedOn}",
                            style: Theme.of(context).textTheme.caption),
                        const SizedBox(height: 8),
                        Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Icons.bookmark_border_rounded,
                            Icons.share,
                            Icons.more_vert
                          ].map((e) {
                            return InkWell(
                              onTap: () {},
                              child: Padding(
                                padding: const EdgeInsets.only(right: 8.0),
                                child: Icon(e, size: 16),
                              ),
                            );
                          }).toList(),
                        )
                      ],
                    )),
                    Container(
                        width: 100,
                        height: 100,
                        decoration: BoxDecoration(
                            color: Colors.grey,
                            borderRadius: BorderRadius.circular(8.0),
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: NetworkImage(item.imageUrl),
                            ))),
                  ],
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}

class Article {
  final String title;
  final String imageUrl;
  final String author;
  final String postedOn;

  Article(
      {required this.title,
      required this.imageUrl,
      required this.author,
      required this.postedOn});
}

final List<Article> _articles = [
  Article(
    title:
        "Uncooperative’ squirrel stuck in manhole cover freed by firefighters in Germany",
    author: "Harry Stedman",
    imageUrl:
        "https://static.independent.co.uk/2023/04/11/12/11113317-9c53895e-f017-4109-af65-c6d7adfd7b12.jpeg?quality=75&width=990&crop=2048%3A1365%2Csmart&auto=webp",
    postedOn: "Tuesday 11 April 2023 12:31",
  ),
  Article(
    title:
        "Experts Raise Concern Over Continued Threats to Leatherback Sea Turtles Despite Conservation Progress in 2023. Estimates by the WWF suggest only 2,300 adult females of the Pacific leatherback remain, making it the most endangered marine turtle subpopulation.",
    author: "PAW - HIKE ",
    imageUrl:
        "https://static.wikia.nocookie.net/creatures-of-the-world/images/d/de/Leatherback.jpg/revision/latest/scale-to-width-down/260?cb=20160607210044",
    postedOn: "07 May 2023",
  ),
  Article(
    title:
        "Towering over the beautiful landscape of Lombok island, Mount Rinjani is Indonesia’s second highest volcano. That means it offers a demanding three to four days’ journey on a rather challenging trail, even for more seasoned hikers. Your determination to summit this volcano will be rewarded with the exquisite Segara Anak crater lake and a sweeping view of the island. However, even short hikes around the mountain’s base will suffice to take you to Rinjani’s picturesque hills and waterfalls.",
    author: "PAW - HIKE",
    imageUrl: "assets/gunungrinjanilombok21.jpg",
    postedOn: "07 May 2023",
  ),
  Article(
    title:
        "How to Choose the Right Hiking Gear, In the pursuit of our goals, it’s our gear that supports us along the way, which is why it’s so important to choose the right equipment",
    author: "PAW - HIKE",
    imageUrl: "assets/hikinggear.jpg",
    postedOn: "07 May 2023",
  ),
  // Article(
  //   title:
  //       "Panasonic's 25-megapixel GH6 is the highest resolution Micro Four Thirds camera yet",
  //   author: "Polygon",
  //   imageUrl: "https://picsum.photos/id/1020/960/540",
  //   postedOn: "2 hours ago",
  // ),
  // Article(
  //   title: "Samsung Galaxy S22 Ultra charges strangely slowly",
  //   author: "TechRadar",
  //   imageUrl: "https://picsum.photos/id/1021/960/540",
  //   postedOn: "10 days ago",
  // ),
  // Article(
  //   title: "Snapchat unveils real-time location sharing",
  //   author: "Fox Business",
  //   imageUrl: "https://picsum.photos/id/1060/960/540",
  //   postedOn: "10 hours ago",
  // ),
];
