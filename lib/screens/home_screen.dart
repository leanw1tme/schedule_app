import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:schedule_app/theme/colors.dart';
import 'package:schedule_app/widgets/appbar.dart';
import 'package:schedule_app/widgets/drawerapp.dart';

import 'package:schedule_app/widgets/schedule.dart';
import 'package:schedule_app/widgets/task_list.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: const DrawerWidget(),
        appBar: AppBar(
          backgroundColor: bgColor,
          title: const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // Container(
              //   decoration: BoxDecoration(
              //     borderRadius: BorderRadius.circular(20),
              //     border: Border.all(
              //       color: Colors.black,
              //       width: 0.5,
              //     ),
              //   ),
              //   height: 40,
              //   width: 40,
              //   child: ClipRRect(
              //     borderRadius: BorderRadius.circular(20),
              //     child: Image.asset('assets/img/avatar.png'),
              //   ),
              // ),
              SizedBox(),
              IconButton(
                onPressed: null,
                icon: Icon(Icons.brightness_4_outlined),
                iconSize: 30,
                disabledColor: onboardColor,
              )
            ],
          ),
        ),
        body: Container(
          color: bgColor,
          child: const Column(
            children: [AppBarWidget(), ScheduleWidget(), TaskList()],
          ),
        ));
  }
}
