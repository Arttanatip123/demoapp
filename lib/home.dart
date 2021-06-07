import 'package:demoapp/appbar_screen.dart';
import 'package:demoapp/profile_screen.dart';
import 'package:demoapp/tab_menu_screen.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(
          color: Colors.red, //change your color here
        ),
        title: Text(
          "The plant Cafe & Restaurant",
          style: TextStyle(
            fontFamily: 'SukhumvitSet',
            color: Color(0xff4a4a4a),
            fontSize: 18,
            fontWeight: FontWeight.w700,
            fontStyle: FontStyle.normal,
          ),
        ),
        actions: [
          IconButton(
            padding: EdgeInsets.all(17.0),
            icon: Image.asset('images/arrow.jpg'),
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
           // AppBarCustom(),
            Profile(),
            TapMenu(),
          ],
        ),
      ),
    );
  }
}
