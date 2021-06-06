import 'package:demoapp/core/dependency_injection.dart';
import 'package:demoapp/errors/base_error_entity.dart';
import 'package:demoapp/model/base_response_entity.dart';
import 'package:flutter/material.dart';

abstract class BaseViewModel extends ChangeNotifier with DependencyInjectionMixin {
  bool _loading = false;
  bool get loading => _loading;
  late BaseResponseEntity baseResponseEntity;
  late BaseErrorEntity baseErrorEntity;
  bool _disposed = false;
  bool get disposedStatus => _disposed;
  late Function showLoading;
  late Function hideLoading;

  void setLoading(bool value) {
    if (!_disposed) {
      _loading = value;
      notifyListeners();
    }
  }

  BaseViewModel() {
    _disposed = false;
    init();
  }

  @protected
  @mustCallSuper
  void init() {
    inject();
  }

  @protected
  @override
  @mustCallSuper
  void diReady() {
    catchError(() async => postInit());
  }

  @protected
  void postInit() {
    print('$runtimeType postInit');
  }

  void onError(error) {}

  @protected
  void catchError(Future<void> Function() run) async {
    if (!_disposed) {
      try {
        await run();
      } catch (error, stackTrace) {
        onError(error);
        if (error is BaseError) {
          // print("$runtimeType----${error.code}---${error.message}");
          // Future.value(throw Exception("$runtimeType----->${error.message}"));
        } else {
          print("$runtimeType----->$error\n----->$stackTrace");
          Future.value(throw Exception("$runtimeType----->$error\n----->$stackTrace"));
        }
      }
    }
  }

  bool shouldLogin() {
    return false;
  }

  @override
  void notifyListeners() {
    if (!_disposed) {
      super.notifyListeners();
    }
  }

  @override
  void dispose() {
    _disposed = true;
    super.dispose();
  }

  Future<bool> isTokenExpiredShowLogin({Function(BaseError)? onRefreshError}) async {
    try {
      return false;
    } catch (error) {
      if (onRefreshError != null && error is BaseError) {
        onRefreshError(error);
      }
      return true;
    }
  }
}

abstract class BaseViewModelNoDi extends ChangeNotifier {
  bool _loading = false;
  bool get loading => _loading;
  late BaseResponseEntity baseResponseEntity;
  late BaseErrorEntity baseErrorEntity;
  bool _disposed = false;

  void setLoading(bool value) {
    _loading = value;
    if (!_disposed) {
      notifyListeners();
    }
  }

  @override
  void dispose() {
    _disposed = true;
    super.dispose();
  }

  @override
  void notifyListeners() {
    if (!_disposed) {
      super.notifyListeners();
    }
  }
}
