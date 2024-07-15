// ignore_for_file: prefer_const_constructors, deprecated_member_use

import 'package:apiuse/class/brightness.dart';
import 'package:apiuse/class/data.dart';
import'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'pages/homepage.dart';
void main() {
  runApp(MultiProvider(providers: [ChangeNotifierProvider(create:(context) => ThemeToglle(),),ChangeNotifierProvider(create:(context) => Texti(),)],child: MyApp()));
}
class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: context.watch<ThemeToglle>().isDarkMode ? darcktheme :lighttheme,
      debugShowCheckedModeBanner: false,
      home: homepage(),
    );
  }
}
final ThemeData lighttheme=ThemeData(
  primaryColor: Color.fromARGB(255, 26, 83, 25),
  backgroundColor: Colors.white38,
);
final ThemeData darcktheme=ThemeData(
  primaryColor: Color.fromARGB(255, 26, 83, 25),
  backgroundColor: Colors.black,
);