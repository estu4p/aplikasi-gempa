import 'package:flutter/material.dart';

class Paragraf extends StatelessWidget {
  final String text;
  const Paragraf({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
        children: [
          const WidgetSpan(
            child: SizedBox(
              width: 20,
            ),
          ),
          TextSpan(
            text: text,
          ),
        ],
      ),
      textAlign: TextAlign.justify,
    );
  }
}
