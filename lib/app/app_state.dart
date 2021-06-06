import 'dart:async';
import 'dart:convert';
import 'package:demoapp/app/app_localization.dart';
import 'package:demoapp/core/base_view_model.dart';
import 'package:demoapp/model/language_entity.dart';
import 'package:flutter/material.dart';

class AppState extends BaseViewModel {
  GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();
  Locale? _appLocale;
  Key key = new UniqueKey();
  bool forceLogin = false;
  bool maintenanceMode = false;
  bool launchScreenBuildSuccess = false;
  bool settingsUsePasscode = false;

  AppState() {
    // getDataFirebase();
    // getCloudFireStore();
  }

  void reStartApp() {
    key = new UniqueKey();
    navigatorKey = GlobalKey<NavigatorState>();
    notifyListeners();
  }

  Locale get appLocal => _appLocale ?? Locale("th");
  fetchLocale() async {
    return Null;
  }

  Future<LanguageEntity> mockLocal() async {
    final app = AppLocalizations(Locale("th"));
    await app.load();
    return app.languageEntity;
  }

  @override
  void dispose() {
    super.dispose();
  }

  void launchScreenBuild() {
    launchScreenBuildSuccess = true;
  }
}
