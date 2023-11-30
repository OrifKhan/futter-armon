import 'package:flutter/material.dart';
import 'package:food_odering/page/HomeScreen.dart';

import 'page/ItemScreen.dart';
import 'page/WelocomeSeerin.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: Color(0xFFFF2F08),
        // colorSchemeSeed: Color(0xFFFF2F08),
        textTheme: TextTheme(
          labelLarge: TextStyle(fontSize: 22, fontWeight: FontWeight.w500),
          labelMedium: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          labelSmall: TextStyle(
            fontSize: 18,
            color: Colors.black54,
          ),
          bodySmall: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w500,
            color: Colors.black45,
          ),
        ),
        iconTheme: IconThemeData(color: Color(0xFFFF2F08)),
        colorScheme: ColorScheme.fromSeed(seedColor: Color(0xFFFF2F08)),
        useMaterial3: true,
      ),
      routes: {
        '/': (context) => WelocomeSeerin(),
        'homeScreen': (context) => HomeScreen(),
        'itemScreen': (context) => ItemScreen(),
      },
    );
  }
}
