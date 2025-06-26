import 'package:flutter/material.dart';

class FirstParagraf extends StatelessWidget {
  final String first_font;
  final String text;
  const FirstParagraf(
      {super.key, required this.first_font, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 10.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Huruf pertama besar (Drop Cap)
          Text(
            first_font,
            style: const TextStyle(
              fontSize: 56,
              fontWeight: FontWeight.bold,
              height: 1.0,
              fontFamily: 'Swiss721Bold',
            ),
          ),
          const SizedBox(width: 8),
          Expanded(
            child: Text(
              text,
              textAlign: TextAlign.justify,
            ),
          ),
        ],
      ),
    );
  }
}
