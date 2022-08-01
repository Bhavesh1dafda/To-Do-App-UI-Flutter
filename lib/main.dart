import 'dart:io';

import 'package:flutter/material.dart';
import 'package:to_do_app/screens/home.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'ToDo App',
      home: Home(),
    );
  }

  setSystemUIOverlayStyle({required Color statusBarColor}) {}
}
