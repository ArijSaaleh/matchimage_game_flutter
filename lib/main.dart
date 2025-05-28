import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.indigo,
        appBar: AppBar(
          title: Text(
            'Match the picture',
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: Colors.indigo[800],
        ),
        body: ImagePage(),
      ),
    ),
  );
}

class ImagePage extends StatelessWidget {
  const ImagePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Text("try again", style: TextStyle(fontSize: 42, color: Colors.white)),
        Row(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Image(image: AssetImage("images/image-1.png")),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Image(image: AssetImage("images/image-2.png")),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
