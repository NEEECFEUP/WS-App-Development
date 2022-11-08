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
  bool _active = false;

  void handleTap() {
    setState(() {
      _active = !_active;
    });
  }

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
            GestureDetector(
              onTap: handleTap,
              child: Box(active: _active),
            ),
          ],
        ),
      ),
    );
  }
}

class Box extends StatelessWidget {
  final bool active;
  const Box({super.key, required this.active});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200.0,
      height: 200.0,
      decoration: BoxDecoration(
        color: active ? Colors.lightGreen[700] : Colors.grey[600],
      ),
      child: Center(
        child: Text(
          active ? 'Active' : 'Inactive',
          style: const TextStyle(fontSize: 32.0, color: Colors.white),
        ),
      ),
    );
  }
}
