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

class Hike extends StatelessWidget {
  const Hike({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 3,
      crossAxisSpacing: 4.0,
      mainAxisSpacing: 8.0,
      children: List.generate(hike.length, (index) {
        return Center(
          child: SelectCard(
            sanin: hike[index], // Corrected variable name and method call
          ),
        );
      }),
    );
  }
}

class Sanin {
  Sanin({required this.title, required this.image});
  final String title;
  final Image image;
}

List<Sanin> hike = [
  Sanin(
    title: 'CommingSoon',
    image: Image.asset(
      'assets/sea-turtle.png',
      width: double.infinity,
      height: 300,
    ),
  ),
  Sanin(
    title: 'CommingSoon',
    image: Image.asset(
      'assets/sea-turtle.png',
      width: double.infinity,
      height: 300,
    ),
  ),
  Sanin(
    title: 'Coming Soon',
    image: Image.asset(
      'assets/sea-turtle.png',
      width: double.infinity,
      height: 300,
    ),
  ),
  Sanin(
    title: 'Comming Soon',
    image: Image.asset(
      'assets/sea-turtle.png',
      width: double.infinity,
      height: 300,
    ),
  ),
];

class SelectCard extends StatelessWidget {
  SelectCard({required this.sanin});
  final Sanin sanin;

  @override
  Widget build(BuildContext context) {
    // final TextStyle textStyle = Theme.of(context).textTheme.bodyText1;

    return Card(
        color: Color.fromARGB(255, 147, 255, 70),
        child: Center(
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Expanded(child: sanin.image),
                Text(
                  sanin.title,
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ]),
        ));
  }
}
