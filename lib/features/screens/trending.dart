import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import '../../common_widgets/app_bar.dart';

class Trending extends StatefulWidget {
  const Trending({super.key});

  @override
  State<Trending> createState() => _TrendingState();
}

class _TrendingState extends State<Trending> {
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
        child: Text("This is trending page"),
      ),
    );
  }
}
