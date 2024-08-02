import 'dart:developer';

import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Home Page'
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 100.0,
              height: 100.0,
              color: Colors.indigo,
            ),
            const SizedBox(height: 16.0,),
            Container(
              width: 100.0,
              height: 100.0,
              color: Colors.blue,
            ),
            const SizedBox(height: 16.0,),
            Container(
              width: 100.0,
              height: 100.0,
              color: Colors.green,
            ),
          ],
        )
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(
          Icons.add_rounded
        ),
        onPressed: () => log('Hello World!'),
      ),
    );
  }
}