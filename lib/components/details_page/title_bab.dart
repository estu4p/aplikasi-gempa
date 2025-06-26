import 'package:flutter/material.dart';

class TitleBab extends StatelessWidget {
  final String title;
  final double marginBottom;
  const TitleBab({super.key, required this.title, this.marginBottom = 10.0});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.only(
        left: 8,
      ),
      margin: EdgeInsets.only(bottom: marginBottom, top: 18.0),
      decoration: BoxDecoration(
          color: Colors.grey.shade200,
          borderRadius: const BorderRadius.only(
              topRight: Radius.circular(4), bottomRight: Radius.circular(4)),
          border: Border(
            left: BorderSide(
              color: Colors.blue.shade300,
              width: 4,
            ),
          )),
      child: Text(
        title,
        style: const TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold,
          fontFamily: 'Swiss721Bold',
        ),
      ),
    );
  }
}
