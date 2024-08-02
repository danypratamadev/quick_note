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
          'TextField',
          style: TextStyle(
            fontSize: 16.0,
            fontWeight: FontWeight.w600
          ),
        ),
      ),
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 16.0
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const TextField(
                  decoration: InputDecoration(
                    labelText: 'Full Name',
                    hintText: 'Enter full name',
                  ),
                  maxLength: 50,
                ),
                const SizedBox(height: 16.0,),
                const TextField(
                  decoration: InputDecoration(
                    labelText: 'Phone Number',
                    hintText: 'Enter phone number',
                    filled: true
                  ),
                  keyboardType: TextInputType.number,
                  maxLength: 13,
                ),
                const SizedBox(height: 16.0,),
                const TextField(
                  decoration: InputDecoration(
                    labelText: 'Full Name',
                    hintText: 'Enter full name',
                    prefixIcon: Icon(
                      Icons.person_rounded
                    )
                  ),
                  maxLength: 50,
                ),
                const SizedBox(height: 16.0,),
                const TextField(
                  decoration: InputDecoration(
                    labelText: 'Phone Number',
                    hintText: 'Enter phone number',
                    prefixIcon: Icon(
                      Icons.phone_rounded
                    ),
                    filled: true
                  ),
                  keyboardType: TextInputType.number,
                  maxLength: 13,
                ),
                const SizedBox(height: 16.0,),
                const TextField(
                  decoration: InputDecoration(
                    labelText: 'Email',
                    hintText: 'Enter email address',
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(
                      Icons.email_rounded
                    ),
                  ),
                  keyboardType: TextInputType.emailAddress,
                  maxLength: 50,
                ),
                const SizedBox(height: 16.0,),
                TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    labelText: 'Password',
                    hintText: 'Enter password',
                    border: const OutlineInputBorder(),
                    prefixIcon: const Icon(
                      Icons.password_rounded
                    ),
                    suffixIcon: IconButton(
                      icon: const Icon(
                        Icons.visibility_off_rounded
                      ),
                      onPressed: () => log('Update password visibility'),
                    )
                  ),
                  maxLength: 20,
                ),
              ],
            ),
          )
        ),
      ),
    );
  }
}