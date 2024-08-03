import 'package:flutter/material.dart';

class GridviewBuilderPage extends StatefulWidget {
  const GridviewBuilderPage({super.key});

  @override
  State<GridviewBuilderPage> createState() => _GridviewBuilderPageState();
}

class _GridviewBuilderPageState extends State<GridviewBuilderPage> {

  List<String> listProduct = List<String>.generate(50, (index) => 'Product $index');
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'GridView Builder',
          style: TextStyle(
            fontSize: 16.0,
            fontWeight: FontWeight.w600
          ),
        ),
      ),
      body: SafeArea(
        child: GridView.builder(
          itemCount: listProduct.length,
          shrinkWrap: true,
          physics: const BouncingScrollPhysics(),
          padding: const EdgeInsets.all(16.0),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            mainAxisSpacing: 12.0,
            crossAxisSpacing: 12.0,
          ),
          itemBuilder: (context, index) => Container(
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
          )
        )
      ),
    );
  }
}