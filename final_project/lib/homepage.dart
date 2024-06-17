import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(60),
        child: AppBar(
          title: const Text('Hai, Nurfadilah'),
          actions: const [
            Padding(
              padding: EdgeInsets.only(right: 20),
              child: CircleAvatar(
                backgroundImage: AssetImage('images/logo.png'),
              )
            ),
          ],
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.fromLTRB(20, 20, 0, 0),
            child: Text(
              "Cars",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(
            // height: 500,
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.only(top: 3.0, left: 15.0),
              child: Row(
                children: List.generate(
                  5,
                  (index) => ScrollViewItem(
                    width: 300,
                    height: 400,
                    imagePath:
                        'images/${index + 1}.png',
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class ScrollViewItem extends StatelessWidget {
  final double width;
  final double height;
  final String imagePath;

  const ScrollViewItem({
    super.key,
    required this.width,
    required this.height,
    required this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 8, 33, 107),
        borderRadius: BorderRadius.circular(10),
      ),
      width: width,
      height: height,
      margin: const EdgeInsets.only(right: 10),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Image.asset(
          imagePath,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}