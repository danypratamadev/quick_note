import 'package:flutter/material.dart';
import 'package:quick_note/core/utils/toast.dart';

class ListtilePage extends StatefulWidget {
  const ListtilePage({super.key});

  @override
  State<ListtilePage> createState() => _ListtilePageState();
}

class _ListtilePageState extends State<ListtilePage> {

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
        title: Text(
          'ListTile'.toUpperCase(),
          style: const TextStyle(
            fontSize: 16.0,
            fontWeight: FontWeight.w600
          ),
        ),
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ListTile(
                onTap: () => AppToast.show(message: 'Default ListTile'),
                title: const Text(
                  'Settings'
                ),
              ),
              const SizedBox(height: 16.0,),
              ListTile(
                onTap: () => AppToast.show(message: 'ListTile with subtitle'),
                title: const Text(
                  'Settings'
                ),
                subtitle: const Text(
                  'Account, WiFi, Bluetooth and other'
                ),
              ),
              const SizedBox(height: 16.0,),
              ListTile(
                onTap: () => AppToast.show(message: 'ListTile with leading icon'),
                leading: const Icon(
                  Icons.settings_rounded
                ),
                title: const Text(
                  'Settings'
                ),
                subtitle: const Text(
                  'Account, WiFi, Bluetooth and other'
                ),
              ),
              const SizedBox(height: 16.0,),
              ListTile(
                onTap: () => AppToast.show(message: 'ListTile with trailing icon'),
                title: const Text(
                  'Settings'
                ),
                subtitle: const Text(
                  'Account, WiFi, Bluetooth and other'
                ),
                trailing: const Icon(
                  Icons.chevron_right_rounded
                ),
              ),
              const SizedBox(height: 16.0,),
              ListTile(
                onTap: () => AppToast.show(message: 'ListTile with leading and trailing icon'),
                leading: const Icon(
                  Icons.settings_rounded
                ),
                title: const Text(
                  'Settings'
                ),
                subtitle: const Text(
                  'Account, WiFi, Bluetooth and other'
                ),
                trailing: const Icon(
                  Icons.chevron_right_rounded
                ),
              ),
              const SizedBox(height: 16.0,),
              ListTile(
                onTap: () => AppToast.show(message: 'ListTile with custom trailing'),
                title: const Text(
                  'Settings'
                ),
                subtitle: const Text(
                  'Account, WiFi, Bluetooth and other'
                ),
                trailing: Switch(
                  value: switchEnable, 
                  onChanged: (value) => onChangeSwitch(value: value),
                )
              ),
            ],
          )
        ),
      ),
    );
  }
}