import 'package:flutter/material.dart';
import 'dart:developer' as developer;

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Workshop App Development"),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("Hello world!"),
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
