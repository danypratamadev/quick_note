import 'package:flutter/material.dart';

class RowPage extends StatefulWidget {
  const RowPage({super.key});

  @override
  State<RowPage> createState() => _RowPageState();
}

class _RowPageState extends State<RowPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Row Widget'
        ),
      ),
      body: Center(
        child: Row(
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
        )
      ),
    );
  }
}