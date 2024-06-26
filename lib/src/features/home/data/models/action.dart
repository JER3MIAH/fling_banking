import 'package:flutter/material.dart';

class DashboardAction {
  final String title, icon;
  final VoidCallback onTap;

  DashboardAction({
    required this.title,
    required this.icon,
    required this.onTap,
  });
}
