import 'package:flutter/material.dart';
import 'package:quick_note/core/routes/app_routes.dart';
import 'package:quick_note/model/menu_model.dart';

class Bab6Page extends StatefulWidget {
  const Bab6Page({super.key});

  @override
  State<Bab6Page> createState() => _Bab6PageState();
}

class _Bab6PageState extends State<Bab6Page> {

  List<MenuModel> listMenu = <MenuModel>[
    MenuModel(
      title: 'PushNavigator', 
      route: AppRoutes.pushNavRoute
    ),
    MenuModel(
      title: 'PushReplacement Navigator', 
      route: AppRoutes.pushReplaceNavRoute
    ),
    MenuModel(
      title: 'PushAndRemoveUntil Navigator', 
      route: AppRoutes.pushRemoveUntilNavRoute
    ),
  ];

  List<MenuModel> listPraktikMenu = <MenuModel>[
    
  ];
  
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
              // ExpansionTile(
              //   dense: true,
              //   initiallyExpanded: true,
              //   title: const Text(
              //     'Praktikum',
              //     style: TextStyle(
              //       fontSize: 16.0,
              //       fontWeight: FontWeight.w600
              //     ),
              //   ),
              //   childrenPadding: const EdgeInsets.symmetric(
              //     horizontal: 16.0
              //   ),
              //   children: [
              //     ListView.separated(
              //       itemCount: listPraktikMenu.length,
              //       shrinkWrap: true,
              //       padding: EdgeInsets.zero,
              //       physics: const BouncingScrollPhysics(),
              //       itemBuilder: (context, index) => ListTile(
              //         onTap: () => Navigator.of(context).pushNamed(listPraktikMenu[index].route!),
              //         dense: true,
              //         title: Text(
              //           listPraktikMenu[index].title,
              //           style: const TextStyle(
              //             fontSize: 16.0
              //           ),
              //         ),
              //         trailing: Transform.translate(
              //           offset: const Offset(12.0, 0.0),
              //           child: const Icon(
              //             Icons.chevron_right_rounded
              //           ),
              //         ),
              //       ),
              //       separatorBuilder: (context, index) => const Divider(height: 0.0,),
              //     )
              //   ],
              // ),
            ],
          ),
        )
      ),
    );
  }
}