import 'package:flutter/material.dart';
import 'package:practice_4/model/flowers.dart';
import 'package:practice_4/pages/catalog_page.dart';

class ItemNote extends StatelessWidget {
  const ItemNote({super.key, required this.flowers});

  final Flowers flowers;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () => Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => CatalogPage(flowers: flowers,)),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Stack(children: [
            Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(flowers.imageUrl), fit: BoxFit.cover),
                  borderRadius: BorderRadius.circular(16.0)),
              width: double.infinity,
              height: MediaQuery.of(context).size.height * 0.4,
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16.0),
                color: Colors.black.withOpacity(0.5),
              ),
              width: double.infinity,
              height: MediaQuery.of(context).size.height * 0.4,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    flowers.title,
                    style: const TextStyle(fontSize: 55, color: Colors.white, fontWeight: FontWeight.bold, fontFamily: "Serif" ),
                  ),
                  OutlinedButton(
                    style: OutlinedButton.styleFrom(
                        side: const BorderSide(color: Colors.green, width: 3)
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => CatalogPage(flowers: flowers,)),
                      );
                    },
                    child: const Text('Описание цветка', style: TextStyle(fontSize: 20, color: Colors.green),),
                  ),
                  const SizedBox(height: 50),
                ],
              ),
            ),
          ]),
        ));
  }
}
