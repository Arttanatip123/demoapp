import 'package:demoapp/di/injector.dart';
import 'package:demoapp/home.dart';
import 'package:flutter/material.dart';
void main() {
  configureDependencies();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: 'SukhumvitSet'
      ),
      home: Home(),
    );
  }
}

