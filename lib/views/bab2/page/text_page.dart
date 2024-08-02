import 'package:flutter/material.dart';

class TextPage extends StatefulWidget {
  const TextPage({super.key});

  @override
  State<TextPage> createState() => _TextPageState();
}

class _TextPageState extends State<TextPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Text'.toUpperCase(),
          style: const TextStyle(
            fontSize: 16.0,
            fontWeight: FontWeight.w600
          ),
        ),
      ),
      body: const SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Hello World!',
              ),
              SizedBox(height: 16.0,),
              Text(
                'Hello World!',
                style: TextStyle(
                  letterSpacing: 4.0,
                ),
              ),
              SizedBox(height: 16.0,),
              Text(
                'Hello World!',
                style: TextStyle(
                  wordSpacing: 32.0,
                ),
              ),
              SizedBox(height: 16.0,),
              Text(
                'Hello World!',
                style: TextStyle(
                  fontSize: 24.0,
                ),
              ),
              SizedBox(height: 16.0,),
              Text(
                'Hello World!',
                style: TextStyle(
                  fontSize: 24.0,
                  fontWeight: FontWeight.w600,
                  color: Colors.indigo,
                ),
              ),
              SizedBox(height: 16.0,),
              Text(
                'Hello World!',
                style: TextStyle(
                  fontSize: 24.0,
                  fontWeight: FontWeight.w600,
                  color: Colors.indigo,
                  decoration: TextDecoration.underline,
                ),
              ),
              SizedBox(height: 16.0,),
              Text(
                'Hello World!',
                style: TextStyle(
                  fontSize: 24.0,
                  fontWeight: FontWeight.w600,
                  color: Colors.indigo,
                  decoration: TextDecoration.underline,
                  fontStyle: FontStyle.italic,
                ),
              ),
              SizedBox(height: 16.0,),
              Text(
                'Hello World!',
                style: TextStyle(
                  fontSize: 24.0,
                  fontWeight: FontWeight.w600,
                  color: Colors.white,
                  backgroundColor: Colors.indigo,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}