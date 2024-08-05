import 'package:flutter/material.dart';

class ContainerPage extends StatefulWidget {
  const ContainerPage({super.key});

  @override
  State<ContainerPage> createState() => _ContainerPageState();
}

class _ContainerPageState extends State<ContainerPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Container',
          style: TextStyle(
            fontSize: 16.0,
            fontWeight: FontWeight.w600
          ),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              const SizedBox(width: double.maxFinite,),
              Container(
                width: 200.0,
                height: 100.0,
                decoration: const BoxDecoration(
                  color: Colors.indigo,
                  shape: BoxShape.rectangle
                ),
              ),
              const SizedBox(height: 16.0,),
              Container(
                width: 100.0,
                height: 100.0,
                decoration: const BoxDecoration(
                  color: Colors.indigo,
                  shape: BoxShape.circle
                ),
              ),
              const SizedBox(height: 16.0,),
              Container(
                width: 200.0,
                height: 100.0,
                decoration: BoxDecoration(
                  color: Colors.indigo,
                  borderRadius: BorderRadius.circular(8.0),
                ),
                child: const Center(
                  child: Text(
                    'Hello World!',
                    style: TextStyle(
                      fontSize: 24.0,
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 16.0,),
              Container(
                width: 200.0,
                height: 100.0,
                decoration: BoxDecoration(
                  gradient: const LinearGradient(
                    colors: [
                      Colors.indigo,
                      Colors.blue,
                    ]
                  ),
                  borderRadius: BorderRadius.circular(8.0),
                ),
                child: const Center(
                  child: Text(
                    'Hello World!',
                    style: TextStyle(
                      fontSize: 24.0,
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 16.0,),
              Container(
                width: 200.0,
                height: 100.0,
                decoration: BoxDecoration(
                  color: Colors.indigo.shade50,
                  borderRadius: BorderRadius.circular(8.0),
                  border: Border.all(
                    color: Colors.indigo.shade300,
                    width: 1.0
                  )
                ),
                child: const Center(
                  child: Text(
                    'Hello World!',
                    style: TextStyle(
                      fontSize: 24.0,
                      fontWeight: FontWeight.w600,
                      color: Colors.indigo,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 16.0,),
              Container(
                width: 200.0,
                height: 100.0,
                decoration: BoxDecoration(
                  color: Colors.indigo.shade50,
                  borderRadius: BorderRadius.circular(8.0),
                  border: Border.all(
                    color: Colors.indigo.shade300,
                    width: 1.0
                  ),
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.black12,
                      blurRadius: 16.0,
                      spreadRadius: 4.0,
                      offset: Offset(0.0, 4.0)
                    )
                  ],
                ),
                child: const Center(
                  child: Text(
                    'Hello World!',
                    style: TextStyle(
                      fontSize: 24.0,
                      fontWeight: FontWeight.w600,
                      color: Colors.indigo,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 16.0,),
              Container(
                width: 200.0,
                height: 200.0,
                padding: const EdgeInsets.all(16.0),
                margin: const EdgeInsets.all(16.0),
                decoration: BoxDecoration(
                  color: Colors.indigo,
                  borderRadius: BorderRadius.circular(8.0),
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.black26,
                      blurRadius: 12.0,
                      spreadRadius: 4.0,
                      offset: Offset(0.0, 4.0)
                    )
                  ]
                ),
                child: const Center(
                  child: Text(
                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
                    style: TextStyle(
                      fontSize: 20.0,
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}