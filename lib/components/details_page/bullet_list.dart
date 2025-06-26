import 'package:flutter/material.dart';

class BulletList extends StatelessWidget {
  final String text;
  final String bullet;
  const BulletList({super.key, required this.text, this.bullet = '  •'});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 8),
          child: Text(
            bullet,
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              height: 1.0,
              fontFamily: 'Swiss721Bold',
            ),
          ),
        ),
        const SizedBox(width: 4),
        Expanded(
          child: Text(
            text,
            textAlign: TextAlign.justify,
          ),
        ),
      ],
    );
  }
}
