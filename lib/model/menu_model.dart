import 'package:flutter/material.dart';

class MenuModel {

  final IconData? icon;
  final String title;
  final String? subtitle;
  final String? caption;
  final String? route;

  MenuModel({this.icon, required this.title, this.subtitle, this.caption, this.route});

}