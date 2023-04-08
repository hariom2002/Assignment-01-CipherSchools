import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import '../../common_widgets/app_bar.dart';

class MyProfile extends StatefulWidget {
  const MyProfile({super.key});

  @override
  State<MyProfile> createState() => _MyProfileState();
}

class _MyProfileState extends State<MyProfile> {
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
        child: Text("This is Profile page"),
      ),
    );
  }
}
