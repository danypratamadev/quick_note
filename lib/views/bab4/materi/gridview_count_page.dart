import 'package:flutter/material.dart';

class GridviewCountPage extends StatefulWidget {
  const GridviewCountPage({super.key});

  @override
  State<GridviewCountPage> createState() => _GridviewCountPageState();
}

class _GridviewCountPageState extends State<GridviewCountPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'GridView Count',
          style: TextStyle(
            fontSize: 16.0,
            fontWeight: FontWeight.w600
          ),
        ),
      ),
      body: SafeArea(
        child: GridView.count(
          crossAxisCount: 3,
          mainAxisSpacing: 12.0,
          crossAxisSpacing: 12.0,
          shrinkWrap: true,
          physics: const BouncingScrollPhysics(),
          padding: const EdgeInsets.all(16.0),
          children: List.generate(50, (index) => Container(
            decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.circular(8.0),
            ),
            child: Center(
              child: Text(
                'Product $index',
                style: const TextStyle(
                  fontSize: 16.0,
                  color: Colors.white
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ))
        )
      ),
    );
  }
}