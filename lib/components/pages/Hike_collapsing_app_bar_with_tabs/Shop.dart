import 'package:flutter/material.dart';

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

class Shop extends StatelessWidget {
  const Shop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 3,
      crossAxisSpacing: 4.0,
      mainAxisSpacing: 8.0,
      children: List.generate(shop.length, (index) {
        return Center(
          child: SelectCard(
            item: shop[index], // Corrected variable name and method call
          ),
        );
      }),
    );
  }
}

class Item {
  Item({required this.title, required this.image});
  final String title;
  final Image image;
}

List<Item> shop = [
  Item(
    title: 'CommingSoon',
    image: Image.asset(
      'assets/sea-turtle.png',
      width: double.infinity,
      height: 300,
    ),
  ),
  Item(
    title: 'CommingSoon',
    image: Image.asset(
      'assets/sea-turtle.png',
      width: double.infinity,
      height: 300,
    ),
  ),
  Item(
    title: 'Coming Soon',
    image: Image.asset(
      'assets/sea-turtle.png',
      width: double.infinity,
      height: 300,
    ),
  ),
  Item(
    title: 'Comming Soon',
    image: Image.asset(
      'assets/sea-turtle.png',
      width: double.infinity,
      height: 300,
    ),
  ),
];

class SelectCard extends StatelessWidget {
  SelectCard({required this.item});
  final Item item;

  @override
  Widget build(BuildContext context) {
    // final TextStyle textStyle = Theme.of(context).textTheme.bodyText1;

    return Card(
        color: Color.fromARGB(255, 255, 158, 47),
        child: Center(
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Expanded(child: item.image),
                Text(
                  item.title,
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ]),
        ));
  }
}
