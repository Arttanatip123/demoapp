import 'package:demoapp/app/app_di_imp.dart';
import 'package:flutter/foundation.dart';

mixin DependencyInjectionMixin {
  AppDiImp di = appDi;

  @protected
  @visibleForTesting
  Future<void> inject() async {
    await Future.delayed(Duration(milliseconds: 200));
    diReady();
  }

  @protected
  @visibleForTesting
  void diReady() {}
}
