import 'package:flutter/material.dart';
import 'package:schedule_app/data/datetime/datetime.dart';

class AppBarWidget extends StatefulWidget {
  const AppBarWidget({super.key});

  @override
  State<AppBarWidget> createState() => _AppBarWidgetState();
}

class _AppBarWidgetState extends State<AppBarWidget> {
  final DateTime _selectedValue = DateTime.now();
  @override
  Widget build(BuildContext context) {
    String dayOfWeek = daysOfWeek[_selectedValue.weekday - 1];
    String dayOfMonth = daysOfMonth[_selectedValue.month - 1];
    return Container(
      margin: const EdgeInsets.only(top: 5, left: 20, right: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              SizedBox(
                height: 5,
              ),
              Text(
                '${_selectedValue.day} $dayOfMonth, ${_selectedValue.year}',
                style: TextStyle(
                  inherit: false,
                  color: Colors.grey,
                  fontSize: 18,
                  fontStyle: FontStyle.italic,
                ),
              ),
              Text(
                'Сегодня',
                style: const TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    decoration: TextDecoration.underline),
              )
            ],
          ),
        ],
      ),
    );
  }
}
