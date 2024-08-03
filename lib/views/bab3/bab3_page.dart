import 'package:flutter/material.dart';
import 'package:quick_note/core/routes/app_routes.dart';
import 'package:quick_note/model/menu_model.dart';

class Bab3Page extends StatefulWidget {
  const Bab3Page({super.key});

  @override
  State<Bab3Page> createState() => _Bab3PageState();
}

class _Bab3PageState extends State<Bab3Page> {

  List<MenuModel> listMenu = <MenuModel>[
    MenuModel(
      title: 'ListView Builder', 
      route: AppRoutes.listViewBuilderRoute
    ),
    MenuModel(
      title: 'ListView Separated', 
      route: AppRoutes.listViewSeparatedRoute
    ),
    MenuModel(
      title: 'ListView Custom', 
      route: AppRoutes.listViewCustomRoute
    ),
    MenuModel(
      title: 'ListView', 
      route: AppRoutes.listViewRoute
    ),
  ];
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'ListView',
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
                  ListTile(
                    dense: true,
                    title: const Text(
                      'Vertical ListView',
                      style: TextStyle(
                        fontSize: 16.0,
                      ),
                    ),
                    trailing: Transform.translate(
                      offset: const Offset(0.0, 0.0),
                      child: Transform.translate(
                        offset: const Offset(12.0, 0.0),
                        child: const Icon(
                          Icons.chevron_right_rounded
                        ),
                      ),
                    ),
                    onTap: () => Navigator.of(context).pushNamed(AppRoutes.bab3VerticalRoute),
                  ),
                  const Divider(height: 0.0,),
                  ListTile(
                    dense: true,
                    title: const Text(
                      'Horizontal ListView',
                      style: TextStyle(
                        fontSize: 16.0,
                      ),
                    ),
                    trailing: Transform.translate(
                      offset: const Offset(12.0, 0.0),
                      child: const Icon(
                        Icons.chevron_right_rounded
                      ),
                    ),
                    onTap: () => Navigator.of(context).pushNamed(AppRoutes.bab3HorizontalRoute),
                  ),
                ],
              ),
            ],
          ),
        )
      ),
    );
  }
}