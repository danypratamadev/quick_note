import 'package:flutter/material.dart';

class Bab4Page extends StatefulWidget {
  const Bab4Page({super.key});

  @override
  State<Bab4Page> createState() => _Bab4PageState();
}

class _Bab4PageState extends State<Bab4Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'GridView',
          style: TextStyle(
            fontSize: 16.0,
            fontWeight: FontWeight.w600
          ),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            children: [
              const ExpansionTile(
                dense: true,
                initiallyExpanded: true,
                title: Text(
                  'Materi',
                  style: TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.w600
                  ),
                ),
                childrenPadding: EdgeInsets.symmetric(
                  horizontal: 16.0
                ),
                children: [
                  // ListView.separated(
                  //   itemCount: listMenu.length,
                  //   shrinkWrap: true,
                  //   padding: EdgeInsets.zero,
                  //   physics: const BouncingScrollPhysics(),
                  //   itemBuilder: (context, index) => ListTile(
                  //     onTap: () => Navigator.of(context).pushNamed(listMenu[index].route),
                  //     dense: true,
                  //     title: Text(
                  //       listMenu[index].title,
                  //       style: const TextStyle(
                  //         fontSize: 16.0
                  //       ),
                  //     ),
                  //     trailing: Transform.translate(
                  //       offset: const Offset(12.0, 0.0),
                  //       child: const Icon(
                  //         Icons.chevron_right_rounded
                  //       ),
                  //     ),
                  //   ),
                  //   separatorBuilder: (context, index) => const Divider(height: 0.0,),
                  // )
                ],
              ),
              ListTile(
                dense: true,
                title: const Text(
                  'Praktikum',
                  style: TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.w600
                  ),
                ),
                trailing: Transform.translate(
                  offset: const Offset(0.0, 0.0),
                  child: const Icon(
                    Icons.chevron_right_rounded
                  ),
                ),
                onTap: () => Navigator.of(context).pushNamed('/bab2/praktik'),
              )
            ],
          ),
        )
      ),
    );
  }
}