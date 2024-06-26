import 'package:fling_banking/src/shared/shared.dart';
import 'package:flutter/material.dart';

class AppTile extends StatelessWidget {
  final String title;
  final VoidCallback onTap;
  const AppTile({
    super.key,
    required this.title,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(color: appColors.black.withOpacity(.35), width: 1),
        ),
      ),
      child: ListTile(
        onTap: onTap,
        title: Text(
          title,
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w400,
            color: appColors.white,
          ),
        ),
        contentPadding: const EdgeInsets.symmetric(horizontal: 10),
        trailing: const Icon(
          Icons.arrow_forward_ios,
          size: 15,
        ),
      ),
    );
  }
}
