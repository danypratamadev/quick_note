import 'package:flutter/material.dart';

class SinglescrollPage extends StatefulWidget {
  const SinglescrollPage({super.key});

  @override
  State<SinglescrollPage> createState() => _SinglescrollPageState();
}

class _SinglescrollPageState extends State<SinglescrollPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'SingleChildScrollView',
          style: TextStyle(
            fontSize: 16.0,
            fontWeight: FontWeight.w600
          ),
        ),
      ),
      body: const SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.all(16.0),
          physics: BouncingScrollPhysics(),
          child: Column(
            children: [
              Text(
                'Lorem ipsum odor amet, consectetuer adipiscing elit. Tellus risus enim tempor semper at magna. Sed et platea sem diam magnis scelerisque leo. Venenatis leo gravida non mattis leo viverra mi. Libero convallis neque congue class, suspendisse nec hac. Ex bibendum cursus suspendisse varius lacus suscipit. Fames vivamus senectus leo ultricies vestibulum a habitasse rutrum.',
              ),
              SizedBox(height: 16.0,),
              Text(
                'Lorem ipsum odor amet, consectetuer adipiscing elit. Tellus risus enim tempor semper at magna. Sed et platea sem diam magnis scelerisque leo. Venenatis leo gravida non mattis leo viverra mi. Libero convallis neque congue class, suspendisse nec hac. Ex bibendum cursus suspendisse varius lacus suscipit. Fames vivamus senectus leo ultricies vestibulum a habitasse rutrum.',
              ),
              SizedBox(height: 16.0,),
              Text(
                'Lorem ipsum odor amet, consectetuer adipiscing elit. Tellus risus enim tempor semper at magna. Sed et platea sem diam magnis scelerisque leo. Venenatis leo gravida non mattis leo viverra mi. Libero convallis neque congue class, suspendisse nec hac. Ex bibendum cursus suspendisse varius lacus suscipit. Fames vivamus senectus leo ultricies vestibulum a habitasse rutrum.',
              ),
              SizedBox(height: 16.0,),
              Text(
                'Lorem ipsum odor amet, consectetuer adipiscing elit. Tellus risus enim tempor semper at magna. Sed et platea sem diam magnis scelerisque leo. Venenatis leo gravida non mattis leo viverra mi. Libero convallis neque congue class, suspendisse nec hac. Ex bibendum cursus suspendisse varius lacus suscipit. Fames vivamus senectus leo ultricies vestibulum a habitasse rutrum.',
              ),
              SizedBox(height: 16.0,),
              Text(
                'Lorem ipsum odor amet, consectetuer adipiscing elit. Tellus risus enim tempor semper at magna. Sed et platea sem diam magnis scelerisque leo. Venenatis leo gravida non mattis leo viverra mi. Libero convallis neque congue class, suspendisse nec hac. Ex bibendum cursus suspendisse varius lacus suscipit. Fames vivamus senectus leo ultricies vestibulum a habitasse rutrum.',
              ),
              SizedBox(height: 16.0,),
              Text(
                'Lorem ipsum odor amet, consectetuer adipiscing elit. Tellus risus enim tempor semper at magna. Sed et platea sem diam magnis scelerisque leo. Venenatis leo gravida non mattis leo viverra mi. Libero convallis neque congue class, suspendisse nec hac. Ex bibendum cursus suspendisse varius lacus suscipit. Fames vivamus senectus leo ultricies vestibulum a habitasse rutrum.',
              ),
              SizedBox(height: 16.0,),
              Text(
                'Lorem ipsum odor amet, consectetuer adipiscing elit. Tellus risus enim tempor semper at magna. Sed et platea sem diam magnis scelerisque leo. Venenatis leo gravida non mattis leo viverra mi. Libero convallis neque congue class, suspendisse nec hac. Ex bibendum cursus suspendisse varius lacus suscipit. Fames vivamus senectus leo ultricies vestibulum a habitasse rutrum.',
              ),
              SizedBox(height: 16.0,),
              Text(
                'Lorem ipsum odor amet, consectetuer adipiscing elit. Tellus risus enim tempor semper at magna. Sed et platea sem diam magnis scelerisque leo. Venenatis leo gravida non mattis leo viverra mi. Libero convallis neque congue class, suspendisse nec hac. Ex bibendum cursus suspendisse varius lacus suscipit. Fames vivamus senectus leo ultricies vestibulum a habitasse rutrum.',
              ),
              SizedBox(height: 16.0,),
              Text(
                'Lorem ipsum odor amet, consectetuer adipiscing elit. Tellus risus enim tempor semper at magna. Sed et platea sem diam magnis scelerisque leo. Venenatis leo gravida non mattis leo viverra mi. Libero convallis neque congue class, suspendisse nec hac. Ex bibendum cursus suspendisse varius lacus suscipit. Fames vivamus senectus leo ultricies vestibulum a habitasse rutrum.',
              ),
            ],
          )
        ),
      ),
    );
  }
}