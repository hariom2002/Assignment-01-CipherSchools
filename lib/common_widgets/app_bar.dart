// import 'package:flutter/material.dart';

// class MyAppBar extends StatefulWidget implements PreferredSizeWidget {
//   final VoidCallback onBrowsePressed;
//   final VoidCallback onToggleNightMode;
//   final VoidCallback onNotificationPressed;
//   final VoidCallback onSearchPressed;

//   const MyAppBar({
//     Key? key,
//     required this.onBrowsePressed,
//     required this.onToggleNightMode,
//     required this.onNotificationPressed,
//     required this.onSearchPressed,
//   }) : super(key: key);

//   @override
//   State<MyAppBar> createState() => _MyAppBarState();

//   @override
//   // TODO: implement preferredSize
//   Size get preferredSize => const Size.fromHeight(kToolbarHeight + 10);
// }

// class _MyAppBarState extends State<MyAppBar> {
//   @override
//   Widget build(BuildContext context) {
//     return AppBar(
//       title: Row(
//         children: [
//           Image.asset(
//             'assets/images/logo.png', // replace with your logo image path
//             height: 30,
//           ),
//           const SizedBox(width: 8),
//           const Text('CipherSchool'),
//         ],
//       ),
//       actions: [
//         IconButton(
//           onPressed: widget.onBrowsePressed,
//           icon: const Icon(Icons.keyboard_arrow_down),
//         ),
//         IconButton(
//           onPressed: widget.onToggleNightMode,
//           icon: const Icon(Icons.nightlight_round),
//         ),
//         IconButton(
//           onPressed: widget.onNotificationPressed,
//           icon: const Icon(Icons.notifications),
//         ),
//         IconButton(
//           onPressed: widget.onSearchPressed,
//           icon: const Icon(Icons.search),
//         ),
//       ],
//     );
//   }

//   @override
//   Size get preferredSize => const Size.fromHeight(kToolbarHeight);
// }
