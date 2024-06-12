import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:schedule_app/theme/colors.dart';
import 'package:schedule_app/widgets/drawertile.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: bgColor,
      child: Column(
        children: [
          DrawerHeader(
            padding: EdgeInsets.symmetric(horizontal: 100, vertical: 25),
            decoration: BoxDecoration(
                gradient: LinearGradient(colors: [primaryappColor, bgColor])),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(100),
                border: Border.all(
                  color: Colors.black,
                  width: 0.5,
                ),
              ),
              height: 30,
              width: 270,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(100),
                child: Image.asset('assets/img/avatar.jpg'),
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          DrawerTile(icon: Icons.event_note, text: 'Расписание'),
          DrawerTile(icon: Icons.settings, text: 'Настройки'),
          DrawerTile(icon: Icons.help, text: 'Помощь'),
          DrawerTile(
              icon: Icons.privacy_tip, text: 'Политика конфиденциальности'),
          DrawerTile(icon: Icons.logout, text: 'Выход'),
        ],
      ),
    );
  }
}
