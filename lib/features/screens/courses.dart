import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import '../../common_widgets/app_bar.dart';

class Courses extends StatefulWidget {
  const Courses({super.key});

  @override
  State<Courses> createState() => _CoursesState();
}

class _CoursesState extends State<Courses> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: MyAppBar(
      //   onBrowsePressed: () {},
      //   onToggleNightMode: () {},
      //   onNotificationPressed: () {},
      //   onSearchPressed: () {},
      // ),
      body: const Center(
        child: Text("This is Courses page"),
      ),
    );
  }
}
