import 'dart:developer';

import 'package:flutter/material.dart';

class ElevatedbuttonPage extends StatefulWidget {
  const ElevatedbuttonPage({super.key});

  @override
  State<ElevatedbuttonPage> createState() => _ElevatedbuttonPageState();
}

class _ElevatedbuttonPageState extends State<ElevatedbuttonPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'ElevatedButton Widget'
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
    );
  }
}