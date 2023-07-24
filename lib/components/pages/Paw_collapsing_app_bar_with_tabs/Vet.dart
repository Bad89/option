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

class Vet extends StatelessWidget {
  const Vet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 3,
      crossAxisSpacing: 4.0,
      mainAxisSpacing: 8.0,
      children: List.generate(vet.length, (index) {
        return Center(
          child: SelectCard(
            dr: vet[index], // Corrected variable name and method call
          ),
        );
      }),
    );
  }
}

class Dr {
  Dr({required this.title, required this.image});
  final String title;
  final Image image;
}

List<Dr> vet = [
  Dr(
    title: 'dr.hewan Nie (Animal surgeon & Pet expertise)',
    image: Image.asset(
      'assets/sea-turtle.png',
      width: double.infinity,
      height: 300,
    ),
  ),
  Dr(
    title: 'dr.hewan Ayu (Nutrisi spesialis)',
    image: Image.asset(
      'assets/sea-turtle.png',
      width: double.infinity,
      height: 300,
    ),
  ),
  Dr(
    title: 'Coming Soon',
    image: Image.asset(
      'assets/sea-turtle.png',
      width: double.infinity,
      height: 300,
    ),
  ),
  Dr(
    title: 'Comming Soon',
    image: Image.asset(
      'assets/sea-turtle.png',
      width: double.infinity,
      height: 300,
    ),
  ),
];

class SelectCard extends StatelessWidget {
  SelectCard({required this.dr});
  final Dr dr;

  @override
  Widget build(BuildContext context) {
    // final TextStyle textStyle = Theme.of(context).textTheme.bodyText1;

    return Card(
        color: Color.fromARGB(255, 178, 70, 255),
        child: Center(
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Expanded(child: dr.image),
                Text(
                  dr.title,
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ]),
        ));
  }
}
