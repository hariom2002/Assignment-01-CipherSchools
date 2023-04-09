import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import '../../common_widgets/app_bar.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      // appBar: MyAppBar(),
      body: Center(
        child: Text(
          "This is Home page",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
