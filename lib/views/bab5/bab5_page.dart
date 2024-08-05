import 'package:flutter/material.dart';
import 'package:quick_note/core/routes/app_routes.dart';
import 'package:quick_note/model/menu_model.dart';

class Bab5Page extends StatefulWidget {
  const Bab5Page({super.key});

  @override
  State<Bab5Page> createState() => _Bab5PageState();
}

class _Bab5PageState extends State<Bab5Page> {

  List<MenuModel> listMenu = <MenuModel>[
    MenuModel(
      title: 'GridView Count', 
      route: AppRoutes.gridViewCountRoute
    ),
    MenuModel(
      title: 'GridView Extent', 
      route: AppRoutes.gridViewExtentRoute
    ),
    MenuModel(
      title: 'GridView Builder', 
      route: AppRoutes.gridViewBuilderRoute
    ),
    MenuModel(
      title: 'GridView Custom', 
      route: AppRoutes.gridViewCustomRoute
    ),
  ];

  List<MenuModel> listPraktikMenu = <MenuModel>[
    MenuModel(
      title: 'Vertical GridView', 
      route: AppRoutes.bab5VerticalRoute
    ),
    MenuModel(
      title: 'Horizontal GridView', 
      route: AppRoutes.bab5HorizontalRoute
    ),
  ];
  
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
              ExpansionTile(
                dense: true,
                initiallyExpanded: true,
                title: const Text(
                  'Praktikum',
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
                    itemCount: listPraktikMenu.length,
                    shrinkWrap: true,
                    padding: EdgeInsets.zero,
                    physics: const BouncingScrollPhysics(),
                    itemBuilder: (context, index) => ListTile(
                      onTap: () => Navigator.of(context).pushNamed(listPraktikMenu[index].route!),
                      dense: true,
                      title: Text(
                        listPraktikMenu[index].title,
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
            ],
          ),
        )
      ),
    );
  }
}