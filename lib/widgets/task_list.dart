import 'package:flutter/material.dart';
import 'package:schedule_app/widgets/task_tile.dart';

class TaskList extends StatelessWidget {
  const TaskList({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 15),
      child: const Column(
        children: [
          TaskTile(
              name: 'Бух.учет',
              time: '9:45 - 12:05',
              place: 'Кабинет 101',
              result: 'Завершен',
              complete: Colors.blue),
          TaskTile(
              name: 'Экономика',
              time: '12:05 - 14:00',
              place: 'Кабинет 205',
              result: 'В процессе',
              complete: Colors.pink),
          TaskTile(
              name: 'Программирование',
              time: '14:05 - 15:30',
              place: 'Кабинет 404',
              result: '',
              complete: Colors.deepOrange),
        ],
      ),
    );
  }
}
