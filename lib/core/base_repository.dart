import 'package:flutter/material.dart';

abstract class BaseRepository {
  BaseRepository() {
    init();
  }

  @protected
  @mustCallSuper
  void init() {
    print('$runtimeType init');
    // inject();
  }

  @override
  @mustCallSuper
  void diReady() async {
    print('$runtimeType diReady');
  }
}
