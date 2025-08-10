import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: const Text(
            'Column and Row Layout',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          backgroundColor: Colors.blueGrey,
          centerTitle: true,
        ),
        body: Column(
          children: [
            const SizedBox(height: 40),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                buildBox('1', Colors.red),
                const SizedBox(width: 30),
                buildBox('2', Colors.green),
                const SizedBox(width: 30),
                buildBox('3', Colors.blue),
              ],
            ),

            const SizedBox(height: 50),

            Container(
              width: 250,
              height: 70,
              alignment: Alignment.center,
              color: Colors.orange,
              child: const Text(
                'Large Container',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),

            const SizedBox(height: 50),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 80,
                  height: 40,
                  alignment: Alignment.center,
                  color: Colors.purple,
                  child: const Text(
                    'Left',
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                ),
                const SizedBox(width: 30),
                Container(
                  width: 80,
                  height: 40,
                  alignment: Alignment.center,
                  color: Colors.teal,
                  child: const Text(
                    'Right',
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  static Widget buildBox(String text, Color color) {
    return Container(
      width: 60,
      height: 60,
      alignment: Alignment.center,
      color: color,
      child: Text(
        text,
        style: const TextStyle(
          fontSize: 20,
          color: Colors.white,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
