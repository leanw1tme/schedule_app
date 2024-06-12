import 'package:flutter/material.dart';
import 'package:date_picker_timeline/date_picker_timeline.dart';
import 'package:schedule_app/theme/colors.dart';

class ScheduleWidget extends StatefulWidget {
  const ScheduleWidget({super.key});

  @override
  State<ScheduleWidget> createState() => _ScheduleWidgetState();
}

class _ScheduleWidgetState extends State<ScheduleWidget> {
  DateTime _selectedValue = DateTime.now();
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Container(
        margin: const EdgeInsets.only(left: 15, top: 10, right: 15),
        child: DatePicker(
          DateTime.now(),
          height: 90,
          initialSelectedDate: DateTime.now(),
          selectionColor: primaryappColor,
          selectedTextColor: Colors.white,
          locale: 'ru',
          daysCount: 5,
          onDateChange: (date) {
            setState(() {
              _selectedValue = date;
            });
          },
        ),
      ),
    ]);
  }
}
