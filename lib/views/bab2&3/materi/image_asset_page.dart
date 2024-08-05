import 'package:flutter/material.dart';

class ImageAssetPage extends StatefulWidget {
  const ImageAssetPage({super.key});

  @override
  State<ImageAssetPage> createState() => _ImageAssetPageState();
}

class _ImageAssetPageState extends State<ImageAssetPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Image Asset',
          style: TextStyle(
            fontSize: 16.0,
            fontWeight: FontWeight.w600
          ),
        ),
      ),
      body: SafeArea(
        child: Center(
          child: ClipRRect(
            borderRadius: BorderRadius.circular(8.0),
            child: Image.asset(
              'assets/images/malioboro2.jpg',
              width: 300.0,
              height: 300.0,
              fit: BoxFit.cover,
              filterQuality: FilterQuality.medium,
            ),
          )
        ),
      ),
    );
  }
}