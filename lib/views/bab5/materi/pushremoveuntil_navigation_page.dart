import 'package:flutter/material.dart';
import 'package:quick_note/views/bab5/bab5_detail_page.dart';

class PushremoveuntilNavigationPage extends StatefulWidget {
  const PushremoveuntilNavigationPage({super.key});

  @override
  State<PushremoveuntilNavigationPage> createState() => _PushremoveuntilNavigationPageState();
}

class _PushremoveuntilNavigationPageState extends State<PushremoveuntilNavigationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Push RemoveUntil Navigation',
          style: TextStyle(
            fontSize: 16.0,
            fontWeight: FontWeight.w600
          ),
        ),
      ),
      body: SafeArea(
        child: Center(
          child: ElevatedButton(
            onPressed: () => Navigator.pushAndRemoveUntil(context, 
              MaterialPageRoute(builder: (context) => const Bab5DetailPage(),),
                (route) => false,),
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.red,
              foregroundColor: Colors.white
            ),
            child: const Text(
              'Go to Detail Page'
            )
          ),
        )
      ),
    );
  }
}