import 'package:flutter/material.dart';

class CommonAppBar extends StatefulWidget implements PreferredSizeWidget {
  const CommonAppBar({Key? key}) : super(key: key);

  @override
  State<CommonAppBar> createState() => _CommonAppBarState();

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

class _CommonAppBarState extends State<CommonAppBar> {
  bool isDarkMode = false;

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData(
        brightness: isDarkMode
            ? Brightness.dark
            : Brightness.light, // set brightness to dark
      ),
      child: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        // leading: Padding(
        //   padding: const EdgeInsets.all(8.0),
        //   // child: Image.asset(
        //   //   // 'assets/images/logo.png', // replace with your logo asset path
        //   //   width: 40,
        //   //   height: 40,
        //   // ),
        // ),
        title: const Text(
          'ChipherSchools',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.menu),
            color: Colors.black,
          ),
          const SizedBox(width: 10),
          Switch(
            value: isDarkMode,
            activeColor: Colors.grey,
            onChanged: (bool newValue) {
              setState(() {
                isDarkMode = newValue;
              });
            },
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.notifications),
            color: Colors.black,
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.search),
            color: Colors.black,
          ),
        ],
      ),
    );
  }
}
