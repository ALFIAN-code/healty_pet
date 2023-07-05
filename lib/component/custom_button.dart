import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
      {super.key,
      required this.onTap,
      required this.color,
      required this.child,
      required this.borderColor
      });
  final void Function()? onTap;
  final Color? color;
  final Widget child;
  final Color borderColor;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
        decoration: BoxDecoration(
          border: Border.all(width: 3, color: borderColor),
            color: color, borderRadius: BorderRadius.circular(13)),
        child: child,
      ),
    );
  }
}
