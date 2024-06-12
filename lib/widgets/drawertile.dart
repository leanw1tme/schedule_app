import 'package:flutter/material.dart';
import 'package:schedule_app/theme/colors.dart';

class DrawerTile extends StatelessWidget {
  final IconData icon;
  final String text;
  const DrawerTile({super.key, required this.icon, required this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10),
      child: ListTile(
        leading: Icon(
          icon,
          color: primaryappColor,
        ),
        title: Text(
          text,
          style: TextStyle(color: primaryappColor),
        ),
      ),
    );
  }
}
