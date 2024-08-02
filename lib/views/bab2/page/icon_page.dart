import 'package:flutter/material.dart';

class IconPage extends StatefulWidget {
  const IconPage({super.key});

  @override
  State<IconPage> createState() => _IconPageState();
}

class _IconPageState extends State<IconPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Icon'.toUpperCase(),
          style: const TextStyle(
            fontSize: 16.0,
            fontWeight: FontWeight.w600
          ),
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
    );
  }
}