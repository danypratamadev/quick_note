import 'package:flutter/material.dart';
import 'package:quick_note/views/bab5/bab5_detail_page.dart';

class Bab5Page extends StatefulWidget {
  const Bab5Page({super.key});

  @override
  State<Bab5Page> createState() => _Bab5PageState();
}

class _Bab5PageState extends State<Bab5Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Navigation',
          style: TextStyle(
            fontSize: 16.0,
            fontWeight: FontWeight.w600
          ),
        ),
      ),
      body: SafeArea(
        child: Center(
          child: ElevatedButton(
            onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context) => const Bab5DetailPage(),)),
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.blue,
              foregroundColor: Colors.white
            ),
            child: const Text(
              'Go to Detail Page'
            )
          ),
        )
        // Padding(
        //   padding: const EdgeInsets.all(16.0),
        //   child: Column(
        //     crossAxisAlignment: CrossAxisAlignment.start,
        //     children: [
        //       const Text(
        //         '1. Navigator.push',
        //         style: TextStyle(
        //           fontSize: 22.0,
        //           fontWeight: FontWeight.w600
        //         ),
        //       ),
        //       const SizedBox(height: 3.0,),
        //       const Text(
        //         'Berpindah dari halaman ini ke halaman detail tanpa menghapus halaman ini dari tumpukan navigasi.',
        //         style: TextStyle(
        //           fontSize: 14.0,
        //         ),
        //       ),
        //       const SizedBox(height: 16.0,),
        //       ElevatedButton(
        //         onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context) => const Bab5DetailPage(),)),
        //         style: ElevatedButton.styleFrom(
        //           backgroundColor: Colors.blue,
        //           foregroundColor: Colors.white
        //         ),
        //         child: const Text(
        //           'Go to Detail Page'
        //         )
        //       ),
        //       const SizedBox(height: 24.0,),
        //       const Divider(height: 0.0,),
        //       const SizedBox(height: 24.0,),
        //       const Text(
        //         '2. Navigator.pushReplacement',
        //         style: TextStyle(
        //           fontSize: 22.0,
        //           fontWeight: FontWeight.w600
        //         ),
        //       ),
        //       const SizedBox(height: 3.0,),
        //       const Text(
        //         'Berpindah dari halaman ini ke halaman detail dan menghapus halaman ini dari tumpukan navigasi.',
        //         style: TextStyle(
        //           fontSize: 14.0,
        //         ),
        //       ),
        //       const SizedBox(height: 16.0,),
        //       ElevatedButton(
        //         onPressed: () => Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const Bab5DetailPage(),)),
        //         style: ElevatedButton.styleFrom(
        //           backgroundColor: Colors.indigo,
        //           foregroundColor: Colors.white
        //         ),
        //         child: const Text(
        //           'Go to Detail Page'
        //         )
        //       ),
        //       const SizedBox(height: 24.0,),
        //       const Divider(height: 0.0,),
        //       const SizedBox(height: 24.0,),
        //       const Text(
        //         '3. Navigator.pushAndRemoveUntil',
        //         style: TextStyle(
        //           fontSize: 22.0,
        //           fontWeight: FontWeight.w600
        //         ),
        //       ),
        //       const SizedBox(height: 3.0,),
        //       const Text(
        //         'Berpindah dari halaman ini ke halaman detail dan menghapus semua halaman sebelumnya dari tumpukan navigasi.',
        //         style: TextStyle(
        //           fontSize: 14.0,
        //         ),
        //       ),
        //       const SizedBox(height: 16.0,),
        //       ElevatedButton(
        //         onPressed: () => Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) => const Bab5DetailPage(),), (route) => false,),
        //         style: ElevatedButton.styleFrom(
        //           backgroundColor: Colors.red,
        //           foregroundColor: Colors.white
        //         ),
        //         child: const Text(
        //           'Go to Detail Page'
        //         )
        //       ),
        //     ],
        //   ),
        // ),
      ),
    );
  }
}