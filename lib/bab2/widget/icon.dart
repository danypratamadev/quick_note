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
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.thumb_up_rounded,
                ),
                SizedBox(width: 16.0,),
                Icon(
                  Icons.thumb_down_rounded,
                ),
              ],
            ),
            SizedBox(height: 16.0,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.thumb_up_rounded,
                  color: Colors.blue,
                  size: 32.0,
                ),
                SizedBox(width: 16.0,),
                Icon(
                  Icons.thumb_down_rounded,
                  color: Colors.red,
                  size: 32.0,
                ),
              ],
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