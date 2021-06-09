import 'package:flutter/material.dart';
import 'package:tix_navigate/tix_navigate.dart';

class Page2 extends StatefulWidget with TixRoute {
  @override
  _Page2State createState() => _Page2State();

  @override
  String buildPath() {
    return '/page2';
  }

  @override
  Route routeTo(data) {
    return MaterialPageRoute(builder: (builder) => Page2());
  }
}

class _Page2State extends State<Page2> with TixNavigateMixin {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
