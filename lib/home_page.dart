import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    // build reusable widget
    Widget buildIconAndText(IconData icon, String text) {
      return Padding(
        padding: const EdgeInsets.only(top: 16.0, bottom: 32, left: 8),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            CircleAvatar(
              backgroundColor: Colors.deepPurpleAccent[50],
              radius: 90,
              child: Icon(
                icon,
                size: 100,
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            Text(
              text,
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 8,
            )
          ],
        ),
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text("My Profile"),
        backgroundColor: Colors.yellow[700],
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.add)),
          IconButton(onPressed: () {}, icon: const Icon(Icons.settings)),
          IconButton(onPressed: () {}, icon: const Icon(Icons.call)),
        ],
      ),
      body: Center(
        child: Column(
          children: [
            buildIconAndText(
                Icons.icecream_outlined, "Ice cream is very delicious right?"),
            buildIconAndText(
                Icons.code, "Programming is not boring if you love it"),
            buildIconAndText(Icons.egg_outlined,
                "If you submit code directly copy from chatgpt then mark will 0")
          ],
        ),
      ),
    );
  }
}
