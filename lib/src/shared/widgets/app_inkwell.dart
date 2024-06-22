import 'package:flutter/material.dart';

class AppInkWell extends StatelessWidget {
  final Widget child;
  final VoidCallback onTap;
  const AppInkWell({super.key, required this.child, required this.onTap,});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(12),
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: child,
      ),
    );
  }
}