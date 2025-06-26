import 'package:flutter/material.dart';

class ArrowButton extends StatelessWidget {
  final Color bgColor, borderColor, iconColor;
  final Icon icon;
  const ArrowButton({
    super.key,
    this.bgColor = Colors.white,
    this.borderColor = Colors.white12,
    this.iconColor = Colors.blue,
    this.icon = const Icon(Icons.arrow_forward_ios_rounded),
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(6.0),
      decoration: BoxDecoration(
        color: bgColor,
        borderRadius: BorderRadius.circular(30),
        border: Border.all(
          color: borderColor,
          width: 4,
        ),
      ),
      child: Icon(
        icon.icon,
        color: iconColor,
        size: 18,
      ),
    );
  }
}
