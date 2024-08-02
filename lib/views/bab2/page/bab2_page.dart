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
      title: 'IconButton', 
      route: '/bab2/iconbutton'
    ),
    MenuModel(
      title: 'TextButton', 
      route: '/bab2/textbutton'
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
        title: Text(
          'Bab 2 Widget/Component'.toUpperCase(),
          style: const TextStyle(
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
              ExpansionTile(
                dense: true,
                initiallyExpanded: true,
                title: const Text(
                  'Materi',
                  style: TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.w600
                  ),
                ),
                childrenPadding: const EdgeInsets.symmetric(
                  horizontal: 16.0
                ),
                children: [
                  ListView.separated(
                    itemCount: listMenu.length,
                    shrinkWrap: true,
                    padding: EdgeInsets.zero,
                    physics: const BouncingScrollPhysics(),
                    itemBuilder: (context, index) => ListTile(
                      onTap: () => Navigator.of(context).pushNamed(listMenu[index].route),
                      dense: true,
                      title: Text(
                        listMenu[index].title,
                        style: const TextStyle(
                          fontSize: 16.0
                        ),
                      ),
                      trailing: Transform.translate(
                        offset: const Offset(12.0, 0.0),
                        child: const Icon(
                          Icons.chevron_right_rounded
                        ),
                      ),
                    ),
                    separatorBuilder: (context, index) => const Divider(height: 0.0,),
                  )
                ],
              ),
              const ExpansionTile(
                dense: true,
                title: Text(
                  'Tugas',
                  style: TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.w600
                  ),
                ),
                childrenPadding: EdgeInsets.symmetric(
                  horizontal: 16.0
                ),
                children: [],
              )
            ],
          ),
        )
      )
    );
  }
}