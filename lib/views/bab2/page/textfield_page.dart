import 'dart:developer';

import 'package:flutter/material.dart';

class TextfieldPage extends StatefulWidget {
  const TextfieldPage({super.key});

  @override
  State<TextfieldPage> createState() => _TextfieldPageState();
}

class _TextfieldPageState extends State<TextfieldPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'TextField Widget'
        ),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 16.0
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const TextField(
                decoration: InputDecoration(
                  labelText: 'Email',
                  hintText: 'Enter email address',
                  border: OutlineInputBorder()
                ),
                keyboardType: TextInputType.emailAddress,
              ),
              const SizedBox(height: 16.0,),
              TextField(
                obscureText: true,
                decoration: InputDecoration(
                  labelText: 'Password',
                  hintText: 'Enter password',
                  border: const OutlineInputBorder(),
                  suffixIcon: IconButton(
                    icon: const Icon(
                      Icons.visibility_off_rounded
                    ),
                    onPressed: () => log('Update password visibility'),
                  )
                ),
                keyboardType: TextInputType.text,
              ),
            ],
          ),
        )
      ),
    );
  }
}