import 'package:flutter/material.dart';

class NavIcon extends StatelessWidget {
  final IconData iconData;
  final bool isSelected;

  const NavIcon({
    super.key,
    required this.iconData,
    required this.isSelected,
  });

  @override
  Widget build(BuildContext context) {
    if (isSelected) {
      return Container(
        padding: const EdgeInsets.all(10),
        decoration: const BoxDecoration(
          color: Color.fromARGB(255, 92, 39, 176),
          shape: BoxShape.circle,
        ),
        child: Icon(iconData, color: Colors.white, size: 24),
      );
    } else {
      return Icon(iconData, color: Colors.grey, size: 24);
    }
  }
}
