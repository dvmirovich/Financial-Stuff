import 'dart:async';

import 'package:flutter/material.dart';
import 'package:untitled/future/home/home_screen.dart';

void main() {
  runZonedGuarded(
        () => runApp(const MyApp()),
        (error, stackTrace) {
    },
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        inputDecorationTheme: InputDecorationTheme(
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.green, width: 2),
            borderRadius: BorderRadius.circular(12)
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.white, width: 1),
              borderRadius: BorderRadius.circular(12)
          ),
          errorBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.red, width: 2),
              borderRadius: BorderRadius.circular(12)
          ),
        ),
        scaffoldBackgroundColor: Color(0xffF1FFF3)
      ),
      home: HomeScreen(),
    );
  }
}
