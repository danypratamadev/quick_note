import 'package:flutter/material.dart';
import 'package:quick_note/model/menu_model.dart';

class Bab2Page extends StatefulWidget {
  const Bab2Page({super.key});

  @override
  State<Bab2Page> createState() => _Bab2PageState();
}

class _Bab2PageState extends State<Bab2Page> {

  List<MenuModel> listMenu = <MenuModel>[
    MenuModel(
      title: 'Text', 
      route: '/bab2/text'
    ),
    MenuModel(
      title: 'Container', 
      route: '/bab2/container'
    ),
    MenuModel(
      title: 'Row', 
      route: '/bab2/row'
    ),
    MenuModel(
      title: 'Column', 
      route: '/bab2/column'
    ),
    MenuModel(
      title: 'Column & Row', 
      route: '/bab2/column-row'
    ),
    MenuModel(
      title: 'ElevatedButton', 
      route: '/bab2/elevatedbutton'
    ),
    MenuModel(
      title: 'TextField', 
      route: '/bab2/textfield'
    ),
    MenuModel(
      title: 'Icon', 
      route: '/bab2/icon'
    ),
    MenuModel(
      title: 'Image Network', 
      route: '/bab2/image-network'
    ),
    MenuModel(
      title: 'Image Asset', 
      route: '/bab2/image-asset'
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Bab 2 Widget'
        ),
      ),
      body: GridView.builder(
        itemCount: listMenu.length,
        shrinkWrap: true,
        physics: const BouncingScrollPhysics(),
        padding: const EdgeInsets.all(16.0),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 12.0,
          crossAxisSpacing: 12.0,
        ), 
        itemBuilder: (context, index) => GestureDetector(
          onTap: () => Navigator.of(context).pushNamed(listMenu[index].route),
          child: Container(
            decoration: BoxDecoration(
              color: Colors.grey.shade300,
              borderRadius: BorderRadius.circular(8.0)
            ),
            child: Center(
              child: Text(
                listMenu[index].title,
                style: const TextStyle(
                  fontSize: 16.0
                ),
              ),
            ),
          ),
        ),
      )
    );
  }
}