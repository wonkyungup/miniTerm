import 'package:flutter/material.dart';
import 'screen/homePage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'App Title',
      theme: ThemeData.light(),
      darkTheme: ThemeData.dark(),
      home: homePage(title: 'App HomePage Title'),
    );
  }
}