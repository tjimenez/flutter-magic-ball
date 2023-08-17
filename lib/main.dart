import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue.shade900,
        title: const Text('Magic Ball'),
      ),
      body: const BallPage(),
    ),
  ));
}

class BallPage extends StatefulWidget {
  const BallPage({super.key});

  @override
  State<BallPage> createState() => _BallPageState();
}

class _BallPageState extends State<BallPage> {
  int ballValue = 1;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue.shade400,
      padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 12.0),
      child: Center(
        child: TextButton(
          child: Image.asset('assets/images/ball$ballValue.png'),
          onPressed: () {
            setState(() {
              ballValue = Random().nextInt(5) + 1;
            });
          },
        ),
      ),
    );
  }
}
