import 'package:assignment_1/common_widgets/bottom_bar.dart';
import 'package:assignment_1/features/Provider/theme_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MultiProvider(providers: [
    ChangeNotifierProvider(
      create: (_) => ThemeProvider(),
    ),
  ], child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Consumer<ThemeProvider>(
      builder: (context, themeProvider, child) {
        bool isDarkMode = themeProvider.mode;
        return MaterialApp(
          title: 'Flutter Demo',
          theme: isDarkMode ? ThemeData.dark() : ThemeData.light(),
          home: BottomBar(),
        );
      },
    );
  }
}
