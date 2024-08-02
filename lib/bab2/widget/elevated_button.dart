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
            ElevatedButton(
              onPressed: () => log('Button clicked'), 
              child: const Text(
                'Click Me'
              )
            ),
            const SizedBox(height: 16.0,),
            ElevatedButton(
              onPressed: () => log('Button clicked'), 
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.indigo,
                foregroundColor: Colors.white
              ),
              child: const Text(
                'Click Me'
              )
            ),
            const SizedBox(height: 16.0,),
            ElevatedButton.icon(
              onPressed: () => log('Button clicked'), 
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green,
                foregroundColor: Colors.white
              ),
              icon: const Icon(
                Icons.play_arrow_rounded
              ),
              label: const Text(
                'Click Me'
              )
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