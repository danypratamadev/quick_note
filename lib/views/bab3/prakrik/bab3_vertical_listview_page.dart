import 'package:flutter/material.dart';
import 'package:quick_note/model/user_model.dart';

class Bab3VerticalListviewPage extends StatefulWidget {
  const Bab3VerticalListviewPage({super.key});

  @override
  State<Bab3VerticalListviewPage> createState() => _Bab3VerticalListviewPageState();
}

class _Bab3VerticalListviewPageState extends State<Bab3VerticalListviewPage> {

  List<UserModel> listUser = <UserModel>[
    UserModel(
      avatar: 'assets/images/avatar.png', 
      name: 'Andi Santoso',
      npm: '5220411001'
    ),
    UserModel(
      avatar: 'assets/images/avatar.png', 
      name: 'Rina Kusuma',
      npm: '5220411002'
    ),
    UserModel(
      avatar: 'assets/images/avatar.png', 
      name: 'Budi Prasetyo',
      npm: '5220411003'
    ),
    UserModel(
      avatar: 'assets/images/avatar.png', 
      name: 'Siti Aisyah',
      npm: '5220411004'
    ),
    UserModel(
      avatar: 'assets/images/avatar.png', 
      name: 'Dedi Saputra',
      npm: '5220411005'
    ),
    UserModel(
      avatar: 'assets/images/avatar.png', 
      name: 'Maya Sari',
      npm: '5220411006'
    ),
    UserModel(
      avatar: 'assets/images/avatar.png', 
      name: 'Agus Wijaya',
      npm: '5220411007'
    ),
    UserModel(
      avatar: 'assets/images/avatar.png', 
      name: 'Intan Permata',
      npm: '5220411008'
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Vertical ListView',
          style: TextStyle(
            fontSize: 16.0,
            fontWeight: FontWeight.w600
          ),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16.0),
          physics: const BouncingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'List User',
                style: TextStyle(
                  fontSize: 22.0,
                  fontWeight: FontWeight.w600
                ),
              ),
              const SizedBox(height: 3.0,),
              const Text(
                'Gunakan: ListView.separated, Container, Expanded, Column, Row, Image.asset, Text dan SizedBox',
                style: TextStyle(
                  fontSize: 14.0,
                ),
              ),
              const SizedBox(height: 16.0,),
              ListView.separated(
                itemCount: listUser.length,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                padding: EdgeInsets.zero,
                itemBuilder: (context, index) => Container(
                  padding: const EdgeInsets.all(16.0),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8.0)
                  ),
                  child: Row(
                    children: [
                      Image.asset(
                        listUser[index].avatar,
                        width: 45.0,
                      ),
                      const SizedBox(width: 16.0,),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              listUser[index].name,
                              style: const TextStyle(
                                fontSize: 16.0,
                                fontWeight: FontWeight.w600
                              ),
                            ),
                            const SizedBox(height: 3.0,),
                            Text(
                              listUser[index].npm ?? '',
                              style: const TextStyle(
                                fontSize: 12.0,
                              ),
                            ),
                          ],
                        )
                      )
                    ],
                  ),
                ), 
                separatorBuilder: (context, index) => const SizedBox(height: 16.0,), 
              )
            ],
          ),
        )
      ),
    );
  }
}