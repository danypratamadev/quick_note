import 'package:flutter/material.dart';

class GridviewCustomPage extends StatefulWidget {
  const GridviewCustomPage({super.key});

  @override
  State<GridviewCustomPage> createState() => _GridviewCustomPageState();
}

class _GridviewCustomPageState extends State<GridviewCustomPage> {

  List<String> listProduct = List<String>.generate(50, (index) => 'Product $index');
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'GridView Custom',
          style: TextStyle(
            fontSize: 16.0,
            fontWeight: FontWeight.w600
          ),
        ),
      ),
      body: SafeArea(
        child: GridView.custom(
          shrinkWrap: true,
          physics: const BouncingScrollPhysics(),
          padding: const EdgeInsets.all(16.0),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            mainAxisSpacing: 12.0,
            crossAxisSpacing: 12.0,
          ),
          childrenDelegate: SliverChildBuilderDelegate((context, index) => Container(
            decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: Center(
                child: Text(
                  listProduct[index],
                  style: const TextStyle(
                    fontSize: 16.0,
                    color: Colors.white
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            childCount: listProduct.length
          ),
        )
      ),
    );
  }
}