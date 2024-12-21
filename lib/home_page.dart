import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  List<String> petsType = [
    "Dogs",
    "Cats",
    "Snake",
    "Birds",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Container(
          height: 40,
          width: 40,
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.pink
          ),
        ),
        title: const Text("Hi, Foysal"),
      ),

      body: Container(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text("Adopt",
            style: TextStyle(fontSize: 24, color: Colors.black, fontWeight: FontWeight.bold),
            ),
            const Text("your pet is here",
              style: TextStyle(fontSize: 18, color: Colors.black38, fontWeight: FontWeight.bold),
            ),

            const SizedBox(height: 10,),

            SizedBox(
              height: 100,
              child: ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: petsType.length,
                  itemBuilder: (context, index) => Container(
                    height: 80,
                    width: 80,
                    margin: const EdgeInsets.only(right: 8.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.orange.withOpacity(0.2)
                    ),
                    child: Center(child: Text(petsType[index])),
                  ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
