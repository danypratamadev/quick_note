import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SwitchPage extends StatefulWidget {
  const SwitchPage({super.key});

  @override
  State<SwitchPage> createState() => _SwitchPageState();
}

class _SwitchPageState extends State<SwitchPage> {

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
          'Switch',
          style: TextStyle(
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
              Switch(
                value: switchEnable, 
                onChanged: (value) => onChangeSwitch(value: value),
              ),
              const SizedBox(height: 16.0,),
              CupertinoSwitch(
                value: switchEnable, 
                onChanged: (value) => onChangeSwitch(value: value),
              ),
            ],
          )
        ),
      ),
    );
  }
}