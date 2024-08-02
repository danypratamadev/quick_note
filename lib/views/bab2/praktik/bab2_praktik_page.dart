import 'package:flutter/material.dart';
import 'package:quick_note/core/utils/toast.dart';

class Bab2PraktikPage extends StatefulWidget {
  const Bab2PraktikPage({super.key});

  @override
  State<Bab2PraktikPage> createState() => _Bab2PraktikPageState();
}

class _Bab2PraktikPageState extends State<Bab2PraktikPage> {

  bool switchEnable = true;

  void onChangeSwitch({required bool value}) {
    setState(() {
      switchEnable = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Praktikum',
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
            children: [
              Container(
                padding: const EdgeInsets.all(12.0),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8.0)
                ),
                child: Row(
                  children: [
                    Image.asset(
                      'assets/images/avatar.png',
                      width: 52.0,
                      height: 52.0,
                    ),
                    const SizedBox(width: 12.0,),
                    const Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Novan Riski Ramadhan',
                            style: TextStyle(
                              fontSize: 16.0,
                              fontWeight: FontWeight.w600
                            ),
                          ),
                          SizedBox(height: 3.0,),
                          Text(
                            '5230411008',
                            style: TextStyle(
                              fontSize: 12.0,
                            ),
                          ),
                        ],
                      )
                    ),
                    const SizedBox(width: 12.0,),
                    IconButton(
                      onPressed: () => AppToast.show(message: 'Edit Profile'), 
                      icon: const Icon(
                        Icons.edit_rounded,
                      )
                    )
                  ],
                ),
              ),
              const SizedBox(height: 16.0,),
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8.0)
                ),
                child: const Column(
                  children: [
                    ListTile(
                      title: Text(
                        'Fakultas',
                        style: TextStyle(
                          fontSize: 14.0
                        ),
                      ),
                      trailing: Text(
                        'Sains & Teknologi',
                        style: TextStyle(
                          fontSize: 14.0,
                          fontWeight: FontWeight.w600
                        ),
                      ),
                    ),
                    Divider(height: 0.0,),
                    ListTile(
                      title: Text(
                        'Program Studi',
                        style: TextStyle(
                          fontSize: 14.0
                        ),
                      ),
                      trailing: Text(
                        'Informatika',
                        style: TextStyle(
                          fontSize: 14.0,
                          fontWeight: FontWeight.w600
                        ),
                      ),
                    ),
                    Divider(height: 0.0,),
                    ListTile(
                      title: Text(
                        'Jenjang',
                        style: TextStyle(
                          fontSize: 14.0
                        ),
                      ),
                      trailing: Text(
                        'Sarjana',
                        style: TextStyle(
                          fontSize: 14.0,
                          fontWeight: FontWeight.w600
                        ),
                      ),
                    ),
                    Divider(height: 0.0,),
                    ListTile(
                      title: Text(
                        'Kelas',
                        style: TextStyle(
                          fontSize: 14.0
                        ),
                      ),
                      trailing: Text(
                        'A',
                        style: TextStyle(
                          fontSize: 14.0,
                          fontWeight: FontWeight.w600
                        ),
                      ),
                    ),
                  ],
                )
              ),
              const SizedBox(height: 16.0,),
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8.0)
                ),
                child: Column(
                  children: [
                    ListTile(
                      leading: const Icon(
                        Icons.dark_mode_rounded
                      ),
                      title: const Text(
                        'Mode Gelap',
                        style: TextStyle(
                          fontSize: 14.0,
                          fontWeight: FontWeight.w600
                        ),
                      ),
                      trailing: Transform.translate(
                        offset: const Offset(10.0, 0.0),
                        child: Switch(
                          value: switchEnable, 
                          onChanged: (value) => onChangeSwitch(value: value),
                        ),
                      ),
                    ),
                    const Divider(height: 0.0,),
                    ListTile(
                      onTap: () => AppToast.show(message: 'Change Password'),
                      leading: const Icon(
                        Icons.password_rounded
                      ),
                      title: const Text(
                        'Ganti Kata Sandi',
                        style: TextStyle(
                          fontSize: 14.0,
                          fontWeight: FontWeight.w600
                        ),
                      ),
                      trailing: Transform.translate(
                        offset: const Offset(10.0, 0.0),
                        child: const Icon(
                          Icons.chevron_right_rounded
                        )
                      ),
                    ),
                  ]
                )
              ),
              const SizedBox(height: 16.0,),
              ElevatedButton.icon(
                onPressed: () => AppToast.show(message: 'Logout Account'), 
                icon: const Icon(
                  Icons.logout_rounded
                ),
                label: const Text(
                  'Logout'
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.red,
                  foregroundColor: Colors.white
                ),
              )
            ],
          ),
        )
      ),
    );
  }
}