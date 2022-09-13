import 'package:flutter/material.dart';
import 'package:mywall/404.dart';
import 'package:mywall/Routes.dart';
import 'package:mywall/demo1.dart';
import 'package:mywall/demo2.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: MyRoutes.demo2,
      onUnknownRoute: (settings) {
        return MaterialPageRoute(builder: (context) => const Pagenotfound());
      },
      routes: {
        MyRoutes.demo1: (context) => const Demo1(),
        MyRoutes.demo2: (context) => const Demo2(),
      },
    );
  }
}
