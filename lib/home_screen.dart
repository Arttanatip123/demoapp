import 'package:demoapp/detail_screen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('หน้าหลัก'),
      ),
      body: Center(
        child: RaisedButton(
          onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => DetailScreen()));
          },
          child: Text('ข้อมูล'),
        ),
      ),
    );
  }
}
