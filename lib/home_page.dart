import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    // build reusable widget
    Widget buildIconAndText(IconData icon, String text) {
      return Padding(
        padding: const EdgeInsets.only(top: 16.0, left: 8),
        child: Column(
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
            Expanded(
              child: buildIconAndText(Icons.icecream_outlined,
                  "Ice cream is very delicious right?"),
            ),
            Expanded(
              child: buildIconAndText(
                  Icons.code, "Programming is not boring if you love it"),
            ),
            Expanded(child: buildIconAndText(Icons.egg_outlined,
                "If you submit code directly copy from chatgpt then mark will 0"))
          ],
        ),
      ),
    );
  }
}
