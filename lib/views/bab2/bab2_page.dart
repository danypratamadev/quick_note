import 'package:flutter/material.dart';
import 'package:quick_note/core/routes/app_routes.dart';
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
      route: AppRoutes.textRoute
    ),
    MenuModel(
      title: 'Icon', 
      route: AppRoutes.iconRoute
    ),
    MenuModel(
      title: 'Container', 
      route: AppRoutes.countainerRoute
    ),
    MenuModel(
      title: 'Row', 
      route: AppRoutes.rowRoute
    ),
    MenuModel(
      title: 'Column', 
      route: AppRoutes.columnRoute
    ),
    MenuModel(
      title: 'Column & Row', 
      route: AppRoutes.columnRowRoute
    ),
    MenuModel(
      title: 'Switch', 
      route: AppRoutes.switchRoute
    ),
    MenuModel(
      title: 'ElevatedButton', 
      route: AppRoutes.elevatedBtnRoute
    ),
    MenuModel(
      title: 'IconButton', 
      route: AppRoutes.iconBtnRoute
    ),
    MenuModel(
      title: 'TextButton', 
      route: AppRoutes.textBtnRoute
    ),
    MenuModel(
      title: 'TextField', 
      route: AppRoutes.textFieldRoute
    ),
    MenuModel(
      title: 'Image Asset', 
      route: AppRoutes.imgAssetRoute
    ),
    MenuModel(
      title: 'Image Network', 
      route: AppRoutes.imgNetworkRoute
    ),
    MenuModel(
      title: 'ListTile', 
      route: AppRoutes.listTileRoute
    ),
    MenuModel(
      title: 'ExpansionTile', 
      route: AppRoutes.expanTileRoute
    ),
    MenuModel(
      title: 'SingleChildScrollView', 
      route: AppRoutes.singleScrollRoute
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Widget/Component',
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
                      onTap: () => Navigator.of(context).pushNamed(listMenu[index].route!),
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
              const SizedBox(height: 16.0,),
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
                onTap: () => Navigator.of(context).pushNamed(AppRoutes.bab2PraktikRoute),
              )
            ],
          ),
        )
      )
    );
  }
}