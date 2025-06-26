import 'package:flutter/material.dart';

class Data {
  final int id;
  final String title;
  final Widget content;
  final String icon;
  final String image;
  // final List<SubData> subData;

  Data({
    required this.id,
    required this.title,
    required this.content,
    required this.icon,
    required this.image,
    // required this.subData,
  });
}
