import 'package:flutter/material.dart';
import 'package:quick_note/model/menu_model.dart';

class Bab4HorizontalListviewPage extends StatefulWidget {
  const Bab4HorizontalListviewPage({super.key});

  @override
  State<Bab4HorizontalListviewPage> createState() => _Bab4HorizontalListviewPageState();
}

class _Bab4HorizontalListviewPageState extends State<Bab4HorizontalListviewPage> {

  List<MenuModel> listMenu = <MenuModel>[
    MenuModel(
      icon: Icons.motorcycle_rounded,
      title: 'GoRide',
    ),
    MenuModel(
      icon: Icons.directions_car_rounded,
      title: 'GoCar',
    ),
    MenuModel(
      icon: Icons.food_bank_rounded,
      title: 'GoFood',
    ),
    MenuModel(
      icon: Icons.send_rounded,
      title: 'GoSend',
    ),
    MenuModel(
      icon: Icons.shopping_cart_rounded,
      title: 'GoMart',
    ),
    MenuModel(
      icon: Icons.receipt_rounded,
      title: 'GoTagihan',
    ),
    MenuModel(
      icon: Icons.route_rounded,
      title: 'GoTransit',
    ),
    MenuModel(
      icon: Icons.shopping_bag_rounded,
      title: 'GoShop',
    ),
    MenuModel(
      icon: Icons.archive_rounded,
      title: 'GoBox',
    ),
    MenuModel(
      icon: Icons.directions_bus_filled_rounded,
      title: 'GoBlueBird',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Horizontal ListView',
          style: TextStyle(
            fontSize: 16.0,
            fontWeight: FontWeight.w600
          ),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(
            vertical: 16.0
          ),
          physics: const BouncingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 16.0
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Horizontal Menu Grid',
                      style: TextStyle(
                        fontSize: 22.0,
                        fontWeight: FontWeight.w600
                      ),
                    ),
                    SizedBox(height: 3.0,),
                    Text(
                      'Gunakan: GridView.builder, Column, Container, Icon, Text dan SizedBox',
                      style: TextStyle(
                        fontSize: 14.0,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 16.0,),
              SizedBox(
                width: double.maxFinite,
                height: 200.0,
                child: GridView.builder(
                  itemCount: listMenu.length,
                  shrinkWrap: true,
                  physics: const BouncingScrollPhysics(),
                  padding: const EdgeInsets.all(16.0),
                  scrollDirection: Axis.horizontal,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 12.0,
                    crossAxisSpacing: 12.0,
                    childAspectRatio: 1/1
                  ),
                  itemBuilder: (context, index) => Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        padding: const EdgeInsets.all(8.0),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        child: Icon(
                          listMenu[index].icon,
                          size: 32.0,
                        ),
                      ),
                      const SizedBox(height: 8.0,),
                      Text(
                        listMenu[index].title,
                        style: const TextStyle(
                          fontSize: 12.0,
                          fontWeight: FontWeight.w600
                        ),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        )
      ),
    );
  }
}