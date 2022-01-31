import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  final Color color;
  final String text;
  const Home({Key? key, this.color = Colors.white, this.text = ""})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Color> colors = [
      Colors.red,
      Colors.amber,
      Colors.pink,
      Colors.green,
      Colors.purple,
      Colors.blue,
      Colors.orange
    ];
    List<String> text = [
      "A",
      "B",
      "C",
      "D",
      "E",
      "F",
      "G",
      "H",
      "I",
      "J",
      "K",
      "L",
      "M",
      "N",
      "O",
      "P",
      "Q",
      "R",
      "S",
      "T",
      "U",
      "V",
      "W",
      "X",
      "Y",
      "Z",
    ];
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Alphabet",
        ),
        centerTitle: true,
      ),
      body: Wrap(
        spacing: 10,
        runSpacing: 10,
        children: [
          for (int i = 0; i < 26; i++)
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                child: Center(
                  child: Text(
                    text[i],
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                height: 100.0,
                width: 100.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: colors[i % 7],
                ),
              ),
            ),
        ],
      ),
    );
  }
}
