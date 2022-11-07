import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'package:flutter/material.dart';
import 'dart:developer' as developer;

class SecondScreen extends StatefulWidget {
  final String title;
  const SecondScreen({super.key, required this.title});

  @override
  State<SecondScreen> createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("Hello second world!"),
            ElevatedButton(
              onPressed: () {
                developer.log('Hello!', name: 'app.log');
              },
              child: const Text("Click!"),
            )
          ],
        ),
      ),
    );
  }
}
