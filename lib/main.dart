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
                child: TextButton(
                  child: Image.asset("images/image-1.png"),
                  onPressed: () {
                    print("Left button pressed");
                  },
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: TextButton(
                  child: Image(image: AssetImage("images/image-2.png")),
                  onPressed: () {
                    print("Right button pressed");
                  },
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: TextButton(
                  child: Image(image: AssetImage("images/image-2.png")),
                  onPressed: () {
                    print("Right button pressed");
                  },
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: TextButton(
                  child: Image(image: AssetImage("images/image-2.png")),
                  onPressed: () {
                    print("Right button pressed");
                  },
                ),
              ),
            ), //expanded
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: TextButton(
                  child: Image(image: AssetImage("images/image-2.png")),
                  onPressed: () {
                    print("Right button pressed");
                  },
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
