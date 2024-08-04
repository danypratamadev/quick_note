import 'package:flutter/material.dart';
import 'package:quick_note/core/utils/toast.dart';
import 'package:quick_note/model/user_model.dart';

class Bab3HorizontalListviewPage extends StatefulWidget {
  const Bab3HorizontalListviewPage({super.key});

  @override
  State<Bab3HorizontalListviewPage> createState() => _Bab3HorizontalListviewPageState();
}

class _Bab3HorizontalListviewPageState extends State<Bab3HorizontalListviewPage> {

  List<String> listButton = <String>[
    'All',
    'Music',
    'Podcasts',
    'Gaming',
    'Live',
    'Mixes',
    'Recently uploaded',
    'New to you',
  ];

  List<String> listImage = <String>[
    'assets/images/malioboro.jpg',
    'assets/images/malioboro2.jpg',
    'assets/images/malioboro.jpg',
    'assets/images/malioboro2.jpg',
  ];

  List<UserModel> listUser = <UserModel>[
    UserModel(
      avatar: 'assets/images/avatar.png', 
      name: 'Andi Santoso'
    ),
    UserModel(
      avatar: 'assets/images/avatar.png', 
      name: 'Rina Kusuma'
    ),
    UserModel(
      avatar: 'assets/images/avatar.png', 
      name: 'Budi Prasetyo'
    ),
    UserModel(
      avatar: 'assets/images/avatar.png', 
      name: 'Siti Aisyah'
    ),
    UserModel(
      avatar: 'assets/images/avatar.png', 
      name: 'Dedi Saputra'
    ),
    UserModel(
      avatar: 'assets/images/avatar.png', 
      name: 'Maya Sari'
    ),
    UserModel(
      avatar: 'assets/images/avatar.png', 
      name: 'Agus Wijaya'
    ),
    UserModel(
      avatar: 'assets/images/avatar.png', 
      name: 'Intan Permata'
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
                      '1. List Button',
                      style: TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.w600
                      ),
                    ),
                    SizedBox(height: 3.0,),
                    Text(
                      'Gunakan: ListView.separated, LimitedBox, ElevatedButton, Text dan SizedBox',
                      style: TextStyle(
                        fontSize: 14.0,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 16.0,),
              LimitedBox(
                maxHeight: 45,
                child: ListView.separated(
                  itemCount: listButton.length,
                  shrinkWrap: true,
                  physics: const BouncingScrollPhysics(),
                  padding: const EdgeInsets.symmetric(
                    horizontal: 16.0,
                    vertical: 3.0
                  ),
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) => ElevatedButton(
                    onPressed: () => AppToast.show(message: listButton[index]),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: index == 0 ? Colors.blue : null,
                      foregroundColor: index == 0 ? Colors.white : null,
                    ), 
                    child: Text(
                      listButton[index],
                      style: const TextStyle(
                        fontSize: 14.0
                      ),
                    ),
                  ),
                  separatorBuilder: (context, index) => const SizedBox(width: 16.0),
                ),
              ),
              const SizedBox(height: 24.0,),
              const Divider(),
              const SizedBox(height: 24.0,),
              const Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 16.0
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '2. List Image',
                      style: TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.w600
                      ),
                    ),
                    SizedBox(height: 3.0,),
                    Text(
                      'Gunakan: ListView.separated, LimitedBox, ClipRRect, Image.assets dan SizedBox',
                      style: TextStyle(
                        fontSize: 14.0,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 16.0,),
              LimitedBox(
                maxHeight: 200.0,
                child: ListView.separated(
                  itemCount: listImage.length,
                  shrinkWrap: true,
                  physics: const BouncingScrollPhysics(),
                  padding: const EdgeInsets.symmetric(
                    horizontal: 16.0
                  ),
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) => ClipRRect(
                    borderRadius: BorderRadius.circular(8.0),
                    child: Image.asset(
                      listImage[index],
                      width: 300,
                      fit: BoxFit.cover,
                      filterQuality: FilterQuality.medium,
                    ),
                  ),
                  separatorBuilder: (context, index) => const SizedBox(width: 16.0),
                ),
              ),
              const SizedBox(height: 32.0,),
              const Divider(),
              const SizedBox(height: 24.0,),
              const Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 16.0
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '3. List Avatar User',
                      style: TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.w600
                      ),
                    ),
                    SizedBox(height: 3.0,),
                    Text(
                      'Gunakan: ListView.separated, LimitedBox, Column, Image.asset, Text dan SizedBox',
                      style: TextStyle(
                        fontSize: 14.0,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 16.0,),
              LimitedBox(
                maxHeight: 97.0,
                child: ListView.separated(
                  itemCount: listUser.length,
                  shrinkWrap: true,
                  physics: const BouncingScrollPhysics(),
                  padding: const EdgeInsets.symmetric(
                    horizontal: 16.0,
                    vertical: 8.0
                  ),
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) => LimitedBox(
                    maxWidth: 55.0,
                    child: Column(
                      children: [
                        Image.asset(
                          listUser[index].avatar,
                          height: 50.0,
                        ),
                        const SizedBox(height: 3.0,),
                        Text(
                          listUser[index].name,
                          style: const TextStyle(
                            fontSize: 10.0,
                            fontWeight: FontWeight.w500
                          ),
                          textAlign: TextAlign.center,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        )
                      ],
                    ),
                  ),
                  separatorBuilder: (context, index) => const SizedBox(width: 16.0),
                ),
              ),
            ],
          ),
        )
      ),
    );
  }
}