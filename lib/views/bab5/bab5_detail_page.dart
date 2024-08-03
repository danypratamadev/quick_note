import 'package:flutter/material.dart';

class Bab5DetailPage extends StatefulWidget {
  const Bab5DetailPage({super.key});

  @override
  State<Bab5DetailPage> createState() => _Bab5DetailPageState();
}

class _Bab5DetailPageState extends State<Bab5DetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Detail',
          style: TextStyle(
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
              const Text(
                'Landing on Detail Page',
                style: TextStyle(
                  fontSize: 24.0,
                  fontWeight: FontWeight.w600
                ),
              ),
              const SizedBox(height: 16.0,),
              ElevatedButton.icon(
                onPressed: () => Navigator.pop(context),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.red,
                  foregroundColor: Colors.white
                ),
                icon: const Icon(
                  Icons.arrow_back_rounded
                ),
                label: const Text(
                  'Back'
                )
              ),
            ],
          ),
        )
      ),
    );
  }
}