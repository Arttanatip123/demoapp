import 'package:flutter/material.dart';

abstract class BaseRoute {
  late String path;
  bool clearStack = false;
  Future<bool> hasPermission(dynamic params) async => true;
  Route<dynamic> routeTo(dynamic data);
}
