import 'package:flutter/material.dart';
import 'package:pawhike002/components/pages/Paw_collapsing_app_bar_with_tabs/Article.dart';

// class Vet extends StatelessWidget {
//   const Vet({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return GridView.count(
//       crossAxisCount: 3,
//       crossAxisSpacing: 4.0,
//       mainAxisSpacing: 8.0,
//       children: List.generate(vet.length, (index), {
//         return Center (
//           child: SelectCard(
//             Dr: vet[index],
//           ),
//         ),
//       }),
//     );
//   }
// }

class Article extends StatelessWidget {
  const Article({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 3,
      crossAxisSpacing: 4.0,
      mainAxisSpacing: 8.0,
      children: List.generate(article.length, (index) {
        return Center(
          child: SelectCard(
            news: article[index], // Corrected variable name and method call
          ),
        );
      }),
    );
  }
}

class News {
  News({required this.title, required this.image});
  final String title;
  final Image image;
}

List<News> article = [
  News(
    title: 'CommingSoon',
    image: Image.asset(
      'assets/sea-turtle.png',
      width: double.infinity,
      height: 300,
    ),
  ),
  News(
    title: 'CommingSoon',
    image: Image.asset(
      'assets/sea-turtle.png',
      width: double.infinity,
      height: 300,
    ),
  ),
  News(
    title: 'Coming Soon',
    image: Image.asset(
      'assets/sea-turtle.png',
      width: double.infinity,
      height: 300,
    ),
  ),
  News(
    title: 'Comming Soon',
    image: Image.asset(
      'assets/sea-turtle.png',
      width: double.infinity,
      height: 300,
    ),
  ),
];

class SelectCard extends StatelessWidget {
  SelectCard({required this.news});
  final News news;

  @override
  Widget build(BuildContext context) {
    // final TextStyle textStyle = Theme.of(context).textTheme.bodyText1;

    return Card(
        color: Color.fromARGB(255, 178, 70, 255),
        child: Center(
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Expanded(child: news.image),
                Text(
                  news.title,
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ]),
        ));
  }
}
