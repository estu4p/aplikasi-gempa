import 'package:flutter/material.dart';

class TitleSubBab extends StatelessWidget {
  final String title;
  final double marginTop;
  const TitleSubBab({super.key, required this.title, this.marginTop = 8.0});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 4.0, top: marginTop),
      child: Text(
        title,
        style: const TextStyle(
          fontWeight: FontWeight.bold,
          fontFamily: 'Swiss721Bold',
        ),
      ),
    );
  }
}
