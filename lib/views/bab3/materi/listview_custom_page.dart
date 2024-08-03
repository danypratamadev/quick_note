import 'package:flutter/material.dart';

class ListviewCustomPage extends StatefulWidget {
  const ListviewCustomPage({super.key});

  @override
  State<ListviewCustomPage> createState() => _ListviewCustomPageState();
}

class _ListviewCustomPageState extends State<ListviewCustomPage> {

  List<String> listData = List<String>.generate(100, (index) => 'Data $index');
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'ListView Custom',
          style: TextStyle(
            fontSize: 16.0,
            fontWeight: FontWeight.w600
          ),
        ),
      ),
      body: SafeArea(
        child: ListView.custom(
          shrinkWrap: true,
          physics: const BouncingScrollPhysics(),
          padding: EdgeInsets.zero,
          childrenDelegate: SliverChildBuilderDelegate(
            (context, index) => ListTile(
              dense: true,
              title: Text(
                listData[index],
                style: const TextStyle(
                  fontSize: 16.0
                ),
              ),
            ),
            childCount: listData.length,
          ),
        )
      ),
    );
  }
}