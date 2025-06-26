import 'package:flutter/material.dart';

class FavButton extends StatelessWidget {
  final IconData icon;
  final Color iconColor;
  const FavButton({
    super.key,
    this.icon = Icons.favorite_border_rounded,
    this.iconColor = Colors.blue,
  });

  @override
  Widget build(BuildContext context) {
    return  Container(
      padding: const EdgeInsets.all(6.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(30),
        border: Border.all(
          color: Colors.white12,
          width: 4,
        ),
      ),
      child: Icon(
        icon,
        color: iconColor,
        size: 18,
      ),
    );
  }
}
