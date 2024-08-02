import 'package:flutter/material.dart';

class ColumnPage extends StatefulWidget {
  const ColumnPage({super.key});

  @override
  State<ColumnPage> createState() => _ColumnPageState();
}

class _ColumnPageState extends State<ColumnPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Column Widget'
        ),
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 100.0,
                height: 100.0,
                color: Colors.indigo,
              ),
              const SizedBox(height: 16.0,),
              Container(
                width: 100.0,
                height: 100.0,
                color: Colors.blue,
              ),
              const SizedBox(height: 16.0,),
              Container(
                width: 100.0,
                height: 100.0,
                color: Colors.green,
              ),
            ],
          )
        ),
      ),
    );
  }
}