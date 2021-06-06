import 'package:demoapp/app/app_state.dart';
import 'package:demoapp/core/base_view_model.dart';
import 'package:demoapp/model/language_entity.dart';
import 'package:flutter/material.dart';

abstract class BaseStateProvider<S extends StatefulWidget, P extends BaseViewModel>
    extends State<S> {
  @protected
  late P viewModel;
  late LanguageEntity appLocal;
  late AppState appState;
  bool showing = false;

  Future<void> hideLoading() async {
    if (showing) {
      showing = false;
    }
  }

  void showLoading() async {
    if (showing) {
      return;
    }
    showing = true;
    showDialog(
        barrierDismissible: false,
        context: context,
        builder: (context) {
          return Stack(
            children: <Widget>[
              Align(
                child: Padding(
                  child: Container(
                    padding: EdgeInsets.all(21),
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                        color: Color(0xffffffff), borderRadius: BorderRadius.circular(6)),
                    child: Container(
                      child: CircularProgressIndicator(),
                      height: 50,
                      width: 50,
                    ),
                  ),
                  padding: EdgeInsets.only(left: 20, right: 20),
                ),
                alignment: Alignment(0, -0.2),
              )
            ],
          );
        });
  }

  @override
  void dispose() {
    viewModel.dispose();
    super.dispose();
  }
}
