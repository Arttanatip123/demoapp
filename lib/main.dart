import 'package:demoapp/di/injector.dart';
import 'package:demoapp/home.dart';
import 'package:flutter/material.dart';
import 'package:tix_navigate/tix_navigate.dart';

GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();


void main() {
  TixNavigate.instance.configRoute([],
      key: navigatorKey,
  );

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
      navigatorKey: navigatorKey,
      initialRoute: '/',
      onGenerateRoute: TixNavigate.instance.generator,
      theme: ThemeData(
        //iconTheme: IconThemeData(color: Colors.red),
        primarySwatch: Colors.blue,
        fontFamily: 'SukhumvitSet'
      ),

      home: Home(),
    );
  }
}

