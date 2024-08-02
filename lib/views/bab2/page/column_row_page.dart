import 'package:flutter/material.dart';

class ColumnRowPage extends StatefulWidget {
  const ColumnRowPage({super.key});

  @override
  State<ColumnRowPage> createState() => _ColumnRowPageState();
}

class _ColumnRowPageState extends State<ColumnRowPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Column & Row'.toUpperCase(),
          style: const TextStyle(
            fontSize: 16.0,
            fontWeight: FontWeight.w600
          ),
        ),
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 100.0,
                    height: 100.0,
                    color: Colors.indigo,
                  ),
                  const SizedBox(width: 16.0,),
                  Container(
                    width: 100.0,
                    height: 100.0,
                    color: Colors.blue,
                  ),
                  const SizedBox(width: 16.0,),
                  Container(
                    width: 100.0,
                    height: 100.0,
                    color: Colors.green,
                  ),
                ],
              ),
              const SizedBox(height: 16.0,),
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