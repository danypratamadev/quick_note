import 'dart:developer';

import 'package:flutter/material.dart';

class Bab2Page extends StatefulWidget {
  const Bab2Page({super.key});

  @override
  State<Bab2Page> createState() => _Bab2PageState();
}

class _Bab2PageState extends State<Bab2Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Home Page'
        ),
      ),
      body: Center(
        child: Container(
          width: 200.0,
          height: 200.0,
          padding: const EdgeInsets.all(16.0),
          margin: const EdgeInsets.all(16.0),
          decoration: BoxDecoration(
            color: Colors.indigo,
            borderRadius: BorderRadius.circular(8.0),
            boxShadow: const [
              BoxShadow(
                color: Colors.black26,
                blurRadius: 12.0,
                spreadRadius: 4.0,
                offset: Offset(0, 4.0)
              )
            ]
          ),
          child: const Center(
            child: Text(
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.w600,
                color: Colors.white,
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ),
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