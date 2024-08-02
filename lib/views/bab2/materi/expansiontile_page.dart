import 'package:flutter/material.dart';

class ExpansiontilePage extends StatefulWidget {
  const ExpansiontilePage({super.key});

  @override
  State<ExpansiontilePage> createState() => _ExpansiontilePageState();
}

class _ExpansiontilePageState extends State<ExpansiontilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'ExpansionTile',
          style: TextStyle(
            fontSize: 16.0,
            fontWeight: FontWeight.w600
          ),
        ),
      ),
      body: const SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ExpansionTile(
                initiallyExpanded: true,
                title: Text(
                  'Click to expand',
                  style: TextStyle(
                  fontSize: 16.0,
                    fontWeight: FontWeight.w600
                  ),
                ),
                expandedAlignment: Alignment.centerLeft,
                childrenPadding: EdgeInsets.all(16.0),
                children: [
                  Text(
                    'Children of ExpansionTile'
                  ),
                  SizedBox(height: 16.0,),
                  Text(
                    'Children of ExpansionTile'
                  ),
                  SizedBox(height: 16.0,),
                  Text(
                    'Children of ExpansionTile'
                  ),
                ],
              ),
              SizedBox(height: 16.0,),
              ExpansionTile(
                title: Text(
                  'Click to expand',
                  style: TextStyle(
                  fontSize: 16.0,
                    fontWeight: FontWeight.w600
                  ),
                ),
                expandedAlignment: Alignment.centerLeft,
                childrenPadding: EdgeInsets.all(16.0),
                children: [
                  Text(
                    'Children of ExpansionTile'
                  ),
                  SizedBox(height: 16.0,),
                  Text(
                    'Children of ExpansionTile'
                  ),
                  SizedBox(height: 16.0,),
                  Text(
                    'Children of ExpansionTile'
                  ),
                ],
              ),
              SizedBox(height: 16.0,),
              ExpansionTile(
                leading: Icon(
                  Icons.settings_rounded
                ),
                title: Text(
                  'Click to expand',
                  style: TextStyle(
                  fontSize: 16.0,
                    fontWeight: FontWeight.w600
                  ),
                ),
                expandedAlignment: Alignment.centerLeft,
                childrenPadding: EdgeInsets.all(16.0),
                children: [
                  Text(
                    'Children of ExpansionTile'
                  ),
                  SizedBox(height: 16.0,),
                  Text(
                    'Children of ExpansionTile'
                  ),
                  SizedBox(height: 16.0,),
                  Text(
                    'Children of ExpansionTile'
                  ),
                ],
              ),
            ],
          )
        ),
      ),
    );
  }
}