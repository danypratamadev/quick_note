import 'package:flutter/material.dart';
import 'package:quick_note/core/routes/app_routes.dart';
import 'package:quick_note/model/menu_model.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  List<MenuModel> listMenu = <MenuModel>[
    MenuModel(
      title: 'Materi 2',
      subtitle: 'Widget/Component', 
      caption: '10 Materi', 
      route: AppRoutes.bab2Route
    ),
    MenuModel(
      title: 'Materi 3',
      subtitle: 'ListView', 
      caption: '4 Materi', 
      route: AppRoutes.bab3Route
    ),
    MenuModel(
      title: 'Materi 4',
      subtitle: 'GridView', 
      caption: '4 Materi', 
      route: AppRoutes.bab4Route
    ),
    MenuModel(
      title: 'Materi 5',
      subtitle: 'Navigation', 
      caption: '4 Materi', 
      route: AppRoutes.bab5Route
    ),
    MenuModel(
      title: 'Materi 6',
      subtitle: 'Rest API', 
      caption: '4 Materi', 
      route: AppRoutes.bab5Route
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Mobile & Web Services',
          style: TextStyle(
            fontSize: 16.0,
            fontWeight: FontWeight.w600
          ),
        ),
      ),
      body: SafeArea(
        child: ListView.separated(
          itemCount: listMenu.length,
          shrinkWrap: true,
          physics: const BouncingScrollPhysics(),
          padding: const EdgeInsets.all(16.0),
          itemBuilder: (context, index) => ClipRRect(
            borderRadius: BorderRadius.circular(8.0),
            child: Material(
              color: Colors.white,
              child: InkWell(
                onTap: () => Navigator.of(context).pushNamed(listMenu[index].route!),
                child: Container(
                  constraints: const BoxConstraints(
                    minHeight: 72.0
                  ),
                  padding: const EdgeInsets.all(16.0),
                  child: Row(
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Material(
                              color: Colors.blue.shade50,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(3.0)
                              ),
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 6.0,
                                  vertical: 2.0
                                ),
                                child: Text(
                                  listMenu[index].title.toUpperCase(),
                                  style: TextStyle(
                                    fontSize: 10.0,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.blue.shade600
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(height: 5.0,),
                            Text(
                              listMenu[index].subtitle ?? '',
                              style: const TextStyle(
                                fontSize: 16.0,
                                fontWeight: FontWeight.w600
                              ),
                            ),
                            const SizedBox(height: 12.0,),
                            Text(
                              listMenu[index].caption ?? '',
                              style: const TextStyle(
                                fontSize: 14.0,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(width: 16.0,),
                      const Icon(
                        Icons.chevron_right_rounded,
                      )
                    ],
                  ),
                ),
              ),
            ),
          ), 
          separatorBuilder: (context, index) => const SizedBox(height: 16.0,), 
        ),
      ),
    );
  }
}