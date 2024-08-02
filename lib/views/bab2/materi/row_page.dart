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
          'Row',
          style: TextStyle(
            fontSize: 16.0,
            fontWeight: FontWeight.w600
          ),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16.0),
          physics: const BouncingScrollPhysics(),
          child: Column(
            children: [
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Text 1'
                  ),
                  SizedBox(width: 24.0,),
                  Text(
                    'Text 2'
                  ),
                  SizedBox(width: 24.0,),
                  Text(
                    'Text 3'
                  ),
                ],
              ),
              const SizedBox(height: 32.0,),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.person_rounded,
                  ),
                  SizedBox(width: 24.0,),
                  Icon(
                    Icons.notifications_rounded,
                  ),
                  SizedBox(width: 24.0,),
                  Icon(
                    Icons.info_rounded,
                  ),
                ],
              ),
              const SizedBox(height: 32.0,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 50.0,
                    height: 50.0,
                    color: Colors.indigo,
                  ),
                  const SizedBox(width: 16.0,),
                  Container(
                    width: 50.0,
                    height: 50.0,
                    color: Colors.blue,
                  ),
                  const SizedBox(width: 16.0,),
                  Container(
                    width: 50.0,
                    height: 50.0,
                    color: Colors.green,
                  ),
                ],
              ),
              const SizedBox(height: 32.0,),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    width: 50.0,
                    height: 50.0,
                    color: Colors.indigo,
                  ),
                  const SizedBox(width: 16.0,),
                  Container(
                    width: 50.0,
                    height: 50.0,
                    color: Colors.blue,
                  ),
                  const SizedBox(width: 16.0,),
                  Container(
                    width: 50.0,
                    height: 50.0,
                    color: Colors.green,
                  ),
                ],
              ),
              const SizedBox(height: 32.0,),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    width: 50.0,
                    height: 50.0,
                    color: Colors.indigo,
                  ),
                  const SizedBox(width: 16.0,),
                  Container(
                    width: 50.0,
                    height: 50.0,
                    color: Colors.blue,
                  ),
                  const SizedBox(width: 16.0,),
                  Container(
                    width: 50.0,
                    height: 50.0,
                    color: Colors.green,
                  ),
                ],
              ),
              const SizedBox(height: 32.0,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 50.0,
                    height: 50.0,
                    color: Colors.indigo,
                  ),
                  const SizedBox(width: 16.0,),
                  Container(
                    width: 50.0,
                    height: 50.0,
                    color: Colors.blue,
                  ),
                  const SizedBox(width: 16.0,),
                  Container(
                    width: 50.0,
                    height: 50.0,
                    color: Colors.green,
                  ),
                ],
              ),
              const SizedBox(height: 32.0,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    width: 50.0,
                    height: 50.0,
                    color: Colors.indigo,
                  ),
                  const SizedBox(width: 16.0,),
                  Container(
                    width: 50.0,
                    height: 50.0,
                    color: Colors.blue,
                  ),
                  const SizedBox(width: 16.0,),
                  Container(
                    width: 50.0,
                    height: 50.0,
                    color: Colors.green,
                  ),
                ],
              ),
              const SizedBox(height: 32.0,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    width: 50.0,
                    height: 50.0,
                    color: Colors.indigo,
                  ),
                  const SizedBox(width: 16.0,),
                  Container(
                    width: 50.0,
                    height: 50.0,
                    color: Colors.blue,
                  ),
                  const SizedBox(width: 16.0,),
                  Container(
                    width: 50.0,
                    height: 50.0,
                    color: Colors.green,
                  ),
                ],
              ),
            ],
          )
        ),
      ),
    );
  }
}