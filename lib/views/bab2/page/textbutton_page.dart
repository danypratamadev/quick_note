import 'package:flutter/material.dart';

class TextbuttonPage extends StatefulWidget {
  const TextbuttonPage({super.key});

  @override
  State<TextbuttonPage> createState() => _TextbuttonPageState();
}

class _TextbuttonPageState extends State<TextbuttonPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'TextButton'.toUpperCase(),
          style: const TextStyle(
            fontSize: 16.0,
            fontWeight: FontWeight.w600
          ),
        ),
      ),
      body: const SafeArea(
        child: Center(
          child: Padding(
            padding: EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                
              ],
            ),
          )
        ),
      )
    );
  }
}