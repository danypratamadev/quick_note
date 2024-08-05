import 'package:flutter/material.dart';
import 'package:quick_note/core/routes/app_routes.dart';
import 'package:quick_note/model/menu_model.dart';

class Bab23Page extends StatefulWidget {
  const Bab23Page({super.key});

  @override
  State<Bab23Page> createState() => _Bab23PageState();
}

class _Bab23PageState extends State<Bab23Page> {

  List<MenuModel> listMenu = <MenuModel>[
    MenuModel(
      title: 'Center', 
      route: AppRoutes.centerRoute
    ),
    MenuModel(
      title: 'SizedBox', 
      route: AppRoutes.sizedboxRoute
    ),
    MenuModel(
      title: 'Text', 
      route: AppRoutes.textRoute
    ),
    MenuModel(
      title: 'Expanded', 
      route: AppRoutes.expandedRoute
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
      title: 'Stack & Positioned', 
      route: AppRoutes.stackRoute
    ),
    MenuModel(
      title: 'SingleChildScrollView', 
      route: AppRoutes.singleScrollRoute
    ),
    MenuModel(
      title: 'Padding', 
      route: AppRoutes.paddingRoute
    ),
    MenuModel(
      title: 'Align', 
      route: AppRoutes.alignRoute
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
      title: 'Icon', 
      route: AppRoutes.iconRoute
    ),
    MenuModel(
      title: 'Switch', 
      route: AppRoutes.switchRoute
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