import 'package:flutter/material.dart';

class MyHome_Page extends StatefulWidget {
  MyHome_Page({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHome_Page> {
  int score = 0;

  void increaseScore() {
    setState(() {
      score++;
    });
  }

  void increaseScoreBy(int value) {
    setState(() {
      score += value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter demo'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Score: $score',
              style: const TextStyle(fontSize: 30),
            ),
            const SizedBox(height: 40),
            ElevatedButton(
              onPressed: increaseScore,
              child: const Text('like'),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                ElevatedButton(
                  onPressed: () => increaseScoreBy(1),
                  child: const Text('+'),
                ),
                const SizedBox(width: 10),
                ElevatedButton(
                  onPressed: () => increaseScoreBy(-1),
                  child: const Text('-'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}


